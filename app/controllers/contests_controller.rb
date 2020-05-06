class ContestsController < ApplicationController
  def index
    @contests = policy_scope(Contest).includes([:user_contests]).includes([:users]).sort_by(&:created_at).reverse
  end

  def show
    @contest = Contest.find(params[:id])
    @questions = @contest.questions.includes([:answer_options])
    authorize @contest
    @time_left = seconds_to_units(@contest.deadline - Time.now)
    @is_done =  @contest.deadline < Time.now
    if @is_done
      get_winner
    end
  end

  def send_quizz
    # Get the user's answers
    @contest = Contest.find(params[:contest_id])
    @questions = @contest.questions.includes([:answer_options])
    authorize @contest
    current_user.contests << @contest
    @questions.each do |question|
      question[:user_answer] = params["#{question.id}"][:answer_options]
      question.save
    end

    # Check every question was answered
    number_of_answers = 0
    @questions.each do |question|
      number_of_answers += 1 if question.user_answer.present?
    end
    if number_of_answers != @questions.size
      current_user.contests.delete(@contest)
      flash[:notice] = "Il faut répondre à toutes les questions"
      render "show"
    else
      redirect_to contests_path
      flash[:notice] = "Ta réponse a été prise en compte"
    end
  end

  def remove_winner
    @contest = Contest.find(params[:contest_id])
    authorize @contest
    @contest.winner_name = ""
    @contest.save
    redirect_to contest_path(@contest)
  end

  private

  def seconds_to_units(t)
    cute_date = Array.new
    tables = [["jours", 24 * 60 * 60], ["heures", 60 * 60], ["minutes", 60], ["secondes", 1]]
    tables.each do |unit, value|
      o = t.divmod(value)
      p_unit = o[0] > 1 ? unit.pluralize : unit
      cute_date.push("#{o[0]} #{unit}") unless o[0] == 0
      t = o[1]
    end
    return cute_date.join(' ')
  end

  def get_winner
    if @contest.winner_name == '' or @contest.winner_name == nil
      if @contest.users != []
        winner = @contest.users.sample
        @contest.winner_name = "#{winner.first_name} #{winner.last_name}"
        @contest.save
        redirect_to contest_path(@contest)
      else
        @contest.winner_name = "Personne"
        @contest.save
        redirect_to contest_path(@contest)
      end
    end
  end
end 
