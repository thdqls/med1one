<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style type="text/css">
.custom-input {
  width: 100px; /* 원하는 길이로 설정 */
}
</style>
dd

<div class="modal fade" id="depadd2" tabindex="-1"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
            <div class="modal-content">
            
                <div class="modal-header">
                    <h5 class="modal-title  fw-bold" id="depaddLabel">발주하기</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                
                <div class="modal-body">
                    <div class="deadline-form">
                        <form>
                            <div class="mb-3" >
									<label for="exampleDataList" class="form-label">비품명</label> 
									<input type="text" class="form-control">
<!-- 									<datalist id="datalistOptions"> -->
<%-- 										<c:forEach items="${fixList }" var="fix"> --%>
<%--                                     			<option value="${fix.fxtrsNm}" label="${fix.fxtrsCode}" id="nmArea"/> --%>
<%--                                     		</c:forEach> --%>
<!-- 									</datalist> -->
								</div>
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">비품코드</label>
                       			<input type="text" class="form-control" id="cdArea">
                    		</div>
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">비품구분</label>
                      	  		<form action="">
                      	  			<input type="text" class="form-control" id="seArea">
<!-- 										<select class="form-select form-select-sm" aria-label=".form-select-sm example"> -->
<%--                                     		<c:forEach items="${fixDtlList }" var="fixClass"> --%>
<%--                                     			<option value="${fixClass.fxtrsSe }" label="${fixClass.fxtrsSe }"  /> --%>
<%--                                     		</c:forEach> --%>
<!-- 										</select> -->
									</form>
                    		</div>
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">주문수량</label>
                       			<form>
                       				<div>
	                      	  		<input type="button" value="-" onclick="javascript:this.form.amount.value--;">
	                       			<input type="text" id="exampleFormControlInput1111" name="amount" value="0" style="text-align: center; width: 20%;">
	                      	  		<input type="button" value="+" onclick="javascript:this.form.amount.value++;">
                       				</div>
                      	  		</form>
                    		</div>
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">단가</label>
                       			<input type="text" class="form-control" id="exampleFormControlInput1111">
                    		</div>
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">총금액</label>
                       			<input type="text" class="form-control" id="exampleFormControlInput1111">
                    		</div>
                    		<div class="mb-3">
                      	  		<label for="exampleFormControlInput1111" class="form-label">담당자</label>
                       			<input type="text" class="form-control" id="exampleFormControlInput1111">
                    		</div>
                        </form>
                        
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                    <button type="submit" class="btn btn-primary">발주요청</button>
                </div>
            </div>
            </div>
        </div> <!--비품발주하기 end  -->