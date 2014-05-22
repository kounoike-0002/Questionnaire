<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Insert title here</title>
    </head>
    <body>
        <h1>あなたのアンケート内容</h1><br>
        <%
            request.setCharacterEncoding("utf-8");
        %>
        <%
            String sex = "男";
            if(request.getParameter("sex").equals("W")){
                sex = "女";
            }
            String occupation = "";
            String s = request.getParameter("occupation");
            int i = Integer.parseInt(s);
            switch(i){
            case 1:
                occupation = "公務員";
                break;
            case 2:
                occupation = "学生";
                break;
            case 3:
                occupation = "会社員";
                break;
            case 4:
                occupation = "社長";
                break;
            case 5:
                occupation = "総理大臣";
                break;
            case 6:
                occupation = "パイロット";
                break;
            case 7:
                occupation = "大統領";
                break;
            case 8:
                occupation = "宇宙飛行士";
                break;
            case 9:
                occupation = "無職";
                break;
            case 10:
                occupation = "その他";
                break;
            }
        %>
           性別:<%= sex %><br>
           年齢:<%= request.getParameter("old") %>歳<br>
           職業:<%= occupation %><br>
           今の気分:<%= request.getParameter("text") %><br>
    </body>
</html>