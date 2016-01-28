<%-- 
    Document   : mainMenu
    Created on : 20.01.2016, 16:04:04
    Author     : VGLukin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <script type="text/javascript" src="../lib/jquery.js"></script>
    </head>
    <body>
        <!--<form id="mainMenuForm">-->
        <ul id="mainmenu"> 
            <li value="1">  <a href="#"> Спорт         </a></li>
            <li value="2">  <a href="#"> Кино          </a></li>
            <li value="3">  <a href="#"> Магазины      </a></li>           
            <li value="4">  <a href="#"> Искусство     </a></li>
            <li value="5">  <a href="#"> Хай-тек       </a></li>
            <li value="6">  <a href="#"> Наука         </a></li>
            <li value="7">  <a href="#"> Юмор          </a></li>
            <li value="8">  <a href="#"> Политика      </a></li>
            <li value="9">  <a href="#"> Музыка        </a></li>
            <li value="10"> <a href="#"> Авто и мото   </a></li>
            <li value="11"> <a href="#"> Информатика   </a></li>
            <li value="12"> <a href="#"> Мода          </a></li>
            <li value="13"> <a href="#"> Красота       </a></li>
            <li value="14"> <a href="#"> Природа       </a></li>
            <li value="15"> <a href="#"> История       </a></li>
        </ul> 
        <!--        </form>-->

        <script type="text/javascript">
            $(document).ready(function () {
                $('li').click(function () {
                    $.ajax({
                        type: 'POST',
                        url: "../partjsp/center.jsp",
                        data: "idrubric=" +$(this).val(),
                        success: function (html) {
                            $("#content_center").html(html);
                        }
                    });
                    return false;
                });
            });
        </script>


    </body>
</html>
