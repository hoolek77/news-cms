let newsDiv = document.querySelectorAll(".news");
newsDiv.forEach((div) => {
    div.addEventListener("click", function () {
        window.location.replace("newsDisplay.aspx?PID=" + div.id.substring(3));
    })
})
