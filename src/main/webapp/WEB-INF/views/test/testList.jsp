<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greencampGoodsList</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

<style>
.goodstype {
	background-color: #d7ccc8;
	width: 68px;
	border-right: 1px solid #616161;
}
.goodstype ul li{
	list-style-type: none;
	padding: 10px;
	margin: 0px auto;
}
.goodsemenu {
	padding: 0px;
}
.goodscontent {
	margin-top: 97px;
	display: flex;
	flex-direction:row;
	flex-wrap: nowrap;
	justify-content: space-between;
	height: 75vh;
	border-top: 1px solid #616161;
}
.goodslist {
	background-color: #f1f8e9;
	width: 40%;
	height: 100%;
}
.goodsinfo{
	background-color: #e1f5fe;
	width: 60%;
	overflow: scroll;
	height: 100%;
	padding-left: 50px;
	overflow-x: hidden;
	border-left: 1px solid #616161;
}
.goodsinfo::-webkit-scrollbar {
	position: absolute;
    right: 0px;
    min-height: 5px;
    width: 2px;
    opacity: 0;
    -webkit-transition: opacity 0.2s linear;
    -moz-transition: opacity 0.2s linear;
    -o-transition: opacity 0.2s linear;
    -ms-transition: opacity 0.2s linear;
    transition: opacity 0.2s linear;
    -webkit-background-clip: padding-box;
}
.goodsinfoul li{
	list-style-type: none;
	float: left;
	margin-right: 30px;
}
.goodsinfo_update_btn {
	margin-right: 30px;
}
.goodsinfoview {
	margin: 30px;
}
.goodsinfo_content {
	margin: 30px;
}
.goodsinfo_comment{
	margin: 30px;
}
.goodswrite {
	background-color: #dcedc8;
	height: 50px;
}
.goodscard{
	overflow: scroll;
	height: 88%;
	padding: 30px;
	overflow-x: hidden;
	border-top: 1px solid #616161;
}
.goodscard::-webkit-scrollbar {
	position: absolute;
    right: 0px;
    min-height: 5px;
    width: 2px;
    opacity: 0;
    -webkit-transition: opacity 0.2s linear;
    -moz-transition: opacity 0.2s linear;
    -o-transition: opacity 0.2s linear;
    -ms-transition: opacity 0.2s linear;
    transition: opacity 0.2s linear;
    -webkit-background-clip: padding-box;
}
.sort {
	height: 100%;
    line-height: 30px;
    color: #333;
    font-size: 11px;
    display: inline-block;
    padding: 10px;
    text-align: center;
}
.sort:hover {
	color: #fff;
    background: #e1bee7;
    font-weight: 700;
}
/*--------------------------????????? css??????------------------------------*/
#btn_goodsadd {display: none;}
.goodsadd {margin: auto;padding: 50px;font-family: 'noto sans kr';width: 50%;height: 96%;
overflow: auto;top: 1%;left:25%;background: white;position: fixed;z-index: 999;visibility: hidden;}
.goodsadd table{margin:0px auto;margin-top: 20px;margin-bottom: 20px;}
.goodsaddtable th{text-align: center;}
.goodsaddtable tr{padding: 10px;}
.goodsadd li{list-style: none;}
.goodsaddbackground {position: fixed;top: 0;left: 0;width: 100%;height: 100%;
background: rgba(0,0,0,.3);transition: all .35s;opacity: 0;visibility: hidden;z-index: 998;}
body input[id="btn_goodsadd"]:checked + label + div{visibility: visible;}
body input[id="btn_goodsadd"]:checked ~ .goodsaddbackground{opacity:1;visibility: visible;}
/*--------------------------????????? css???------------------------------*/
/*--------------------------????????? css??????------------------------------*/
#btn_goodsupdate {display: none;}
.goodsupdate {margin: auto;padding: 50px;font-family: 'noto sans kr';width: 50%;height: 96%;
overflow: auto;top: 1%;left:25%;background: white;position: fixed;z-index: 999;visibility: hidden;}
.goodsupdate table{margin:0px auto;margin-top: 20px;margin-bottom: 20px;}
.goodsupdatetable th{text-align: center;}
.goodsupdatetable tr{padding: 10px;}
.goodsupdate li{list-style: none;}
.goodsupdatebackground {position: fixed;top: 0;left: 0;width: 100%;height: 100%;
background: rgba(0,0,0,.3);transition: all .35s;opacity: 0;visibility: hidden;z-index: 998;}
body input[id="btn_goodsupdate"]:checked + label + div{visibility: visible;}
body input[id="btn_goodsupdate"]:checked ~ .goodsupdatebackground{opacity:1;visibility: visible;}
/*--------------------------????????? css???------------------------------*/
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div class="goodscontent">
	<div class="goodstype" align="center"><!-- ????????? ???????????? ?????? -->
		<ul class="goodsemenu">
			<li><a href="./goods.pi"><img src="assets/img/list.png" alt="??????" width="40px" height="40px"></a></li>
			<li><a href="./goods.pi?delngtp=?????????"><img src="assets/img/?????????.png" alt="?????????" width="40px" height="40px"></a></li>
			<li><a href="./goods.pi?delngtp=?????????"><img src="assets/img/?????? ???.png" alt="?????????" width="40px" height="40px"></a></li>
		</ul>
	</div>
	
	
	<div class="goodslist"><!-- ???????????? ???????????? ???????????? ?????? -->
		<div class="goodswrite">
				<span class="sort">?????????</span>
				<span class="sort">?????????</span>
				<span class="sort">?????????</span>
			<input type="checkbox" id="btn_goodsadd">
			<label for="btn_goodsadd">
				<span class="badge bg-primary">?????????</span>
			</label>
				<div class="goodsadd">
				<form name="goodsWrite" action="goodsWrite.pi" method="post">
					<div>
						<h2>???????????? ?????????</h2>
					</div>
					<hr>
					<div>
						<table class="goodsaddtable goodsaddtable-sm">
							<tr>
								<th>??????</th>
								<td align="center">
									<input type="radio" name="delngtp" value="?????????." checked>?????????
									<input type="radio" name="delngtp" value="?????????.">?????????
								</td>
							</tr>
							<tr>
								<th>??????</th>
								<td><input type="text" name="sj" style="width:100%;"></td>
							</tr>
							<tr>
								<th>????????????</th>
								<td>
									<input type="checkbox" name="how" class="deal" value="?????????">?????????
									
								</td>
							</tr>
							<tr>
								<th>??????</th>
								<td><input type="text" name="pc"></td>
							</tr>
							<tr>
								<th>????????????</th>
								<td><input type="text" name="addr"></td>
							</tr>
							<tr>
								<th>?????????</th>
								<td><input type="tel" name="telno"></td>
							</tr>
							<tr>
								<th>??????</th>
								<td><input type="file" name="img"></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><textarea rows="10" cols="70" name="cn"></textarea></td>
							</tr>
						</table>
					</div>
					<div align="center">
						<input type="submit" class="btn btn-info" value="????????????">
						<input type="reset" class="btn btn-secondary" value="????????????">
					</div>
				</form>
				</div>
			<label for="btn_goodsadd" class="goodsaddbackground"></label><!-- ????????? ?????? ?????? -->
		</div>
		<div class="goodscard">
			<div class="row row-cols-1 row-cols-md-2 g-4">
				<%for(int i=0;i<15;i++){ %>
					<div class="col">
						<div class="card h-90">
							<img src="assets/img/about.jpg" class="card-img-top" alt="..." style="max-width: 250px;">
							<div class="card-body">
								<h5 class="card-title">??????</h5>
								<p class="card-text">??????</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">?????????</small>
							</div>
						</div>
					</div>
					<%} %>
			</div>
		</div>
	</div>
	
	<div class="goodsinfo"><!-- ????????? ????????? ???????????? ?????? -->
		
		<div class="goodsinfoview">
			<div>
				<h2>????????? ????????? ???????????????.</h2>
				<hr>
			</div>
			<div>
				<ul class="goodsinfoul">
					<li>?????????</li>
					<li>?????????</li>
					<li>?????? ???</li>
					<li>?????? ???</li>
				</ul>
				<div class="goodsinfo_update_btn" align="right">
					<span>?????? | ?????? | </span>
					<input type="checkbox" id="btn_goodsupdate">
						<label for="btn_goodsupdate">
							<span class="badge bg-primary">??????</span>
						</label>
					<div class="goodsupdate">
						<form name="goodsupdatefm" action="#">
						<div>
							<h2>???????????? ???????????????</h2>
						</div>
						<hr>
						<div>
							<table class="goodsupdatetable goodsupdatetable-sm">
								<tr>
									<th>??????</th>
									<td><input type="text" name="sj" style="width:100%;" readonly></td>
								</tr>
								<tr>
									<th>????????????</th>
									<td>
										<input type="checkbox" name="how" value="?????????">?????????
										<input type="checkbox" name="how" value="????????????">????????????
									</td>
								</tr>
								<tr>
									<th>??????</th>
									<td><input type="text" name="pc"></td>
								</tr>
								<tr>
									<th>????????????</th>
									<td><input type="text" name="addr"></td>
								</tr>
								<tr>
									<th>?????????</th>
									<td><input type="tel" name="telno"></td>
								</tr>
								<tr>
									<th>??????</th>
									<td><input type="file" name="img"></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><textarea rows="10" cols="70" name="cn"></textarea></td>
								</tr>
							</table>
						</div>
						<div align="center">
							<input type="submit" class="btn btn-info" value="????????????">
							<input type="reset" class="btn btn-secondary" value="????????????">
						</div>
						</form>
					</div>
					<label for="btn_goodsupdate" class="goodsupdatebackground"></label><!-- ????????? ?????? ?????? -->
				</div>
			</div>
				
				<hr>
			</div>
			<div class="goodsinfo_content">
				????????? ????????? ???????????????.
			</div>
			<div class="goodsinfo_comment">
				<div>????????????</div>
				<div align="center">
					<textarea class="" rows="5" cols="100" style="background-color:#ede7f6; width: 100%;"></textarea>
				</div>
				<div>
					<input type="button" value="??????">
				</div>
				<div>
					?????? (???)
				</div>
				<div>
					<div>
						????????? ????????? ??????
					</div>
					<div>
						????????? | ?????????
					</div>
					<div>
						????????? ????????? ??????
					</div>
					<div>
						?????? (???)
						<div>
							????????? ????????? ??????
						</div>
						<div>
							????????? | ?????????
						</div>
						<div>????????? ????????? ??????</div>
					</div>
				</div>
			</div>
	</div>
	
</div>
<div class="footer">footer ????????? ??????</div>
</body>
</html>