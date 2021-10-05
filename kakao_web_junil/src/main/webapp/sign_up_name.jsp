<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카카오계정 만들기</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/sign_up.css">
</head>

<body>
    <div class="container">
        <div class="inner_container">
            <jsp:include page="sign_up_include/sign_up_header.jsp"></jsp:include>
            <main>
                <div class="warp_form">
                    <form action="">
                        <div class="navigation_wrap">
                            <progress class="bar_navigation" value="80" max="100"></progress>
                        </div>
                        <h2>카카오계정 가입을 위해<br>
                            이름을 입력해 주세요.</h2>
                        <div class="item_tf">
                            <input type="text" class="item_ip" placeholder="이름 입력">
                        </div>
                        <div class="confirm_btn">
                            <button class="btn_g" onclick="location.href='sign_up_phone.html'; return false;">다음</button>
                        </div>
                        

                    </form>
                </div>
            </main>
            <jsp:include page="sign_up_include/sign_up_footer.jsp"></jsp:include>
        </div>
    </div>
</body>

</html>