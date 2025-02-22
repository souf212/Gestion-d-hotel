<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>keto</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#"/></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
            <div class="container">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                          <div class="logo">
    <a href="index.jsp">
        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-bootstrap" viewBox="0 0 16 16">
          <path d="M5.062 12V4.5h1.917c1.419 0 2.222.738 2.222 1.778 0 .991-.738 1.67-1.846 1.67h-.96v3.052h1.07c1.225 0 1.999.738 1.999 1.798 0 1.056-.753 1.762-2.118 1.762H5.063zm1.295-4.964h.781c.747 0 1.227-.438 1.227-1.052 0-.63-.476-1.042-1.19-1.042H6.29v2.094h.067zm.004 3.98v-2.183h.823c.753 0 1.247.45 1.247 1.09 0 .649-.476 1.093-1.208 1.093h-.862z"/>
          <path d="M0 4a4 4 0 0 1 4-4h8a4 4 0 0 1 4 4v8a4 4 0 0 1-4 4H4a4 4 0 0 1-4-4V4zm4-2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H4z"/>
        </svg>
        Celestia Luxe
    </a>
</div>

                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                 <a class="nav-link" href="index.jsp">Home</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="about.jsp">About</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="room.jsp">Our room</a>
                              </li>
                             
                              <li class="nav-item">
                                 <a class="nav-link" href="blog.jsp">Blog</a>
                              </li>
                              
                           </ul>
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!-- end header inner -->
      <!-- end header -->
      <!-- banner -->
      <section class="banner_main">
         <div id="myCarousel" class="carousel slide banner" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
               <li data-target="#myCarousel" data-slide-to="1"></li>
               <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <img class="first-slide" src="images/banner1.jpg" alt="First slide">
                  <div class="container">
                  </div>
               </div>
               <div class="carousel-item">
                  <img class="second-slide" src="images/banner2.jpg" alt="Second slide">
               </div>
               <div class="carousel-item">
                  <img class="third-slide" src="images/banner3.jpg" alt="Third slide">
               </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
         </div>
         <div class="booking_ocline">
            <div class="container">
               <div class="row">
                  <div class="col-md-5">
                     <div class="book_room">
                        <h1>Book a Room Online</h1>
                        <% 
        String status = request.getParameter("status");
        if ("success".equals(status)) { 
    %>
        <p style="color: green;">Booking Successful!</p>
    <% 
        } else if ("error".equals(status)) { 
    %>
        <p style="color: red;">Booking Failed! Please try again.</p>
    <% 
        } 
    %>
                        <form class="book_now" method="post" action="BookRoomServlet">
						   <div class="row">
						      <div class="col-md-12">
						         <span>Arrival</span>
						         <img class="date_cua" src="images/date.png">
						         <input class="online_book" placeholder="dd/mm/yyyy" type="date" name="arrival">
						      </div>
						      <div class="col-md-12">
						         <span>Departure</span>
						         <img class="date_cua" src="images/date.png">
						         <input class="online_book" placeholder="dd/mm/yyyy" type="date" name="departure">
						      </div>
						      <div class="col-md-12">
						         <span>Full Name</span>
						         <input class="online_book" placeholder="Full Name" type="text" name="fullName">
						      </div>
														     <div class="col-md-12">
								    <label for="roomName">Room Name</label>
								    <select id="roomName" class="online_book" name="chambreName">
								        <option value="Dreamscape Suite">Dreamscape Suite</option>
								        <option value="Serenity Haven">Serenity Haven</option>
								        <option value="Tranquility Retreat">Tranquility Retreat</option>
								        <option value="Harmony Room">Harmony Room</option>
								        <option value="Blissful Corner">Blissful Corner</option>
								        <option value="Zen Look">Zen Look</option>
								    </select>
								</div>

						      <div class="col-md-12">
						         <button class="book_btn" type="submit">Book Now</button>
						      </div>
						   </div>
						</form>

                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end banner -->
      <!-- about -->
      <div class="about">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-5">
                  <div class="titlepage">
                     <h2>About Us</h2>
                     <p>Nestled in the heart of sophistication, Celestia Luxe is a sanctuary of opulence and refinement. Designed to cater to every whim, our hotel offers world-class accommodations, exquisite dining experiences, and bespoke services tailored to create unforgettable moments. From the serene ambiance of our spa to the grandeur of our suites, every detail has been meticulously crafted to provide an experience that is as indulgent as it is timeless. Discover the art of hospitality redefined at Elysian Grand, your ultimate escape to a world of luxury. </p>
          
                  </div>
               </div>
               <div class="col-md-7">
                  <div class="about_img">
                     <figure><img src="images/about.png" alt="#"/></figure>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end about -->
      <!-- our_room -->
      <div  class="our_room">
      
         <div class="container">

            <div class="row">
             <div class="titlepage">
                     <h2>Our Room</h2>
                     <p>Welcome to Elysian Grand, where elegance meets unparalleled comfort, offering a haven of luxury for discerning travelers and lovers.</p>
                  </div>
               <div class="col-md-4 col-sm-6">
               
                  <div id="serv_hover"  class="room">
                     <div class="room_img">
                        <figure><img src="images/room1.jpg" alt="#"/></figure>
                     </div>
                     <div class="bed_room">
                           <h3>Dreamscape Suite</h3>
            <p>A cozy and elegant space designed for a restful night’s sleep and peaceful dreams.</p>
        </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6">
                  <div id="serv_hover"  class="room">
                     <div class="room_img">
                        <figure><img src="images/room2.jpg" alt="#"/></figure>
                     </div>
                     <div class="bed_room">
                       <h3>Serenity Haven</h3>
            <p>A tranquil retreat where you can relax and recharge in comfort and style.</p>
         </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6">
                  <div id="serv_hover"  class="room">
                     <div class="room_img">
                        <figure><img src="images/room3.jpg" alt="#"/></figure>
                     </div>
                     <div class="bed_room">
                        <h3>Tranquility Retreat</h3>
            <p>An inviting space perfect for unwinding after a long day with serene surroundings.</p>
         </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6">
                  <div id="serv_hover"  class="room">
                     <div class="room_img">
                        <figure><img src="images/room4.jpg" alt="#"/></figure>
                     </div>
                     <div class="bed_room">
                         <h3>Harmony Room</h3>
            <p>Experience a perfect balance of comfort and elegance in this charming room.</p>
         </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6">
                  <div id="serv_hover"  class="room">
                     <div class="room_img">
                        <figure><img src="images/room5.jpg" alt="#"/></figure>
                     </div>
                     <div class="bed_room">
                       <h3>Blissful Corner</h3>
            <p>A delightful corner that exudes warmth and coziness, ideal for relaxation.</p>
         </div>

                  </div>
               </div>
               <div class="col-md-4 col-sm-6">
                  <div id="serv_hover"  class="room">
                     <div class="room_img">
                        <figure><img src="images/room6.jpg" alt="#"/></figure>
                     </div>
                     <div class="bed_room">
                         <h3>Zen Nook</h3>
            <p>A minimalist space with soothing tones to help you find your inner peace.</p>
         </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
     
      <!-- end our_room -->
      <!-- gallery -->
    
      <!-- end gallery -->
      <!-- blog -->
      <div  class="blog">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Blog</h2>
                     <p>Welcome to Elysian Grand, where elegance meets unparalleled comfort, offering a haven of luxury for discerning travelers. </p>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-4">
                  <div class="blog_box">
                     <div class="blog_img">
                        <figure><img src="images/blog1.jpg" alt="#"/></figure>
                     </div>
                     <div class="blog_room">
                        <h3>Azure Oasis </h3>
                        <p>Relax by Azure Oasis, where sparkling waters meet handcrafted cocktails for the perfect blend of refreshment and luxury.</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="blog_box">
                     <div class="blog_img">
                        <figure><img src="images/blog2.jpg" alt="#"/></figure>
                     </div>
                     <div class="blog_room">
                        <h3>The Grand Lounge</h3>
                        <p>The Grand Lounge offers a serene and elegant space to unwind, with plush seating and an ambiance of timeless sophistication.</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="blog_box">
                     <div class="blog_img">
                        <figure><img src="images/blog3.jpg" alt="#"/></figure>
                     </div>
                     <div class="blog_room">
                        <h3>Elysian Suites</h3>
                        <p>Experience unparalleled comfort in the Elysian Suites, where modern elegance and personalized luxury create your perfect retreat.</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end blog -->
      <!--  contact -->
      
      <!-- end contact -->
      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class=" col-md-4">
                     <h3>Contact US</h3>
                     <ul class="conta">
                        <li><i class="fa fa-map-marker" aria-hidden="true"></i> Address</li>
                        <li><i class="fa fa-mobile" aria-hidden="true"></i> +01 1234569540</li>
                        <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="#"> demo@gmail.com</a></li>
                     </ul>
                  </div>
                  <div class="col-md-4">
                     <h3>Menu Link</h3>
                     <ul class="link_menu">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="about.jsp"> about</a></li>
                        <li><a href="room.jsp">Our Room</a></li>
                        <li><a href="blog.jsp">Blog</a></li>
                     </ul>
                  </div>
                  <div class="col-md-4">
                     <h3>News letter</h3>
                     <form class="bottom_form">
                        <input class="enter" placeholder="Enter your email" type="text" name="Enter your email">
                        <button class="sub_btn">subscribe</button>
                     </form>
                     <ul class="social_icon">
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-10 offset-md-1">
                        
                        <p>
                        © 2024 All Rights Reserved.
                        <br><br>
                       </p>

                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
   </body>
</html>