
<html>
    <head>
        <title>CineSPot</title>
        <link rel="stylesheet" href="cinehome.css">

    </head>
    <body>
        <section>
            <div class="banner" id="home">
               <div class="navigation">
                    <h3 style="color: gold">Welcome <%=request.getAttribute("user") %></h3>
                    <ul>
            
                       <li> <a href="#about">About us</a></li>
                       <li> <a href="/Movie_booking/cinemas.jsp">Movies</a></li>
                       <li> <a href="#contact">Contact</a></li>
                    </ul>
               </div>
               <div class="content">
                   <h1>Cine Spot</h1>
                   <p>Your Window to Theare Entertainment </p>
   
               </div>
            </div>
           </section>
           <section class="aboutus" id="about">

            <h1 align="center">ABOUT US</h1>

            <br>
            <br>
            
            <div class="sec2" >
                 <div class="info">
                    <p>
                        Welcome to CineSpot! We are your ultimate destination for hassle-free movie ticket booking. With a passion 
                        for cinema and a commitment to exceptional customer experiences, we have curated an online platform that brings
                         the magic of movies right to your fingertips. Whether you're an avid film enthusiast or simply looking for a fun night out,
                        our user-friendly website offers a wide selection of the latest blockbusters, indie gems, and everything in between.
                        Say goodbye to long queues and last-minute disappointments  with our secure and convenient booking process, you can 
                        reserve your seats in advance and step into the world of entertainment without a worry. Join us on this cinematic 
                        journey and let MovieTix be your trusted companion for all your movie adventures! Lights, camera, action  let the show begin!
                    </p>
                 </div>

            </div>
            <div class="links">
            <ul>
                <li> <a href="#home">Go Home</a></li>
            </ul>
            </div>
        </section>
        <section class="contact" id="contact">
            <footer>
            
              <div class="main">
                  
            
                  
                  <div class="right box">
                      <h2>Contact us</h2>
                      <div class="con">
                          <form action="ContactService" method="post">
                              <div class="email">
                              <div class="text">Email *</div>
                              <input type="email" required name="email" id="email">
                                  </div>
                              <div class="msg">
                                  <div class="text">Message *</div>
                                  <textarea rows="2" cols="25" required id="msg" name="msg"></textarea>
                              </div>
                              <div class="btn">
                                  <button >Send</button>
                              </div>
                          </form>
                      </div>
                  </div>
            
              </div>
            
            
            
            </footer>
            
            
            </section>
    </body>
</html>