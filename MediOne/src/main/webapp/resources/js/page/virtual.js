  <!-- Plugin css file  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/assets/plugin/owlcarousel/owl.carousel.min.css">
    <!-- project css file  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/assets/css/ihealth.style.min.css">if (typeof jQuery === "undefined") {
    throw new Error("jQuery plugins need to be before this file");
}
$(function() {
    "use strict";

    /*****Owl Slider************/
    $(document).ready(function(){
        $('.owl-carouselthree').owlCarousel({
            loop:true,
            margin:15,
            autoplay:true,
            autoplayTimeout:1000,
            autoplayHoverPause:true,
            responsive:{
                0:{
                    items:1
                },
                400:{
                    items:2
                },
                480:{
                    items:2
                },
                600:{
                    items:2
                },
                1000:{
                    items:2
                },
                1100:{
                    items:2
                },
                1400:{
                    items:2
                },
                1501:{
                    items:2
                }
            }
        })
    });
    
    // Heartbeat
    $(document).ready(function() {
        let slideBox = document.querySelector('.slide-box');
        let solid = document.querySelector('.solid');
        let width = 100;
        let slide = setInterval(() => {
            solid.style.width = `${width}%`;
            width -= 1;
        }, 20)
        
        setTimeout(() => {
            clearInterval(slide);
            solid.style.width = `100%`;
        }, 2050);
        
        setInterval(() => {
        
            width = 100;
            let slide = setInterval(() => {
                solid.style.width = `${width}%`;
                width -= 1;
            }, 20)
        
            setTimeout(() => {
                clearInterval(slide);
            }, 2050);
        
        }, 2050);
    }); 
   
});



