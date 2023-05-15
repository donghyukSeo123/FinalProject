<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 공고관리 -->
	<div class="row">
		<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
			<div class="widget ecommerce-table">
				<div class="widget-heading">
					<h5 class="">공고</h5>
				</div>
				<div class="widget-content">
					<div class="table-responsive">
						<table id="basic-dt" class="table table-hover">
							<thead>
								<tr>
									<th><div class="th-content">공고제목</div></th>
									<th><div class="th-content">회사</div></th>
									<th><div class="th-content">작성일</div></th>
									<th><div class="th-content">상세보기</div></th>
									<th><div class="th-content">신고목록</div></th>
									<th><div class="th-content">상태</div></th>
								</tr>
							</thead>
							<tbody id="tbody">
							<c:forEach items="${list }" var="list">
								<tr id="cl">
									<td>${list.annoTitle }</td>
									<td>회사</td>
									<td>작성일</td>
									<td><button type="button" class="btn btn-primary mb-2 mr-2" data-toggle="modal" data-target="#exampleModalCenter${list.memId }">상세</button></td>
									<td><button type="button" class="btn btn-primary mb-2 mr-2" data-toggle="modal" data-target="#exampleModalCenter2${list.memId }">신고목록</button></td>
									<td>
										<input type="hidden" id="memId" name="memId" value="">
										<select class="form-control" style="width:150px;" id="memStatus" name="memStatus">
											<c:choose>
												<c:when test="${list != null }">
												    <option value="1" selected="selected">일반</option>
												    <option value="2">차단</option>
												</c:when>
												<c:otherwise>
												    <option value="1">일반</option>
												    <option value="2" selected="selected">차단</option>
												</c:otherwise>
											</c:choose>
										</select>
<%-- 										<div class="modal fade" id="exampleModalCenter${list.memId }" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true"> --%>
<!-- 				                           <div class="modal-dialog modal-dialog-centered" role="document"> -->
<!-- 				                               <div class="modal-content"> -->
<!-- 				                                   <div class="modal-body"> -->
<!-- 				                                   		<table class="modal-text"> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>아이디</td> -->
<%-- 				                                   				<td>${list.memId }</td> --%>
<!-- 				                                   			</tr> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>이름</td> -->
<%-- 				                                   				<td>${list.memName }</td> --%>
<!-- 				                                   			</tr> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>닉네임</td> -->
<%-- 				                                   				<td>${list.memNick }</td> --%>
<!-- 				                                   			</tr> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>생년월일 포멧써서 바꿉시다.</td> -->
<%-- 				                                   				<td>${list.memBirth }</td> --%>
<!-- 				                                   			</tr> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>성별 if문써서 바꿉시다.</td> -->
<%-- 				                                   				<td>${list.memGender }</td> --%>
<!-- 				                                   			</tr> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>주소</td> -->
<%-- 				                                   				<td>${list.memAddr1 } ${list.memAddr2 }</td> --%>
<!-- 				                                   			</tr> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>이메일</td> -->
<%-- 				                                   				<td>${list.memEmail }</td> --%>
<!-- 				                                   			</tr> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>전화번호 -붙여봅시다.</td> -->
<%-- 				                                   				<td>${list.memTel }</td> --%>
<!-- 				                                   			</tr> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>가입일 이거도 포멧</td> -->
<%-- 				                                   				<td>${list.memStart }</td> --%>
<!-- 				                                   			</tr> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td>프리랜서일경우 if문으로 프리일경우 생성</td> -->
<!-- 				                                   				<td></td> -->
<!-- 				                                   			</tr> -->
<!-- 				                                   		</table> -->
<!-- 				                                   </div> -->
<!-- 				                                   <div class="modal-footer"> -->
<!-- 				                                       <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12"></i>닫기</button> -->
<!-- 				                                       <button type="button" class="btn btn-primary">Save</button> -->
<!-- 				                                   </div> -->
<!-- 				                               </div> -->
<!-- 				                           </div> -->
<!-- 				                       </div> -->
<%-- 										<div class="modal fade" id="exampleModalCenter2${list.memId }" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true"> --%>
<!-- 				                           <div class="modal-dialog modal-dialog-centered" role="document"> -->
<!-- 				                               <div class="modal-content"> -->
<!-- 				                                   <div class="modal-body"> -->
<!-- 				                                   		<table> -->
<!-- 				                                   			<tr> -->
<!-- 				                                   				<td></td> -->
<!-- 				                                   				<td></td> -->
<!-- 				                                   			</tr> -->
<!-- 				                                   		</table> -->
<!-- 				                                   </div> -->
<!-- 				                                   <div class="modal-footer"> -->
<!-- 				                                       <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12"></i>닫기</button> -->
<!-- 				                                       <button type="button" class="btn btn-primary">Save</button> -->
<!-- 				                                   </div> -->
<!-- 				                               </div> -->
<!-- 				                           </div> -->
<!-- 				                       </div> -->
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>