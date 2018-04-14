<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="static/javascripts/common.js"></script>
<section role="main" class="content-body">
	<header class="page-header">
		<h2>
			<spring:message code="PATIENT.MANAGEMENT.TITLE" />
		</h2>
		<%-- <div class="right-wrapper pull-right">
			<ol class="breadcrumbs">
				<li> <a href="./"> <i class="fa fa-home"></i></a></li>
				<li><span><spring:message code="PROPERTY.MNGMNTTREATMENTPLANT.TITLE" /></span></li>
			</ol>
		</div> --%>
	</header>

	<%@ include file="/WEB-INF/view/message.jsp"%>
<div class="panel-body" style="display:${sectionHead}">
					<div class="col-md-12">
						<form class="form-horizontal form-bordered" id="createSample" action="./createSample.htm" method="post">
											
						<div class="row">
						<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.1STRESULT" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="result1stSample" id="result1stSample" value="${treatmentPlantById.itemName}" maxlength="100" onchange ="validateNameAndCode(this)"  /> 
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.1STACTION" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="action1stSample" id="action1stSample" value="${treatmentPlantById.HSN}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.2NDRESULT" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="result2ndSample" id="result2ndSample" value="${treatmentPlantById.result2ndSample}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.2NDACTION" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="action2ndSample" id="action2ndSample" value="${treatmentPlantById.action2ndSample}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
								</div>
								<div class="row">
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.3RDRESULT" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="result3rdSample" id="result3rdSample" value="${treatmentPlantById.result3rdSample}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.3RDACTION" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="action3rdSample" id="action3rdSample" value="${treatmentPlantById.action3rdSample}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.4THRESULT" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="result4thSample" id="result4thSample" value="${treatmentPlantById.result4thSample}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.4THACTION" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="action3rdSample" id="action3rdSample" value="${treatmentPlantById.action3rdSample}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
						</div>
						<div class="row">
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.SAMPLEDATE" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="sampleDate" id="sampleDate" value="${treatmentPlantById.result3rdSample}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.DUEDATE" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="sampleDueDate" id="sampleDueDate" value="${treatmentPlantById.sampleDueDate}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-3">
									<div class="form-group">
										<label class="col-md-12 required" for="inputDefault"> <spring:message code="PATIENT.SAMPLE.TELSMSDATE" /></label>
										<div class="col-md-12">
											<input type="text" class="form-control" name="telSmsDate" id="telSmsDate" value="${treatmentPlantById.telSmsDate}"  maxlength="20" onchange ="validateNameAndCode(this)" /> 
										</div>
									</div>
								</div>
							</div>
							<%-- <!-- ----------------Budu---- -->
							<div id="petitioner" class="tab-pane">
					<div class="row">
					
											<h4><b>
									Item Details
								</b></h4>
							<div class="table-responsive">
								<table class="table table-striped mb-none" id="partnerTable">
									<thead>
										<tr>
											<th><spring:message code="PATIENT.SAMPLE.1STRESULT"/><font color="red">*</font></th>
											<th><spring:message code="PATIENT.SAMPLE.1STACTION"/></th>
											<th><i class="fa fa-plus" onclick="return addPetitioner()"></i></th>
											
										</tr>
									</thead>
									<tbody id="tbody3">
										<tr>
										   
										   										   
										    <td><input type="Text" class="form-control" id="brandId" name="itemName"></td>
																	
										
										   
										     	 <td><input type="Text" class="form-control" id="salvagevalueid" name="salvagevalue" ></td>
										   
										   
										   	</tr>
									</tbody>
								</table>
							</div>
							
							
						</div>
					
				</div>									
				<!-- --------------budu---------------------- -->		 --%>
								
							
							<div class="row">
							<button type="submit" class="btn btn-success" >
											<spring:message code="COMMON.BUTTON.SUBMIT"></spring:message>
										</button>
							</div>
							
						</form>
					</div>
				</div>	
</section>



<script type="text/javascript">


	
var cnt = 0;
var cntt = 1;
var cnttt = 1;
var cntPrayer = 1;
var cntstakeholder = 1;

function addPetitioner()
{
  cnttt++;
  
  
  var htmldata = '<tr id="row'+cnttt+'">';
  
  htmldata=htmldata+'<td><input type="Text" class="form-control" rows="1" id="salvagevalue'+cnttt+'" name="salvagevalue" ></td>'
  htmldata=htmldata+'<td><input type="Text" class="form-control" rows="1" id="brandId'+cnttt+'" name="itemName" ></td>'
  htmldata=htmldata+'<td><i class="fa fa-minus-square fa-minus" style="cursor:pointer"  aria-hidden="true" onclick="deleteRow('+cnttt+')"></td></tr>'

 
  $("#tbody3").append(htmldata);
	
}
$('body').on('focus',".jqueryNDatePicker", function(){
	    $(this).datepick();
	    
	 });
$(".jqueryNDatePicker").datepick({
	constrainInput:false,
		dateFormat: 'dd/mm/yyyy',
		showOnFocus: true,
	});

function deleteRow(val)
{
	cnttt--;
	$($("#row"+val).closest("tr")).remove();   
    
}

</script>