<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
/*성민추가 */
*{margin: 0; padding: 0;}
            button{background: 0 none; border: 0 none;}

            .dropdown button{color:rgb(51,122,183); overflow: hidden; position: relative; display: inline-block; margin-top:-10%; vertical-align: top; line-height: 40px; transition: all 0.5s;}
            .dropdown button:hover{color: white;}
            .dropdown button:before{content: ""; z-index: -1; position: absolute; background: rgb(128,214,255); transition: all 1s;}
.dropdown .btn:before{left: 0; top: 0; width: 100%; height: 0; border-bottom-left-radius: 50%; border-bottom-right-radius: 50%;}
.dropdown .btn:hover:before{height: 200%;}

.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}



@import url(https://fonts.googleapis.com/css?family=Raleway:300,700);
@import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
figure.snip1384 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 230px;
  max-width: 333px;
  width: 100%;
  color: #ffffff;
  text-align: left;
  font-size: 16px;
  background-color: #000000;
}
figure.snip1384 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
figure.snip1384 img {
  max-width: 100%;
  backface-visibility: hidden;
  vertical-align: top;
}
figure.snip1384:after,
figure.snip1384 figcaption {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}
figure.snip1384:after {
  content: '';
  background-color: rgba(0, 0, 0, 0.15);
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
  opacity: 0;
}
figure.snip1384 figcaption {
  z-index: 1;
  padding: 50px;
}
figure.snip1384 h3,
figure.snip1384 .links {
  width: 100%;
  margin: 5px 0;
  padding: 0;
}
figure.snip1384 h3 {
  line-height: 1.1em;
  font-weight: 700;
  font-size: 1.4em;
  text-transform: uppercase;
  opacity: 0;
}
figure.snip1384 p {
  font-size: 0.8em;
  font-weight: 300;
  letter-spacing: 1px;
  opacity: 0;
  top: 50%;
  -webkit-transform: translateY(40px);
  transform: translateY(40px);
}
figure.snip1384 i {
  position: absolute;
  bottom: 10px;
  right: 10px;
  padding: 20px 25px;
  font-size: 34px;
  opacity: 0;
  -webkit-transform: translateX(-10px);
  transform: translateX(-10px);
}
figure.snip1384 a {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 1;
}
figure.snip1384:hover img,
figure.snip1384.hover img {
  zoom: 1;
  filter: alpha(opacity=50);
  -webkit-opacity: 0.5;
  opacity: 0.5;
}
figure.snip1384:hover:after,
figure.snip1384.hover:after {
  opacity: 1;
  position: absolute;
  top: 10px;
  bottom: 10px;
  left: 10px;
  right: 10px;
}
figure.snip1384:hover h3,
figure.snip1384.hover h3,
figure.snip1384:hover p,
figure.snip1384.hover p,
figure.snip1384:hover i,
figure.snip1384.hover i {
  -webkit-transform: translate(0px, 0px);
  transform: translate(0px, 0px);
  opacity: 1;
}

/*0526*/





fieldset {
  position: relative;
  display: inline-block;
  padding: 0 0 0 40px;
  background: #fff;
  border: none;
  border-radius: 5px;
}



input {
  color: #666;
  z-index: 2;
  
}
input:focus {
  outline: 0 none;
}
input:focus + .btn2 {
  -webkit-transform: translate(0, 0);
      -ms-transform: translate(0, 0);
          transform: translate(0, 0);
  -webkit-transition-duration: 0.3s;
          transition-duration: 0.3s;
}
input:focus + .btn2 .fa {
  -webkit-transform: translate(0px, 0);
      -ms-transform: translate(0px, 0);
          transform: translate(0px, 0);
  -webkit-transition-duration: 0.3s;
          transition-duration: 0.3s;
  color: #fff;
}

.btn2 {
  z-index: 1;
  width: 50px;
  border: 0 none;
  background: #80d6ff;
  cursor: pointer;
  border-radius: 0 5px 5px 0;  
  -webkit-transform: translate(-50px, 0);
      -ms-transform: translate(-50px, 0);
          transform: translate(-50px, 0);
  -webkit-transition-duration: 0.3s;
          transition-duration: 0.3s;
}

.fa-search {
  font-size: 1.4rem;
  color: #29abe2;
  z-index: 3;
  top: 25%;
  -webkit-transform: translate(-340px, 0);
      -ms-transform: translate(-340px, 0);
          transform: translate(-340px, 0);
  -webkit-transition-duration: 0.3s;
          transition-duration: 0.3s;
  -webkit-transition: all 0.1s ease-in-out;
          transition: all 0.1s ease-in-out;
}

/*0527*/


	
/*성민추가  끝*/

body{
	background-color:white;
}


.navbar {
	margin-bottom: 50px;
	border-radius: 0;
	
}

.jumbotron {
	margin-bottom: 0;
	background-color:#e6f7ff ;
	
}

.footerArea {
	width: 100%;
	height: 90px;
	background-color: silver;
	margin: 0px auto;
}

.footer {
	width: 1000px;
	height: 90px;
	margin: 0px auto;
	
}

.botnavi li {
	list-style: none;
	float: left;
}

.footer_nav {
	float: left;
	margin-right: 10px;
}
.footer_nav li{
	list-style: none;
	float: left;
	
}

.footer_nav_sub{
	float: left;
}

.ft_copyright{
	font-size: x-small;
}

#sns li{
	margin-right: 10px;
	}
	
.navbar-nav{
	font-weight: bold;
}	


#loading {
 width: 100%;  
 height: 100%;  
 top: 0px;
 left: 0px;
 position: fixed;  
 display: block;  
 opacity: 0.7;  
 background-color: #fff;  
 z-index: 99;  
 text-align: center; } 
  
#loading-image {  
 position: absolute;  
 top: 50%;  
 left: 40%; 
 z-index: 100; }
 

	
</style>
    