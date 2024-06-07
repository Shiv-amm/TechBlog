<%@page import="com.connection.helper.ConProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>School Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <%@include file="navbar.jsp" %>

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron jback text-white">
                <div class="container">
                    <h2 class="display-3">Welcome To OurSchool</h2>
                    <h5>OurSchool, an innovative platform dedicated to transforming the education experience and fostering stronger connections within school communities. 
                        Our mission is to provide a comprehensive and user-friendly solution that brings students, 
                        parents, teachers, and administrators together in a collaborative digital environment.</h5>
                    <a href="reg_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-external-link"></span>Start</a>
                    <a href="login_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle"></span>Login</a>
                </div>
            </div>
        </div>

        <div class="container ">
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card"">
                        <div class="card-body">
                            <h5 class="card-title">Annual Events</h5>
                            <p class="card-text">Welcome to the heart of our school's vibrant community – our annual events! 
                                At OurSchool, we believe in fostering a holistic learning experience that goes beyond the classroom. 
                               Our annual events are a celebration of talent, creativity, and camaraderie, providing students with the opportunity to showcase their skills and build lasting memories...</p>
                            <a href="#" class="btn pback text-white">Read More..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card"">
                        <div class="card-body">
                          <h5 class="card-title">Cultural Events</h5>
                           <p class="card-text">Experience the vibrant tapestry of creativity and talent at OurSchool through our annual cultural events. 
                                These celebrations showcase the rich diversity within our school community and provide a platform for students to express themselves through various artistic mediums. 
                                Join us in celebrating the cultural events that make OurSchool a hub of artistic expression....</p>
                            <a href="#" class="btn pback text-white">Read More..</a>
                        </div>
                    </div>
                </div><div class="col-md-4">
                    <div class="card"">
                        <div class="card-body">
                            <h5 class="card-title">Sports Events</h5>
                            <p class="card-text">At OurSchool, we believe in the power of sports to instill discipline, teamwork, and a spirit of healthy competition. 
                                Our sports events are an integral part of the school calendar, providing students with opportunities to showcase their athletic prowess and foster a sense of camaraderie.
                                Here's a glimpse into the exciting sports events that define our school....</p>
                            <a href="#" class="btn pback text-white">Read More..</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="card"">
                        <div class="card-body">
                            <h5 class="card-title">Faculty Information</h5>
                            <p class="card-text">At OurSchool,our commitment to providing quality education is embodied by our dedicated and experienced faculty members. 
                                                Our team of educators is passionate about nurturing young minds, fostering creativity, and instilling a love for learning. 
                                                Get to know the talented and the exceptional individuals who make up our faculty...</p>
                            <a href="#" class="btn pback text-white">Read More..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card"">
                        <div class="card-body">
                            <h5 class="card-title">Campus Structure</h5>
                            <p class="card-text">At OurSchool, we take pride in providing a vibrant and conducive environment for learning, growth. 
                                Our well-designed campus is equipped with modern facilities to cater to the diverse needs of our students.
                                Explore our campus virtually or schedule a visit to experience firsthand the engaging and nurturing environment that defines OurSchool.....</p>
                            <a href="#" class="btn pback text-white">Read More..</a>
                        </div>
                    </div>
                </div><div class="col-md-4">
                    <div class="card"">
                        <div class="card-body">
                            <h5 class="card-title">Disabled Students</h5>
                            <p class="card-text">At OurSchool, we believe in providing an inclusive and supportive learning environment that caters to the unique needs of all students, including those with disabilities. 
                                                Our commitment to inclusivity goes beyond rhetoric – it's a core value that shapes our educational approach.
                                                Here's a glimpse into how we support and empower our disabled students</p>
                            <a href="#" class="btn pback text-white">Read More..</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/newjavascript.js" type="text/javascript"></script>
    </body>
</html>
