
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="custom" />
	<g:set var="entityName" value="${warehouse.message(code: 'shipment.label', default: 'Shipment')}" />
	<title><warehouse:message code="default.delete.label" args="[entityName]" /></title>        
</head>

<body>    
	<div class="body">
		<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</g:if>


		<div class="dialog">				
			<g:form action="deleteShipment" method="post">				
				<fieldset>
					<g:render template="summary"/>						
					<g:hiddenField name="id" value="${shipmentInstance?.id}" />
					<g:hiddenField name="version" value="${shipmentInstance?.version}" />

					<div id="details" class="section">
						<table>
							<tbody>
								<%-- 
								<tr class="prop">
									<td valign="top" class="name"><label><warehouse:message
										code="shipping.shipmentNumber.label" /></label>
									</td>
									<td colspan="3" valign="top"
										class="value ${hasErrors(bean: shipmentInstance, field: 'name', 'errors')}">
										<span style="line-height: 1.5em">${shipmentInstance?.shipmentNumber}</span>
									</td>
								</tr>
								--%>
								<tr class="prop">
									<td valign="middle" class="name"><label><warehouse:message
										code="default.type.label" default="Type" /></label></td>
									<td valign="middle" class="value" nowrap="nowrap">
										<format:metadata obj="${shipmentInstance?.shipmentType}"/>
									</td>
								</tr>							
								<tr class="prop">
									<td valign="top" class="name"><label><warehouse:message
										code="shipping.name.label" default="Name" /></label>
									</td>
									<td colspan="3" valign="top"
										class="value ${hasErrors(bean: shipmentInstance, field: 'name', 'errors')}">
										${shipmentInstance?.name}
									</td>
								</tr>									
								<tr class="prop">
									<td class="name"></td>
									<td class="value">
										<warehouse:message code="shipping.confirm.deleteShipment.message"/>
									</td>
									
								</tr>
								<tr class="prop">
									<td class="name"></td>
									<td class="value left">								
										<div>
											<button type="submit" class="positive"><img
											src="${createLinkTo(dir:'images/icons/silk',file:'accept.png')}"
											 /> <warehouse:message code="default.button.delete.label"/></button>
											
											&nbsp;
											<g:link controller="shipment" action="showDetails" id="${shipmentInstance.id}">
												<warehouse:message code="default.button.cancel.label"/>
											</g:link>
											
										</div>
										
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</fieldset>
			</g:form>
		</div>
	</div>
</body>
</html>
