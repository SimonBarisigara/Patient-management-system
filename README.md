my comments
	<!-- Slider >
			<div id="slide">
			<div class="slideshow-container">
			<div class="mySlides fade"> <img src="assets/img/slider/4.jpg" alt="Slider1" style="width:100%"> </div>
			<!div class="mySlides fade"> <img src="assets/img/slider/22.jpeg" alt="Slider2" style="width:100%"> </div>
			<div class="mySlides fade"> <img src="assets/img/slider/3.jpg" alt="Slider3" style="width:100%"> </div>
			<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next" onclick="plusSlides(1)">&#10095;</a> 
			</div>
			<br>
			<div style="text-align:center"> 
			<span class="dot" onclick="currentSlide(1)"></span> 
			<span class="dot" onclick="currentSlide(2)"></span> 
			<span class="dot" onclick="currentSlide(3)"></span>
			<span class="dot" onclick="currentSlide(4)"></span>
			</div>
			</div-->
            
			<script>
			var slideIndex = 0;
			showSlides();
			var slides,dots;

			function showSlides() {
			var i;
			slides = document.getElementsByClassName("mySlides");
			dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";  
			}
			slideIndex++;
			if (slideIndex> slides.length) {slideIndex = 1}    
			for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex-1].style.display = "block";  
			dots[slideIndex-1].className += " active";
			setTimeout(showSlides, 8000); // Change image every 8 seconds
			}

			function plusSlides(position) {
			slideIndex +=position;
			if (slideIndex> slides.length) {slideIndex = 1}
			else if(slideIndex<1){slideIndex = slides.length}
			for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";  
			}
			for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex-1].style.display = "block";  
			dots[slideIndex-1].className += " active";
			}

			function currentSlide(index) {
			if (index> slides.length) {index = 1}
			else if(index<1){index = slides.length}
			for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";  
			}
			for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[index-1].style.display = "block";  
			dots[index-1].className += " active";
			}
			</script>


			<!-- End of Slider -->
