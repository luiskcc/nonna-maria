function redirectToPage(){
window.location.href = "https://search.google.com/local/writereview?placeid=ChIJqWhZCwDLQQwRTyWEGKzPClw"
};

function showCommentSection() {
    const comment = document.getElementsByClassName("comment")[0]; 
    if (comment) {
        comment.style.display = "block";
        console.error("Comment element not found in the DOM");
    }
}

function redirectionToWeb(){
    window.location.href = "https://g.co/kgs/YRZokFM"
}