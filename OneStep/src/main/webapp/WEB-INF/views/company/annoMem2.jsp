<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="layout-px-spacing">
	<div class="row layout-top-spacing">
		<div class="apps-ticket col-xl-12 col-lg-12 col-md-12"
			style="margin: 0 auto;">
			<div class="widget-content widget-content-area br-6">
				<div class="row">
					<div class="col-xl-12 col-md-12 layout-spacing">
						<div class="notifications-table-widget">
							<div class="widget-heading" style="text-align: center;">
								<h3
									style="text-align: center; font: bold; height: 80px; line-height: 80px; border-radius: 10px">평가완료
									지원자관리</h3>
								<!-- 								<h5 class="">평가완료 지원자관리</h5> -->
							</div>
							<div class="widget-content">
								<div class="table-responsive" id="parentDiv">
									<form action="/company/applyResultUpdate" method="post">
										<table class="table table-hover" style="table-layout: fixed;">
											<thead>
												<tr align="center">
													<th><div class="th-content">공고명</div></th>
													<th><div class="th-content">지원자이름</div></th>
													<th><div class="th-content">종료날짜</div></th>
													<th><div class="th-content">학력</div></th>
													<th><div class="th-content">기술</div></th>
													<th><div class="th-content">경력</div></th>
													<th><div class="th-content">자격증</div></th>
													<th><div class="th-content">어학</div></th>
													<th><div class="th-content">대외활동</div></th>
													<th><div class="th-content">포트폴리오</div></th>
													<th><div class="th-content">가산점</div></th>
													<th><div class="th-content">점수 평균</div></th>
													<th><div class="th-content">상태</div></th>
												</tr>
											</thead>

											<tbody id="tbody">
												<c:forEach items="${member}" var="member" varStatus="stat">

													<c:if test="${member.applyList[0].applyStatus==2}">
														<tr>
															<td style="text-overflow: ellipsis; overflow:hidden; white-space:nowrap; "> ${member.annoList[0].annoTitle}<input
																type="hidden" id="applyId"
																value="${member.applyList[0].applyId}"
																name="evaluationList[${stat.index}].applyId">
															</td>
															<td>${member.memName}</td>
															<td style="width: 300px;"><fmt:formatDate
																	pattern="yyyy-MM-dd "
																	value="${member.annoList[0].annoEndDate}" /></td>
															<td align="right">${member.applyList[0].applySchool}</td>
															<td align="right">${member.applyList[0].applySkill}</td>
															<td align="right">${member.applyList[0].applyCareer}</td>
															<td align="right">${member.applyList[0].applyLicense}</td>
															<td align="right">${member.applyList[0].applyLanguage}</td>
															<td align="right">${member.applyList[0].applyActivities}</td>
															<td align="right">${member.applyList[0].applyPortfolio}</td>
															<td align="right">${member.applyList[0].applyPoint}</td>
															<td align="right">${member.applyList[0].applyTotal} /10.0</td>
															<td><select class="form-control"
																name="evaluationList[${stat.index}].applyResult"
																id="select">
																	<option>대기중</option>
																	<option>불합격</option>
																	<option>합격</option>
															</select></td>
														</tr>
														<c:set var="buttonFlag" value="true" />
													</c:if>

												</c:forEach>


											</tbody>

										</table>
										<c:if test="${buttonFlag==true}">
											<input class="btn btn-primary mr-2" type="submit"
												value="평가완료" style="float: right;"> 
										</c:if>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(function() {
		console.log('${member}');
		var tbody = $('#tbody');

		tbody.on(
						"change",
						"#select",
						function(event) {
							console.log(event.target.value);
							if (event.target.value == '합격') {
								var memName = event.target.parentNode.parentNode.childNodes[2].nextSibling;
								$(memName).html(
									$(memName).text()+ "<i class='fa-solid fa-heart' style='color: #ff0000;'></i>");
							}

							if (event.target.value == '불합격') {
								var memName = event.target.parentNode.parentNode.childNodes[2].nextSibling;
								console.log(memName);
								$(memName)
										.html(
												$(memName).text()
														+ '   <i class="fa-regular fa-face-sad-cry"></i>');
							}

							if (event.target.value == '대기중') {
								var memName = event.target.parentNode.parentNode.childNodes[2].nextSibling;
								console.log(memName);
								$(memName).html($(memName).text());
							}
						});

	});
</script>


