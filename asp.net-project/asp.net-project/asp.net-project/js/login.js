window.addEventListener("keypress", function(event){
    if (event.keyCode === 13) {
        event.preventDefault();
        console.log("clicked");
        document.querySelector(".login-btn").click();
    }
})