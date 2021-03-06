<%-- 
    Document   : trangchu
    Created on : Dec 6, 2020, 3:46:28 PM
    Author     : Hiep Le
--%>

<%@page import="Model.Sanpham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Thanhvien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <title>Trang chu - Thoi trang</title>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <link href="/CSS/CSDL.css" rel="stylesheet" type="text/css" />
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
              <link rel="stylesheet" type="text/css" href="/CSS/trangchu.css">
              <link rel="stylesheet" type="text/css" href="/CSS/giohang.css">
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
                    
                    
                    <%@include file="/CSS/giohang.css" %>
                    <%@include file="/CSS/trangchu.css" %>
                    <%@include file="/CSS/CSDL.css" %>
            </style>
    </head>
    <body>
<div id="thanhtoan" class="modal" style="display : none"> 
    <form action="thanhtoan" method="post" enctype="multipart/form-data" class="modal-content" >
        <div id="form_thanhtoan" class="container" style="display: flex; flex-direction: column;">
            <label for="uname"><b>Nh???p ?????a ch??? nh???n h??ng</b></label>
            <input type="text" name="txt_Diachi" required>
            <label for="uname"><b>Nh???p s??? ??i???n tho???i li??n h???</b></label>
            <input type="text" name="txt_soDT" required>
            
            <label for="uname"><b>Ch???n h??nh th???c thanh to??n</b></label>
            <select id="hinhthucthanhtoan" onchange="chonThanhtoan()">
                <option value="tr???c ti???p">Tr???c ti???p</option>
                <option value="chuy???n kho???n">Chuy???n kho???n</option>
            </select>
            <label for="uname"><b>Ch???n h??nh th???c giao h??ng</b></label>
            <select id="hinhthucgiaohang" onchange="chonGiaohang()">
                <option value="giao nhanh">giao h??ng nhanh</option>
                <option value="giao b??nh th?????ng">giao h??ng b??nh th?????ng</option>
            </select>
            <input id ="hinhthuc_thanhtoan" type="hidden" name="txt_HTTT" required>
            <input id ="hinhthuc_giaohang" type="hidden" name="txt_HTGH" required>
            <input id ="str" type="hiden" name="hoadon">
      </div>

      <div class="container" style="background-color:#f1f1f1">
          <button type="submit">L??u l???i</button>
          <button type="button" onclick="document.getElementById('thanhtoan').style.display='none'" class="cancelbtn">Quay l???i</button>
      </div>
    </form>
</div>
<div id="gio-hang" class="giaodienGH">
    <div class="noidung_GH">
        <div class="noidung1">
            <h5 class="modal-title">Gi??? H??ng</h5>
            <span class="close">&times;</span>
        </div>
        <div class="noidung2">
            <div class="chitietGH">
                <span class="SPtrongGH header-SP cot">S???n Ph???m</span>
                <span class="giatien header-SP cot">Gi??</span>
                <span class="soluong-SP header-SP cot">S??? L?????ng</span>
            </div>
            <div class="dsach_SP">
                <%
                    ArrayList<Sanpham> dssp_giohang = new ArrayList<Sanpham>();
                    int tonggia = 0;
                    if(session.getAttribute("giohang")!=null)
                    dssp_giohang = (ArrayList<Sanpham>)session.getAttribute("giohang");
                    for(Sanpham i : dssp_giohang)
                    {
                        tonggia = tonggia + i.getGia();
                %>
                <div class="chitietGH">
                    <div class="SPtrongGH cot">
                        <input class="id_SPham" type="hidden" value="<%=i.getId() %>">
                        <img class="anh_SP" src="<%=i.getLinkHA() %>" width="100" height="100">
                        <span class="tieude_SP"><%=i.getTenSP() %></span>
                    </div>
                    <span class="giatien cot"><%=i.getGia() %>VN??</span>
                    <div class="soluong-SP cot">
                        <input class="soluong_inp_GH" type="number" value="1">
                        <button class="btn btn-danger" type="button">X??a</button>
                    </div>
                </div>
                <%
                    }                    
                %>               
            </div>                    
            <div class="tongGH">
                <strong class="tieude_tong">T???ng C???ng:</strong>
                <span class="tonggia"><%=tonggia %>VN??</span>
            </div>
        </div>

        <div class="noidung3">
            <button type="button" class="btn btn-2 close-footer" onclick="close_cart()">????ng</button>
            <button type="button" class="btn btn-1 order" onclick="show_thanhtoan()">Thanh To??n</button>
        </div>
    </div>
</div>
    <div id="about-product" class="modal"> 
      <form class="modal-content" action="add_VaoGH" method="get">
        <div class="container">
            <div class="display-container" style="width: 100%">
                    <div class="form-img">
                            <img src="anh1.png" style="width: 70%; margin: 0 auto;" id="anh">
                            </div>			    		
                    <div class="form-info" style="width: auto;">
                            <div><h3 style="color : black"><p id="name_P">Th??ng tin m???t m???t h??ng</p></h3></div>
                            <div><h3 style="color : black"><p id="cost_P">Gi??</p></h3></div>
                            <input type="hidden" id="id_SP">

                    </div>
            </div>		        
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="submit" class="btn-cart">Th??m v??o gi??? h??ng</button>
            <button type="button" onclick="document.getElementById('about-product').style.display='none'" class="cancelbtn">Quay l???i</button>
        </div>
      </form>
    </div>
    <div id = "header" style="height: 40px;background-color: #ffff80;">
        <div class="form_timkiem">
            <form action="search_SP" method="get">
            <input type="text" name="timkiem" class="txtTimkiem">
            <input type="submit" name="submit" value="T??m ki???m s???n ph???m" class="button btnTimkiem">
            </form>
        </div>
        <%
            if(session.getAttribute("thanhvien")==null)
            {     
        %>
            <div class="menu">
                <a href="#"><form action="show_Dangki" method="get"><img src="img/dangki.png" width="120" height="32"></form></a>
                <a href="#"><form action="show_Dangki" method="get"><img src="img/dangnhap.png" width="100" height="30"></form></a>                                           
            </div>
        <%
            }
            else
            {
                Thanhvien tv = new Thanhvien();
                tv = (Thanhvien)session.getAttribute("thanhvien");
        %>
            <div class="menu">
                <a href="#"><form action="show_Trangcanhan" method="get">Xin ch??o <%=tv.getHoten()%></form></a>
                <a href="#"><form action="LogoutController" method="post">????ng xu???t</form></a>
                <%
                    if(!tv.getChucvu().equals("user"))
                    {
                %>
                 <a href="#"><form action="show_Siteadmin" method="get">T???i b??n qu???n l??</form></a>   
                <%
                    }
                %>
            </div>
        <%
            }
        %>
    </div>
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
            <article>
    <br />
    <div class="slide">
          <script type="text/javascript">
                if(document.images){
                   var image1 = new Image();
                   image1.src = "img/chu3.jpg";
                   var image2 = new Image(); 
                   image2.src = "img/Sale.png";
                }
          </script>
          <a href="trangchu.html" onMouseOver="document.myImage.src=image2.src;" onMouseOut="document.myImage.src=image1.src;">
            <img name="myImage" src="img/chu3.jpg" width="700px" height="357px" />
          </a>
    </div>
    <br />

    <img src="img/aophong.png" width="700px" height="35px" />
    <br />
    <br />
    <div class="box">
            <a class="a" href="aophong.html"><img src="img/aophong1.jpg" width="220px" height="295px" /></a>
            <div align="center">
                    <a href="#">??o ph??ng n??? h??nh in 100% cotton</a>
            </div>
            <p><del>1.200.000 VN??</del></p>
            <h4>850.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>
    <div class="box">
            <a class="a" href="aophong.html"><img src="img/aophong2.jpg" width="220px" height="295px" /></a>
            <div align="center">
            <a href="#">??o ph??ng n??? c???c tay</a>
            </div>
            <p><del>1.000.000 VN??</del></p>
            <h4>900.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>
    <div class="box">
            <a class="a" href="aophong.html"><img src="img/aophong3.jpg" width="220px" height="295px"/></a>
            <div align="center">
            <a href="#">??o ph??ng n??? h??nh in</a>
            </div>
            <p><del>1.200.000 VN??</del></p>
            <h4>850.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>

    <img src="img/chanvay.png" width="700px" height="35px" />
    <br />
    <br />
    <div class="box">
            <a class="a" href="chanvay.html"><img src="img/chanvay1.jpg" width="220px" height="295px" /></a>
            <div align="center">
            <a href="chanvay.html">ch??n v??y x???</a>
            </div>
            <p><del>1.200.000 VN??</del></p>
            <h4>850.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" /></div>
    </div>
    <div class="box">
            <a class="a" href="#"><img src="img/chanvay2.jpg" width="220px" height="295px" /></a>
            <div align="center">
            <a href="#">ch??n v??y n??? t??nh </a>
            </div>
            <p><del>1.000.000 VN??</del></p>
            <h4>900.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>
    <div class="box">
            <a class="a" href="#"><img src="img/chanvay3.jpg" width="220px" height="295px"/></a>
            <div align="center">
            <a href="#">ch??n v??y ng???n c?? n???p</a>
            </div>
            <p><del>1.200.000 VN??</del></p>
            <h4>850.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>

    <img src="img/phukien.png" width="700px" height="35px" />
    <br />
    <br />
    <div class="box">
            <a class="a" href="#"><img class="img-prd" src="img/phukien1.jpg" width="220px" height="295px" /></a>
            <div align="center">
            <a href="#" class="content-product-h3">Kh??n len c?? ren </a>
            </div>
            <p><del >120.000 VN??</del></p>
            <h4 class="price">85.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>
    <div class="box">
            <a class="a" href="#"><img class="img-prd" src="img/phukien2.jpg" width="220px" height="295px" /></a>
            <div align="center">
            <a href="#" class="content-product-h3">t???t ch??n d??i </a>
            </div>
            <p><del>100.000 VN??</del></p>
            <h4 class="price">90.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>
    <div class="box">
            <a class="a" href="#"><img src="img/phukien3.jpg" width="220px" height="295px" /></a>
            <div align="center">
            <a href="">t???t ch??n cho gi??y l?????i </a>
            </div>
            <p><del>200.000 VN??</del></p>
            <h4>50.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>
    <img src="img/longcuu.png" width="700px" height="35px" />
    <br />
    <br />
    <div class="box">
            <a class="a" href="#"><img src="img/longcuu1.jpg" width="220px" height="295px" class="img-prd" /></a>
            <div align="center">
            <a href="#">??o l??ng c???u M1</a>
            </div>
            <p><del>11.200.000 VN??</del></p>
            <h4>8.850.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>
    <div class="box">
            <a class="a" href="#"><img src="img/longcuu2.jpg" width="220px" height="295px" /></a>
            <div align="center">
            <a href="#">??o l??ng c???u M2</a>
            </div>
            <p><del>10.000.000 VN??</del></p>
            <h4>9.900.000 VN??</h4>
            <div align="center">
            <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>
    <div class="box">
            <a class="a" href="#"><img src="img/longcuu3.jpg" width="220px" height="295px"/></a>
            <div align="center">
                    <a href="#">??o l??ng c???u M3</a>
            </div>
            <p><del>10.200.000 VN??</del></p>
            <h4>9.850.000 VN??</h4>
            <div align="center">
                    <input class="button-buy button" type="button" onclick="myClick()" value="Mua h??ng" />
            </div>
    </div>
    </article>


            <aside>

        <div class="menu1">
          <h3 style="padding-top: 5px">DANH M???C S???N PH???M</h3>
          <img src="img/icon2.png" />
          <ul style="list-style-image:url(img/1.png)">
            <li><a href="#"><form action="show_Aophong" method="get">??o ph??ng</form></a></li>
            <li><a href="#"><form action="show_Somi" method="get">??o s?? mi</form></a></li>
            <li><a href="#"><form action="show_Maconha" method="get" >????? m???c ??? nh??</form></a></li>
            <li><a href="#"><form action="show_Phukien" method="get">ph??? ki???n</form></a></li>
            <li><a href="#"><form action="show_Quanvai" method="get">qu???n v???i</form></a></li>
            <li><a href="#"><form action="show_Chanvay" method="get">ch??n v??y</form></a></li>
            <li><a href="#"><form action="show_Quanjeans" method="get">qu???n jeans</form></a></li>
            <li><a href="#"><form action="show_Quankhaki" method="get">qu???n khaki</form></a></li>
          </ul>
        </div>
        <br />

        <div class="menu1">
          <h3 style="padding-top: 5px">S???N PH???M ?????C BI???T</h3>
          <img src="img/icon2.png" />
          <ul style="list-style-image:url(img/1.png)">
              <li><a href="javascript: submitform()"><form name="myform" action="show_Aokhoacgio" method="get">??o kho??c gi??</form></a></li>
            <li><a href="#"><form action="show_Aolongcuu" method="get">??o l??ng c???u</form></a></li>
            <li><a href="#"><form action="show_Aolen" method="get">??o len</form></a></li>
            <li><a href="#"><form action="show_Docla" method="get">SP ?????c l???</form></a></li>
          </ul>
        </div>
        <br />


        <div class="menu2" align="center">
          <h3>H??? TR??? TR???C TUY???N</h3>
          <img src="img/icon2.png" />
          <p> Co-Fouder</p>
          <a href="https://www.facebook.com/nguyengianduong"><img src="img/bean.jpg" width="140px" height="150px" /></a>
          <p> ??i???n Tho???i : 03636 05262</p>
          <hr />
        </div>
      </aside>

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
    <script src="JS/main.js"></script>

</html>
