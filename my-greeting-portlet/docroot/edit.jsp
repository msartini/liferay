<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>

<%@ page import="com.liferay.portal.kernel.util.ParamUtil" %>
<%@ page import="com.liferay.portal.kernel.util.Validator" %>
<%@ page import="javax.portlet.PortletPreferences" %>
<portlet:defineObjects />

<%
PortletPreferences prefs = renderRequest.getPreferences();

String greeting = (String)prefs.getValue(
    "greeting", "Hello! Welcome to our portal.");

String mensagem = (String)prefs.getValue("mensagem", "");
%>

<liferay-ui:success key="success" message="Greeting saved successfully!" />
<liferay-ui:error key="error" message="Sorry, an error prevented saving your greeting" />


<liferay-ui:error key="error" message="Sorry, an error prevented saving your greeting" />

<portlet:actionURL var="editGreetingURL" name="setGreeting">
    <portlet:param name="jspPage" value="/edit.jsp" />
</portlet:actionURL>


<aui:form action="<%= editGreetingURL %>" method="post">
    <aui:input label="greeting" name="greeting" type="text" value="<%= greeting %>" />
    <aui:button type="submit" />
</aui:form>

<portlet:renderURL var="viewGreetingURL">
    <portlet:param name="jspPage" value="/view.jsp" />
</portlet:renderURL>

<p><%= mensagem %></p>

<p><a class="linkBack"  href="<%= viewGreetingURL %>">← Back</a></p>

<script>

AUI().use('aui-node', 'event', 'node', function (A) {
	  
	 
	  
		debugger;
    //A.one('.linkBack').placeAfter('<p>Especially when they are filled to the brim!</p>');
    
    A.one('.linkBack').on('click', function(){
		console.log("Entrou no click do link");
    });
    
    debugger;
    
 

});

</script>


 