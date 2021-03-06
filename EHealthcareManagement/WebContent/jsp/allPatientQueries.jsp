<%@ page contentType="text/html"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Healthcare Management</title>
<link href="/EHealthcareManagement/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<link
	href="/EHealthcareManagement/resources/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
</head>


<body>
	<f:view>
		<h:form>
			<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container">
					<div class="navbar-header navbar-brand">
						<h:commandLink action="#{welcomeBean.goToHome}">
							<h:graphicImage value="/images/eHealthLog.png"
								style="max-width: 100%; max-height: 100%;"></h:graphicImage>
						</h:commandLink>
					</div>
					<div class="navbar-header">

						<h3 style="color: white;">EHealthcare</h3>
					</div>
					<%
						if (session.getAttribute("userfName") != null) {
					%>
					<div class="navbar-header navbar-right">
						<h:commandLink value=" Logout" style="color: white;"
							action="#{loginBean.userLogout }" />
					</div>
					<div class="navbar-header navbar-right">
						<h:commandLink value="My Home | " style="color: white;"
							action="#{loginBean.goToMyHome }" />
					</div>
					<%
						}
					%>
				</div>
			</div>
		</h:form>
		<div class="jumbotron">
			<div class="container">
				<h3>NEW QUERIES</h3>
				<h:form id="PatientQueries">
					<h:dataTable id="patientQueryTable"
						value="#{adminBean.displayQueryList}" var="patque" border="1"
						styleClass="table table-striped table-condensed table-bordered table-hover">

<%-- 
						<h:column>
							<f:facet name="header">
								<h:outputText value="Query Category" />
							</f:facet>
							<h:outputText value="#{patque.queryCategory}"></h:outputText>

						</h:column>

						<h:column>
							<f:facet name="header">
								<h:outputText value="Query Description" />
							</f:facet>
							<h:outputText value="#{patque.queryDescription}"></h:outputText>

						</h:column>

						<h:column>
							<f:facet name="header">
								<h:outputText value="Query Status" />
							</f:facet>
							<h:outputText value="#{patque.queryStatus}"></h:outputText>

						</h:column>

						<h:column>
							<f:facet name="header">
								<h:outputText value="Query Date" />
							</f:facet>
							<h:outputText value="#{patque.queryDate}"></h:outputText>

						</h:column>

						<h:column>
							<f:facet name="header">
								<h:outputText value="Doctors Reply" />
							</f:facet>
							<h:outputText value="#{patque.doctorsReply}"></h:outputText>

						</h:column>

--%>
						
						<h:column>
							<f:facet name="header">
								<h:outputText value="Query ID" />
							</f:facet>
							<h:outputText value="#{patque.queryId}"></h:outputText>
						</h:column> 
						
						 <h:column>
							<f:facet name="header">
								<h:outputText value="Patient Name" />
							</f:facet>
							<h:outputText value="#{patque.patientName}"></h:outputText>
						</h:column>
						
						<h:column>
							<f:facet name="header">
								<h:outputText value="Category" />
							</f:facet>
							<h:outputText value="#{patque.queryCategory}"></h:outputText>
						</h:column>
						
						<h:column>
							<f:facet name="header">
								<h:outputText value="Description" />
							</f:facet>
							<h:outputText value="#{patque.queryDescription}"></h:outputText>
						</h:column>
						
						<h:column>
							<f:facet name="header">
								<h:outputText value="Date Posted" />
							</f:facet>
							<h:outputText value="#{patque.queryDate}"></h:outputText>
						</h:column>
<%-- 					
						<h:column>
							<f:facet name="header">
								<h:outputText value="Doctor ID" />
							</f:facet>
							<h:outputText value="#{patque.doctorId}"></h:outputText>
						</h:column>
						
						<h:column>
							<f:facet name="header">
								<h:outputText value="Doctor Reply" />
							</f:facet>
							<h:outputText value="#{patque.doctorsReply}"></h:outputText>
						</h:column>
--%>						
					</h:dataTable>
					<br>
				<h:commandButton value="Back" action="#{loginBean.goToMyHome}" styleClass="btn btn-success"></h:commandButton>
				</h:form>
			</div>
		</div>
	</f:view>

</body>
</html>
