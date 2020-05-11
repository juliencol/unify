class ContestsController < ApplicationController
  $NUMBER_OF_WINNERS = 0
  $WINNERS = []

  def index
    @contests = policy_scope(Contest.where(is_open: true)).includes([:user_contests]).includes([:users]).sort_by(&:created_at).reverse
  end 

  def show
    @contest = Contest.find(params[:id])
    @questions = @contest.questions.includes([:answer_options])
    authorize @contest
    @time_left = seconds_to_units(@contest.deadline - Time.now)
    @is_done =  @contest.deadline < Time.now
    @potential_winners = deep_clone(@contest.users)
    @winners_and_rewards = Array.new($NUMBER_OF_WINNERS)
    (0 .. $NUMBER_OF_WINNERS - 1).each do |i|
      @winners_and_rewards[i] = [$WINNERS[i], @contest.rewards[i]]
    end
    if @is_done
      while $NUMBER_OF_WINNERS != @contest.rewards.size
        @random_winner = @potential_winners.sample 
        $WINNERS << @random_winner 
        @potential_winners.delete(@random_winner) 
        $NUMBER_OF_WINNERS += 1
      end
    end
  end

  def send_quizz
    # get user inputs
    @contest = Contest.find(params[:contest_id])
    @questions = @contest.questions.includes([:answer_options])
    authorize @contest
    current_user.contests << @contest
    @questions.each do |question|
      question.user_answer = params["#{question.id}"][:answer_options]
      question.save
    end

    # check if all questions were answered
    number_of_answers = 0
    @questions.each do |question|
      number_of_answers += 1 if question.user_answer?
    end
    if number_of_answers != @questions.size
      flash[:notice] = "Il faut répondre à toutes les questions"
      current_user.contests.delete(@contest)
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

  def contest_params
    params.require(:contest).permit(:club_id, :title, :description, :image, :instagram_post_url, :deadline, :reward, :winner_name, :reward_photo, :is_open)
  end

  def deep_clone(input_array)
    cloned_array = []
    input_array.each do |instance|
      cloned_array << instance
    end
    cloned_array
  end
end