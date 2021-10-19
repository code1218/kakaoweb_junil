<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>뉴스</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mainNav.css">
    <link rel="stylesheet" href="css/notice_dtl.css">
</head>
<body>
    <div class="container">
        <jsp:include page="include/index_include/index_header.jsp"></jsp:include>
        <main>
            <div class="notice_dtl_main">
                <ul class="nd_header_ul">
                    <li>${notice.notice_title }</li>
                </ul>
                <ul class="nd_info_ul">
                    <li>작성자</li>
                    <li>${notice.notice_writer }</li>
                    <li>작성일</li>
                    <li>${notice.notice_date }</li>
                    <li>조회수</li>
                    <li>${notice.notice_count }</li>
                </ul>
                <ul class="nd_content_ul">
                    <li>
                        <pre>${notice.notice_content }</pre>
                    </li>
                </ul>
            </div>
            <div class="notice_dtl_footer">
                <div class="nd_footer_buttons">
                    <button type="button" class="notice_list_button">목록</button>
                    <button type="button" class="notice_update_button">수정</button>
                    <button type="button" class="notice_delete_button">삭제</button>
                </div>
                <div class="nd_footer_pre_next">
                	<ul class="nd_footer_next">
                        <li class="next_title">다음 글</li>
                        <a href="notice-dtl?code=${notice.nextNotice_code }"><li>${notice.nextNotice_title }</li></a>
                    </ul>
                    <ul class="nd_footer_pre">
                        <li class="pre_title">이전 글</li>
                        <a href="notice-dtl?code=${notice.preNotice_code }"><li>${notice.preNotice_title }</li></a>
                    </ul>
                </div>
            </div>
        </main>
        <footer>

        </footer>
    </div>
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
</body>
</html>