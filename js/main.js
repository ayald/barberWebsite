

// ----------------------
// Home Page - Gallery
//-----------------------

  // Modal Image Gallery
  function onClick(element) {
    document.getElementById("img01").src = element.src;
    document.getElementById("modal01").style.display = "block";
    var captionText = document.getElementById("caption");
    captionText.innerHTML = element.alt;
    }


  //quoteSlides JS
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }

  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("quoteSlides");
    if (n > slides.length) {slideIndex = 1}    
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
  }
    slides[slideIndex-1].style.display = "block";   
  }

// ----------------------
// open studio
//-----------------------



function bigImg(x) {
  x.style.height = "270px";
}

function normalImg(x) {
  x.style.height = "240px";
}

// ----------------------
// about
//-----------------------


function changepic1(x) {
  x.src ="images/Yarin1.jpg" ;
}

function changpic2(x) {
  x.src ="images/Yarin2.jpg";
}

