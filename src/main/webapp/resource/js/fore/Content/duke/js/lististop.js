/**置顶*/
var ScrollToTop = ScrollToTop || {
    setup: function () {

        var a = $(window).height() / 2;

        $(window).scroll(function () {
            (window.innerWidth ? window.pageYOffset : document.documentElement.scrollTop) >= a ? $("#ScrollToTop").removeClass("Offscreen") : $("#ScrollToTop").addClass("Offscreen")
        });
        $("#ScrollToTop").click(function () {
            $("html, body").animate({ scrollTop: "0px" }, 400);
            return false
        })
    }
};