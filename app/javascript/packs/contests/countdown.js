import moment from "moment";

const date = new Date($(".countdown-container").attr("data-date"));
const deadline = moment(date);

var x = setInterval(function () {
    let diff = deadline.diff(moment());

    if (diff <= 0) {
        clearInterval(x);
        // If the count down is finished, write some text
        $(".countdown-container").text("Concours terminé");
    } else {
        $(".countdown").html(() => {
            return `<th>${moment.utc(diff).format("DD")}</th>
                    <th>${moment.utc(diff).format("HH")}</th>
                    <th>${moment.utc(diff).format("mm")}</th>`;
        });
    }
}, 1000);
