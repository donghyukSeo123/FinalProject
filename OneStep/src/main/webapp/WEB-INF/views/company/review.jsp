<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	$(function() {
		$('.kv-fa').rating({
			theme : 'krajee-fa',
			filledStar : '<i class="fa fa-star"></i>',
			emptyStar : '<i class="fa fa-star-o"></i>'
		});

	});
</script>

<style>
.fa-star:before{
margin-left: 3px;
}
</style>

<div class="col-xl-11 col-lg-12 col-sm-12  layout-spacing" style="margin: 0 auto;">

	<div class="widget-content widget-content-area br-6">
	<h2 style="text-align: center; font: bold;">리뷰</h2>
	<br>
		<div class="table-responsive mb-4">
			<table id="basic-dt" class="table table-hover" style="width: 100%; table-layout: fixed;">
				<thead>
					<tr>
						<th style="text-align: center; width: 50%;">한줄평</th>
						<th style="text-align: center; width: 10%;">총 점</th>
						<th style="text-align: center; width: 10%;">작성자</th>
						<th style="text-align: center; width: 10%;">작성일</th>
						<th style="text-align: center; width: 10%;">조회수</th>
						<th style="text-align: center; width: 10%;"></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${review}" var="reviewVO" varStatus="stat">
						<tr>
							<td style="text-overflow: ellipsis; overflow:hidden; white-space:nowrap; ">${reviewVO.reviewComent }</td>
							<td style="text-align: right;">${reviewVO.reviewScore } / 10</td>
							<td style="text-align: center;">${reviewVO.memId } </td>
							<fmt:formatDate value="${reviewVO.reviewStart }"
								pattern="yyyy-MM-dd" var="start" />
							<td style="text-align: center;">${start}</td>
							<td  style="text-align: right;">${reviewVO.reviewHit }</td>
							<td  style="text-align: center;"><button type="button" class="btn btn-primary "
									id="modalBtn" data-toggle="modal"
									data-target="#exampleModalCenter${reviewVO.reviewId}">
									보기</button></td>
						</tr>
						
						<div class="modal fade"
									id="exampleModalCenter${reviewVO.reviewId}" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalCenterTitle"
									aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<i class="las la-times"></i>
												</button>
											</div>
											<div class="modal-body">
												<p class="modal-text">기업 한줄평 : ${reviewVO.reviewComent }</p>
												<br>
												<p class="modal-text">기업 장점 : ${reviewVO.reviewGood }</p>
												<br>
												<p class="modal-text">기업 단점 : ${reviewVO.reviewBad }</p>
												<br><br>

												<div id="reviewScore">
												<p class="modal-text">기업 총점 :</p>
												<span>리뷰 총점</span>
												
													<input type="text" class="kv-fa rating-loading"
														value="${reviewVO.reviewScore / 2}" data-size="xs"
														title="" disabled="disabled">
												</div>
												<div id="reviewVision">
												<p class="modal-text">가능성 :</p>
												<span>가능성</span>
													<input type="text" class="kv-fa rating-loading"
														value="${reviewVO.reviewVision / 2}" data-size="xs"
														title="" disabled="disabled">
												</div>
												<div id="reviewWelfare">
												<p class="modal-text">복지 :</p>
												<span>복지</span>
													<input type="text" class="kv-fa rating-loading"
														value="${reviewVO.reviewWelfare / 2}" data-size="xs"
														title="" disabled="disabled">
												</div>
												<div id="reviewBalance">
												<p class="modal-text">워라벨 :</p>
												<span>균형</span>
													<input type="text" class="kv-fa rating-loading"
														value="${reviewVO.reviewBalance / 2}" data-size="xs"
														title="" disabled="disabled">
												</div>
												<div id="reviewCulture">
												<p class="modal-text">기업내문화 :</p>
												<span>사내문화</span>
													<input type="text" class="kv-fa rating-loading"
														value="${reviewVO.reviewCulture / 2}" data-size="xs"
														title="" disabled="disabled">
												</div>
												<div id="reviewManage">
												<p class="modal-text">경영진 :</p>
												<span>경영진</span>
													<input type="text" class="kv-fa rating-loading"
														value="${reviewVO.reviewManage / 2}" data-size="xs"
														title="" disabled="disabled">
												</div>
											</div>
											<div class="modal-footer">
												<button class="btn" data-dismiss="modal">
													<i class="flaticon-cancel-12"></i> 닫기
												</button>
											</div>
										</div>
									</div>
								</div>
					</c:forEach>
			</table>
		</div>
	</div>
</div>


