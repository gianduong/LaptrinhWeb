<%-- 
    Document   : capnhatProfile
    Created on : Dec 13, 2020, 8:19:09 PM
    Author     : Hiep Le
--%>

<%@page import="Model.Thanhvien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Profile!</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="CSDL.css" rel="stylesheet" type="text/css" />
	<link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
	  <link rel="apple-touch-icon" sizes="60x60" href="favicon.ico/apple-icon-60x60.png">
	  <link rel="apple-touch-icon" sizes="72x72" href="favicon.ico/apple-icon-72x72.png">
	  <link rel="apple-touch-icon" sizes="76x76" href="favicon.ico/apple-icon-76x76.png">
	  <link rel="apple-touch-icon" sizes="114x114" href="favicon.ico/apple-icon-114x114.png">
	  <link rel="apple-touch-icon" sizes="120x120" href="favicon.ico/apple-icon-120x120.png">
	  <link rel="apple-touch-icon" sizes="144x144" href="favicon.ico/apple-icon-144x144.png">
	  <link rel="apple-touch-icon" sizes="152x152" href="favicon.ico/apple-icon-152x152.png">
	  <link rel="apple-touch-icon" sizes="180x180" href="favicon.ico/apple-icon-180x180.png">
	  <link rel="icon" type="image/png" sizes="192x192"  href="favicon.ico/android-icon-192x192.png">
	  <link rel="icon" type="image/png" sizes="32x32" href="favicon.ico/favicon-32x32.png">
	  <link rel="icon" type="image/png" sizes="96x96" href="favicon.ico/favicon-96x96.png">
	  <link rel="icon" type="image/png" sizes="16x16" href="favicon.ico/favicon-16x16.png">
	  <link rel="manifest" href="/manifest.json">
	  <meta name="msapplication-TileColor" content="#ffffff">
	  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
	  <meta name="theme-color" content="#ffffff">
	  <link rel="stylesheet" type="text/css" href="trangchu.css">
	  <link rel="stylesheet" type="text/css" href="giohang.css">
	<style>
		.lh{
			font-weight:bold;
		}
		.lh2{
			color:#551aa8;
		}
		.lh3{
			color:#808080;
		}
		.lh1{
			color:#ff0000;
		}
		article ul li{
			margin-left:40px;
			margin-bottom:15px;
			color:#F00;
		}
		h2{
			color:#808080;
			text-align:center;
			font-style:italic;
		}
		.box1 a{
			text-decoration:none;
			color:#000;
		}
		.box1 a:hover{
			color:#F60;
		}
		.box1 p{
			text-align:center;
			color:#333;
			font-weight:bold;
		}
		.box1 h4{
			color:#F00;
			text-align:center;
		}
		th{
			padding:10px;
		}
		td a{
			text-decoration:none;
			text-transform:uppercase;
		}
		td a:hover{
			text-decoration:underline;
			color:#F00;
		}
		input[type=text], select {
		  width: 100%;
		  padding: 12px 20px;

		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
		
		input[type=submit] {
		  width: 100%;
		  background-color: #FC90A5;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}
		
		input[type=submit]:hover {
		  background-color: #4CAF50;
		}
		
		.asssu {
		  border-radius: 5px;

		  padding: 20px;
		}
                <%@include file="/CSS/CSDL.css" %>
                <%@include file="/CSS/giohang.css" %>
                <%@include file="/CSS/trangchu.css" %>
	</style>
</head>
<body>
<div id="menu">
		<header>
		<img src="img/bia2.jpeg" width="972px" height="250px">
		
	</header>
	
	<nav>
                    <ul class="bang">
                        <li><a href="#"><form method="get" action="show_Trangchu">TRANG CH???</form></a></li>
                        <li><a href="#"><form method="get" action="show_Gioithieu">GI???I THI???U</form></a></li>
                    <li><a>M???T H??NG TH???I TRANG</a><ul>
                            <li><a href="#"><form method="get" action="show_Congso">QU???N ??O C??NG S???</form></a></li>
                            <li><a href="#"><form method="get" action="show_Dulich">QU???N ??O DU L???CH</form></a></li>
                            <li><a href="#"><form method="get" action="show_Thoitrang">QU???N ??O TH???I TRANG</form></a></li>
                    </ul></li>
                    <li><a href="#"><form name="myform" method="get" action="show_Huongdan">H?????NG D???N MUA H??NG</form></a></li>
                    <li><a href="#"><form name="myform" method="get" action="show_Lienhe">LI??N H???</form></a></li>
                                  
                    <li><a href="#" onclick="show_cart()">GI??? H??NG</a></li>
                    </ul>
            </nav>
	
	<nav>
	<div class="bang">

								
	<br><br>
	</div>
	<h1>H??? s?? c???a t??i</h1>
	Qu???n l?? th??ng tin h??? s?? ????? b???o m???t t??i kho???n
	<hr><hr>
        <%
            Thanhvien tv = new Thanhvien();
            if(session.getAttribute("thanhvien")!=null)
            {
                tv = (Thanhvien)session.getAttribute("thanhvien");
            }
        %>
	&nbsp;&nbsp;&nbsp;<p style="text-decoration: inherit;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T??n t??i kho???n: <%out.print(tv.getTaikhoan());%></p>
</nav>
  <footer align="center">
  <br />
	<aside>
	<div class="menu1">
      <ul style="list-style-image:url(img/1.png)">
            <li><a href="#"><form action="show_ThaydoiTT" method="get">H??? s??</form></a></li><br>
            <li><a href="#"><form action="show_ThaydoiTT" method="get">?????i m???t kh???u</form></a></li><br>
            <li><a href="#"><form action="show_Donhang" method="get">????n h??ng ???? Mua</form></a></li><br>
            <li><a href="#"><form action="show_Thongbao" method="get">Th??ng b??o</form></a></li><br>
      </ul>
    </div>
    <br />
	</aside>
        
	<div style="display: flex; border: 2px dotted gray; border-radius: 10px;">			
		<div style="width: 460px; border-radius: 10px;text-align: left;" class="asssu">
					<form action="update_Profile" method="post">
                                            &nbsp;&nbsp;&nbsp;&nbsp;H??? v?? T??n: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txt_Ten" size="30px" id="ten" value="<%=tv.getHoten() %>"> <br />    <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp; S??? ??i???n tho???i:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txt_Sdt" size="30px" id="dt" value="<%=tv.getSdt() %>"><br />    <br />
                                          &nbsp;&nbsp;&nbsp; Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txt_Email" id="em" size="30px" value="<%=tv.getEmail() %>"><br />    <br />
                                           &nbsp;&nbsp;&nbsp; M???t Kh???u:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txt_Matkhau" id="mk" size="30px" > <br /><br />
					   &nbsp;&nbsp;&nbsp; Nh???p l???i M???t Kh???u:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="remk" size="30px"> <br /><br />
                                           <input type="hidden" name="txt_Id" size="30px" value="<%=tv.getId() %>">
                                           <input type="hidden" name="txt_Taikhoan" size="30px" value="<%=tv.getTaikhoan() %>">
                                           <input type="hidden" name="txt_Chucvu" size="30px" value="<%=tv.getChucvu() %>">
					  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					   <input type="submit" value="Thay ?????i"">
					</form>
		</div>
		<div align="center">
	      <h3>???NH ?????I DI???N!</h3>
	      <img src="img/icon2.png" />
	      <a href="https://www.facebook.com/nguyengianduong"><img src="img/bean.jpg" width="140px" height="150px" style="border-radius: 200px;" /></a>
	      	      <hr />  <br />
	      <button>Ch???n ???nh</button>  <br />  <br />
		  <p style="color: white;">Dung l?????ng File t???i ??a: 1MB</p>
		  <p>?????nh d???ng File ???nh: .JPG,.PNG,.JPEG</p>
	    </div>
	</div>
	</div>
  <footer align="center">
  <br />
  <marquee class="chuchay1">Th???a s???c th??? hi???n c?? t??nh c???a b???n!</marquee>
  <div class="ketthuc" ><a href="index.html">C???a h??ng qu???n ??o s??? 1 Vi???t Nam</a></div>
    <br />
    <b>?????a ch???: s??? 9 km 10 H?? ????ng, H?? N???i</b>
    <br />
    <br />
    <p>Hotline c???a shop: 0999 999999 ~ 03636 05262</p>
    </footer>
</div>
	
</body>
<script type="text/javascript">
                const taga = document.getElementsByTagName("a");
		for(var i=0;i<taga.length;i++)
		{
			taga.item(i).addEventListener("click", function()
			{
				submitt(this);
					
			});
		}
                
                function submitt(z)
                {
                    z.children[0].submit();                    
                }
</script>
</html>
