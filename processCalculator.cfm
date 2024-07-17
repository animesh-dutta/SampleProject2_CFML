<cfinclude template="calculator.cfm">

<cfif  len(form.number1) gt 0 and len(form.number2) gt 0 >
	<cfif isnumeric(form.number1) and isnumeric(form.number2)>
		<cfset variables.formVal={}>
		<cfset formVal.number1=form.number1>
		<cfset formVal.number2=form.number2>
		<cfset calculatorObject=createobject("component","calculator").init(argumentCollection=formVal)>
		Result::<cfoutput>#calculatorObject.getAdd()#</cfoutput>
	<cfelse>
	<p style="color:red">The field values must be numeric</p>
	</cfif>
<cfelse>
	<p style="color:red">The field values can not be blank</p>
</cfif>
