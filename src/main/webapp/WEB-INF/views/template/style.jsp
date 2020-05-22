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






/*성민추가 */

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

	
</style>
    