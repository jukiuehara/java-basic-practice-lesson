<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// ※必要な処理を実装してください
String a1 = request.getParameter("num1");
String a2 = request.getParameter("num2");

// 入力値取得

// 表示するメッセージ用の変数

// メッセージ作成
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
	width: 80px;
}
</style>
</head>
<body>

	<h1>Java基礎 - 演習問題3(発展)</h1>
	<h2>四則演算</h2>

	<p>
		<!-- メッセージの表示  -->
		<%
		if (a1 == null) {
			out.println("数値を入力してください");
		} else if ("".equals(a1) && "".equals(a2)) {
			out.println("数値が両方とも未入力です");
			a1 = "0";
			a2 = "0";

		} else if ("".equals(a1) || "".equals(a2)) {
			out.println("数値を入力してください");
		} else if (!("".equals(a1) || "".equals(a2))) {

			String count = request.getParameter("operator");
			count = "add";

			int a = Integer.parseInt(a1);
			int b = Integer.parseInt(a2);

			switch (count) {
			case "add":
				out.println(a + "+" + b + "=" + (a + b));
				break;
			case "sub":
				out.println(a + "-" + b + "=" + (a - b));
				break;
			case "mul":
				out.print(a + "×" + b + "=" + (a * b));
				break;
			case "div":
				out.print(a + "÷" + b + "=" + (a / b));
				break;

			}

		}
		%>

	</p>

	<form action="javaBasicDev3.jsp" method="post">
		<input type="number" min="1" max="999999" class="number" name="num1">
		<select name="operator">
			<option value="add">＋</option>
			<option value="sub">ー</option>
			<option value="mul">×</option>
			<option value="div">÷</option>
		</select> <input type="number" min="1" max="999999" class="number" name="num2">
		<button type="submit">計算</button>
	</form>
</body>
</html>