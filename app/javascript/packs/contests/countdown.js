import moment from "moment";
var momentDurationFormatSetup = require("moment-duration-format");
momentDurationFormatSetup(moment);

const setTimer = (target, showSeconds) => {
    const date = new Date($(target).attr("data-date"));
    const deadline = moment(date, "fr");
    if (deadline.isValid()) {
        function customTemplate() {
            return this.duration.asSeconds() >= 86400 ? "D [jour(s)] HH:mm:ss" : "HH:mm:ss";
        }
        let x = setInterval(function () {
            let diff = deadline.diff(moment());

            if (diff <= 0) {
                clearInterval(x);
            } else {
                if (showSeconds) {
                    $(target)
                        .find(".countdown")
                        .html(() => {
                            return `${moment.duration(diff).format(customTemplate)}`;
                        });
                } else {
                    $(target)
                        .find(".countdown")
                        .html(() => {
                            return `${moment.duration(diff).format("DD[j] HH[h] mm[m]")}`;
                        });
                }
            }
        }, 1000);
    }
};

document
    .querySelectorAll(".contest-body .countdown-container")
    .forEach((container) => setTimer(container, false));
document
    .querySelectorAll(".contest-show.countdown-container")
    .forEach((container) => setTimer(container, true));
