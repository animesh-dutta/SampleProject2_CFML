<!---  
Author:Animesh Dutta (Ananya Birla)
index.cfm   
--->          
<cfparam name="fa" default="">  
<cfswitch expression="#fa#">
	<cfcase value="processForm">
		<cfinclude template="actions/act_processForm.cfm">
		<cflocation url="index.cfm">
	</cfcase>
	<cfdefaultcase> 
        	<cfinclude template="display/test.cfm">
    	</cfdefaultcase>
</cfswitch>
