import moment from "moment";

const setTimer = (target, showSeconds) => {
    const date = new Date($(target).attr("data-date"));
    const deadline = moment(date);
    let x = setInterval(function () {
        let diff = deadline.diff(moment());

        if (diff <= 0) {
            clearInterval(x);
        } else {
            if (showSeconds) {
                $(target)
                    .find(".countdown")
                    .html(() => {
                        return `<th>${moment.utc(diff).format("DD")}</th>
                    <th>${moment.utc(diff).format("HH")}</th>
                    <th>${moment.utc(diff).format("mm")}</th>
                    <th>${moment.utc(diff).format("ss")}</th>`;
                    });
            } else {
                $(target)
                    .find(".countdown")
                    .html(() => {
                        return `<th>${moment.utc(diff).format("DD")}</th>
                    <th>${moment.utc(diff).format("HH")}</th>
                    <th>${moment.utc(diff).format("mm")}</th>`;
                    });
            }
        }
    }, 1000);
};

document
    .querySelectorAll(".contest-body .countdown-container")
    .forEach((container) => setTimer(container, false));
document
    .querySelectorAll(".contest-show.countdown-container")
    .forEach((container) => setTimer(container, true));
