<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page import="jee.support.constants.*" %>
<!DOCTYPE html>
<html lang="en">

<!-- 201635020603 ������ ��¼����-->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>������� :: �û���¼</title>
    <!-- Bootstrap -->
    <link rel="stylesheet"
          href="${cx}/resource/static/assets/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="${cx}/resource/static/assets/font-awesome/4.7.0/css/font-awesome.css">
    <!-- Metis core stylesheet -->
    <link rel="stylesheet"
          href="${cx}/resource/static/bootstrap-adim/main.css">
    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="${cx}/resource/static/assets/onoffcanvas/onoffcanvas.min.css">
    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="${cx}/resource/static/assets/animate.css/animate.css">
</head>
<body class="login">
<!-- ���������� -->
<header class="navbar navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header" >
            <a class="navbar-brand warning" href="#">
                <span class="glyphicon glyphicon-leaf"></span>
                �������ѧ����Ϣ����ϵͳ
            </a>
        </div>
        <ul class="nav navbar-nav navbar-right">

            <li><a href="#"><span
                    class="glyphicon glyphicon-book"></span>����</a></li>
        </ul>
    </div>
</header>

<div class="form-signin">
    <div class="text-center">
        <%--${cx}�����ȡweb��Ŀ¼--%>
        <img src="${cx}/resource/static/img/logo.png" alt="�������">
    </div>
    <hr>
    <%--��¼����--%>
    <div class="tab-content">
        <div id="login" class="tab-pane active">
            <%--�ύ��ָ���ĵط�--%>
            <form action="${cx}/login" method="POST">
                <p class="text-muted text-center">
                    �����������˺ź�����
                </p>

                <%--�˺���֤ʧ��--%>
                <c:if test="${login_status eq OpCode.INVALID_USER}">
                <div class="alert alert-danger">
                        �û������������,����������
                </div>
                </c:if>

                <input  name="adminname" type="text" value="" placeholder="�������û���"
                       class="form-control top">
                <input name="password" type="password" placeholder="����������"
                       class="form-control bottom">

                <div class="checkbox">
                    <label>
                        <input type="checkbox">��ס��
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block"
                        type="submit">��½</button>
            </form>
        </div>
        <%--ע�����--%>
        <div id="forgot" class="tab-pane">
            <%--�ύ��ָ���ĵط�--%>
            <form action="index.html">
                <p class="text-muted text-center">������ע���Email��ַ</p>
                <input type="email" placeholder="mail@domain.com" class="form-control">
                <br>
                <button class="btn btn-lg btn-danger btn-block"
                        type="submit">��������</button>
            </form>
        </div>
        <div id="signup" class="tab-pane">
            <%--�ύ��ָ���ĵط�--%>
            <form action="index.html">
                <input type="text" placeholder="�����û���" class="form-control top" id="adminnameResult">

                <input type="email" placeholder="����email��ַ(mail@domain.com)"
                       class="form-control middle">
                <input type="password" placeholder="��������"
                       class="form-control middle">
                <input type="password" placeholder="�ٴ���������"
                       class="form-control bottom">
                <button class="btn btn-lg btn-success btn-block"
                        type="submit">ע��</button>
            </form>
        </div>
    </div>
    <hr>
    <div class="text-center">
        <ul class="list-inline">
            <li><a class="text-muted" href="#login" data-toggle="tab">��¼</a></li>
            <li><a class="text-muted" href="#forgot" data-toggle="tab">�һ�����
            </a></li>
            <li><a class="text-muted" href="#signup" data-toggle="tab">ע���˺�
            </a></li>
        </ul>
    </div>
</div>

<!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
<script src="${cx}/resource/static/assets/jquery/jquery-2.1.4.min.js"></script>
<!-- Bootstrap ���� JavaScript �ļ� -->
<script src="${cx}/resource/static/assets/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
    (function($) {
        $(document).ready(function() {
            $('.list-inline li > a').click(function() {
                var activeForm = $(this).attr('href') + ' > form';
                //console.log(activeForm);
                $(activeForm).addClass('animated fadeIn');
                //set timer to 1 seconds, after that, unload the animate animation
                setTimeout(function() {
                    $(activeForm).removeClass('animated fadeIn');
                }, 1000);
            });
        });
    })(jQuery);
    //����Ƿ�����ظ�ǰ�˵��û���
    $(document).ready(function () {
        $("#signup :input[name='adminname']").blur(function () {
            //����ajax����
            var value=$(this).val();
            $.ajax({
                method:'POST',//�ύ�ķ���ΪPOST
                url:'${cx}/checkAdminname',//��������URL·��
                data:JSON.stringify({adminname:value}),
                contentType:'application/json',
                success:function (result) {//�ɹ���ķ���
                    //�û����Ϸ�
                    if(result=="OK"){
                        ${"#adminnameResult"}.removeClass()
                            .addClass("alert alert-success")
                            .show().html("���û�����ʹ��");
                    }else {
                        ${"#adminnameResult"}.removeClass()
                            .addClass("alert alert-danger")
                            .show().html("���û��Ѿ����ڣ�������������������");
                        $("#signup :input[name='adminname']")[0].focus();
                    }
                },
                error:function () {
                    alert("alert����ִ��ʧ��");
                }
            })
        })
    });
</script>
</body>

</html>