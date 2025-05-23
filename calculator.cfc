<!---
Author:Animesh Dutta (Ananya Birla)
--->
<!--- The VARIABLES scope is the default scope in ColdFusion. i.e. if a variable is declared in .cfm and .cfc
       file without explicitly prefixing a scope, or without 'var' to a variable inside a function,
       ColdFusion assigns VARIABLES scope to that variable.--->
 
<cfcomponent displayname="calculator" hint="calculator" output="false">
      <cffunction name="init" access="public">
		<cfargument name="number1" required="true">
		<cfargument name="number2" required="true">
		<cfset variables.formVal={}>
		<cfset structAppend(variables.formVal,arguments)>
		<cfreturn this>
	</cffunction>
	<cffunction name="getAdd" output="false" access="public">
		<cfset var result=0>
		<cfloop collection="#variables.formVal#" item="sum">
			<cfset result=result + variables.formVal[sum]>
		</cfloop>
		<cfreturn result>
	</cffunction>
</cfcomponent>
