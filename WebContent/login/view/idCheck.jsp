<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>���̵� �ߺ� üũ</title>
    <script src="/docoding/js/join.js"></script>
    <script type="text/javascript"></script>
    
    <style type="text/css">
        #wrap {
            width: 490px;
            text-align :center;
            margin: 0 auto 0 auto;
        }
        
        #chk{
            text-align :center;
        }
        
        #cancelBtn{
            visibility:visible;
        }
        
        #useBtn{
             visibility:hidden;
        }
 
   </style>  
</head>
<body onload="pValue()">
<div id="wrap">
    <br>
    <b><font size="6" color="sky blue">���̵� �ߺ�üũ</font></b>
    <hr size="1" width="460">
    <br>
    <div id="chk">
        <form id="checkForm">
            <input type="text" name="idinput" id="userId">
            <input type="button" value="�ߺ�Ȯ��" name="idcheck"  style="background-color: orange">
        </form>
        <div id="msg"></div>
        <br>
        <input id="cancelBtn" type="button" value="���" onclick="window.close()" style="background-color: orange"><br>
        <input id="useBtn" type="button" value="����ϱ�" onclick="sendCheckValue()" style="background-color: orange">
    </div>
</div>    
</body>
</html>