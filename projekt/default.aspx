<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="projekt._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="description" content="Strona główna">
<meta name="author" content="Jakub Kasperczak">
<link rel="stylesheet" href="style.css">
    <title>Strona główna</title>
</head>
<body>
 <h1>
     Strona główna
 </h1>

 <div class = "button_bar">
     <div class="button">
         <a href="cennik.aspx">Cennik</a>
     </div>
     <div class="button">
         <a href="wyszukiwanie.aspx">Wyszukiwanie</a>
     </div>
     <div class="button">
         <a href="logowanie.aspx">Logowanie</a>
     </div>
     <div class="button">
         <a href="autor.html">Autor</a>
     </div>
     <div class="button">
         <a href="konfiguracja.aspx">Konfiguracja</a>
     </div>
</div>

<div class="content">
<script>
    var imgs = ["img/banan.png", "img/kapusta.png", "img/jablko.png"];
    var current = 0;
    var imgsAm = 3;

    function cycle() {
        if (current === imgsAm) current = 0;
        var banner = document.getElementById('Banner');
        banner.src = imgs[current];
        current++;
    }

    window.setInterval(cycle, 3000);
</script>
    
<a href="#" id="Link" target="_top">
    <img src="" id="Banner" alt="" style="width:300px; height:300px">
</a>
</div>

</body>
</html>
