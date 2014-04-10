﻿<%
/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 * 
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%> 
 <%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<%@ page import="javax.portlet.PortletPreferences" %>

<portlet:defineObjects />

<%

PortletPreferences prefs = renderRequest.getPreferences();

String greeting = (String)prefs.getValue("greeting", "Ola! Bem vindo ao portal.");
String mensagem = (String)prefs.getValue("mensagem", "");

%>

<p><%= greeting %></p>

<portlet:renderURL var="editGreetingURL">

    <portlet:param name="jspPage" value="/edit.jsp" />

</portlet:renderURL>
<p><%= mensagem %></p>

<p>Greeting variável: <%= greeting %></p>

<p><a href="<%= editGreetingURL %>">Editar saudação</a></p>

 

