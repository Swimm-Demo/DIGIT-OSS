#-------------------------------------------------------------------------------
# /**
#  * eGov suite of products aim to improve the internal efficiency,transparency, 
#    accountability and the service delivery of the government  organizations.
# 
#     Copyright (C) <2015>  eGovernments Foundation
# 
#     The updated version of eGov suite of products as by eGovernments Foundation 
#     is available at http://www.egovernments.org
# 
#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program. If not, see http://www.gnu.org/licenses/ or 
#     http://www.gnu.org/licenses/gpl.html .
# 
#     In addition to the terms of the GPL license to be adhered to in using this
#     program, the following additional terms are to be complied with:
# 
# 	1) All versions of this program, verbatim or modified must carry this 
# 	   Legal Notice.
# 
# 	2) Any misrepresentation of the origin of the material is prohibited. It 
# 	   is required that all modified versions of this material be marked in 
# 	   reasonable ways as different from the original version.
# 
# 	3) This license does not grant any rights to any user of the program 
# 	   with regards to rights under trademark law for use of the trade names 
# 	   or trademarks of eGovernments Foundation.
# 
#   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
#  */
#-------------------------------------------------------------------------------
<%@ include file="/includes/taglibs.jsp" %>
<html>  
<head> 

     <title><s:text name="add.title.serviceCategory"/></title>  
</head>  
	<body>  
		<div class="subheadnew"><s:text name="add.title.serviceCategory"/></div>
		<span>
		<font  style='color: red ; font-weight:bold ' size="2">
                               <s:actionerror/>  
                               <s:fielderror />
                               </font>
          </span>
		
		<s:form action="serviceCategory" theme="simple" >  
		
			<%@ include file='serviceCategory-form.jsp'%>
				
			<div align="left" class="mandatory">* Mandatory Fields</div>
	 		
	 		<div class="buttonbottom">
	 			<s:submit name="button1" cssClass="buttonsubmit" id="button32" method="create" value="Save"/>
				<input name="button2" type="button" class="buttonsubmit" id="button" onclick="location.href='serviceCategory.action'" value="List"/>
				<s:reset name="button3" cssClass="button" id="button" value="Cancel"/>
				<input name="button4" type="button" class="button" id="button" onclick="window.close()" value="Close"/>
			</div>

 		</s:form>  
	    </body>  
</html>
