<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" taglibs="c,cms,fmt,fn" %>
<cms:formatter var="content">
	<div class="row">
	<c:set var="containers" value="${content.valueList.Container}" />
	<c:set var="containerNum" value="${cms:getListSize(containers)}" />
	<c:set var="containerCols">
		<fmt:formatNumber value="${12 div containerNum}" maxFractionDigits="0" />
	</c:set>
	<c:forEach var="container" items="${containers}">
		<div class="col-lg-${containerCols} col-md-${containerCols} 
		     col-sm-${containerCols} col-xs-${containerCols}">
			<cms:container name="${container.value.Id}" 
			               type="${container.value.Type}" 
						   editableby="${container.value.EditableBy}" 
						   tagClass="big-colored-border" param="1 of ${containerNum}">
				<h4>
					Please add content (if you have role "${container.value.EditableBy}")!
				</h4>
			</cms:container>
		</div>
	</c:forEach>
	</div>
</cms:formatter>