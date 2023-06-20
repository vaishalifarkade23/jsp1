<%
	String first=request.getParameter("FirstName");
	String last=request.getParameter("LastName");
	String gen=request.getParameter("gender");
	String course=request.getParameter("chk");
    String address=request.getParameter("fulladdress");
	String cities=request.getParameter("city");
	String state=request.getParameter("dropdown");
	String phone=request.getParameter("contact");
	String dob=request.getParameter("date");
	String mail=request.getParameter("Email");
	String pass=request.getParameter("password");
	String cpass=request.getParameter("confirmpassword");
	
	
	
	
	/*if(first.isEmpty() || last.isEmpty() || gen.isEmpty() || course.isEmpty() || address.isEmpty() || cities.isEmpty() || state.isEmpty() || phone.isEmpty() || dob.isEmpty() || mail.isEmpty() || pass.isEmpty() || cpass.isEmpty())
	{
		//it will show that ur  not fill the form so ur  on this page if i want to go next page use responce.sendRedirect()
		RequestDispatcher rd=request.getRequestDispatcher("registrationIndex.jsp");
		rd.include(request, response);
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("registrationHome.jsp");
		rd.forward(request, response);
	}*/
	
	
%>
<!-- Simple View -->

<%="First Name  : " +first %><br>
<%="Last Name  : " +last %><br>
<%="Gender  : " +gen %><br>
<%="Course  : " +course %><br>
<%="Address  : "+address %><br>
<%="City  : " +cities%><br>
<%="State  : " +state%><br>
<%="Contact  : " +phone %><br>
<%="Date of Birth  : " +dob%><br>
<%="Email  : " +mail%><br>
<%="Password  : " +pass%><br>
<%="Confirm Password  : " +cpass%>


<hr>
<!-- Table View  -->

<table border="1">
     <tbody>
            <tr>
                <td>First Name:</td>
			    <td><%= first%></td>
			</tr>
			<tr>
			<tr>
                <td>Last Name:</td>
			    <td><%= last%></td>
			</tr>
			<tr>
			<tr>
                <td>Gender:</td>
			    <td><%= gen%></td>
			</tr>
			<tr>
			<tr>
                <td>Course:</td>
			    <td>
			    <%
			    String[] selected;
			    selected=request.getParameterValues("chk");
			    if(selected !=null)
			    {
			    	for(int i=0;i<selected.length;i++)
			    	{
			    		out.println("" +selected[i] + "");
			    	}
			   
			    }
			    else
			    	out.print("none");
			    %>
			    
			    </td>
			</tr>
			<tr>
			<tr>
                <td>Address:</td>
			    <td><%= address%></td>
			</tr>
			<tr>
			<tr>
                <td>City:</td>
			    <td><%= cities%></td>
			</tr>
			<tr>
			<tr>
                <td>State:</td>
			    <td><%= state%></td>
			</tr>
			<tr>
			<tr>
                <td>Contact:</td>
			    <td><%= phone%></td>
			</tr>
			<tr>
			<tr>
                <td>Date of Birth:</td>
			    <td><%= dob%></td>
			</tr>
			<tr>
			<tr>
                <td>Email:</td>
			    <td><%= mail%></td>
			</tr>
			<tr>
			<tr>
                <td>Password:</td>
			    <td><%= pass%></td>
			</tr>
			<tr>
			<tr>
                <td>Confirm Password:</td>
			    <td><%= cpass%></td>
			</tr>
	  </tbody>
</table>

<hr>
<!-- Form View -->
	<form action="#">
    		<table style="width:50%">
    				<tr>
   		   			<td> First Name:</td>
   					<td><input type="text" name="username" class="form-control"  value=<%= first%>></td>
   		   		    </tr>
   		   		    
   		   		    <tr>
   		   			<td> Last Name:</td>
   					<td><input type="text" name="LastName" class="form-control"  value=<%= last%>></td>
   		   		    </tr>
   		   		    
   		   		    <tr>
   		   			<td> Gender:</td>
   		   			<% 
   		   			if(gen.equalsIgnoreCase("Male"))
   		   			{
   		   			%>
   		   			<td><input type="radio"  class="form-control"  name="gender" checked>Male</td>
   		   			<%
   		   			}
   		   			else{
   		   				%>
   		   		    <td><input type="radio"  class="form-control"  name="gender" checked>Female</td>
   		   		    <% 
   		   			}
   		   			%>
   		   			<tr>
   		   			<td> Course:</td>
   		   			<%
   		   		    String[] chkcourse=request.getParameterValues("chk");
   		   			for(int i=0;i<chkcourse.length;i++){
   		   				if(chkcourse[i].equalsIgnoreCase("Java"))
   		   				{
   		   			%>		
   		   		    <td><input type="checkbox"  class="form-control"  value="Java" name="chk" checked>Java</td>
   		   		    <%
   		   				}
   		   				if(chkcourse[i].equalsIgnoreCase("Php"))
   		   				{
   		   		     %>
   		   		      <td><input type="checkbox"  class="form-control"  value="Php" name="chk" checked>Php</td>
   		   		    <%
   		   				}
   		   				if(chkcourse[i].equalsIgnoreCase("Html"))
   		   				{
   		   		     %>
   		   		      <td><input type="checkbox"  class="form-control"  value="Html" name="chk" checked>Html</td>
   		   		    <%
   		   				}
   		   				if(chkcourse[i].equalsIgnoreCase("Jsp"))
   		   				{
   		   		     %>
   		   		      <td><input type="checkbox"  class="form-control"  value="Php" name="chk" checked>Jsp</td>
   		   		    <%
   		   				}
   		   		     }
   		   		     %>
   		   		     </tr>
   		   		    
   		   		    <tr>
   		   			<td> Address:</td>
   					<td><textarea name="fulladdress" class="form-control" ><%=address%></textarea></td>
   		   		    </tr>
   		   		    
   		   		    <tr>
   		   			<td> City:</td>
   					<td><input type="text" name="city" class="form-control" value=<%= cities%>></td>
   		   		    </tr>
   		   		    
   		   		   
   		   		    
   		   		    <tr>
				    <td> State:</td> 
				    <select class="form-control"  name="dropdown">
					<option value="select">Select  State </option>
					<option value="Maharastra"
					<%
							if(state.equalsIgnoreCase("Maharastra")){
					%>
					selected
					<%
							}
					%>
					>Maharastra</option>
					<option value="Madhya Pradesh"
					<%
							if(state.equalsIgnoreCase("madhya padesh")){
					%>
					selected
					<%
							}
					%>
					>Madhya Pradesh</option>
					<option value="Chatisgadh"
					<%
							if(state.equalsIgnoreCase("chatisgadh")){
					%>
					selected
					<%
							}
					%>
					>Chatisgadh</option>
					<option value="Himachal Pradesh"
					<%
							if(state.equalsIgnoreCase("himachal pradesh")){
					%>
					selected
					<%
							}
					%>
					>Himachal Pradesh</option>
					<option value="Uttar pradesh"
					<%
							if(state.equalsIgnoreCase("uttar pradesh")){
					%>
					selected
					<%
							}
					%>
					>Uttar pradesh</option>
					</select>
					</tr>
   		   		    
   		   		    <tr>
   		   			<td> Contact:</td>
   					<td> <input type="text" name="contact" class="form-control"   value=<%= phone%>></td>
   		   		    </tr>
   		   		    
   		   		    <tr>
   		   			<td> Date Of Birth:</td>
   					<td> <input type="date" class="form-control" name="date"  value=<%= dob%>></td>
   		   		    </tr>
   		   		    
   		   		    <tr>
   		   			<td> Email:</td>
   					<td> <input type="email" name="Email" class="form-control"   value=<%= mail%>></td>
   		   		    </tr>
   		   		    
   		   		    <tr>
   		   			<td> Password:</td>
   					<td><input type="password" name="password" class="form-control"  value=<%= pass%>></td>
   		   		    </tr>
   		   		    
   		   		    <tr>
   		   			<td> Confirm Password:</td>
   					<td> <input type="password" name="confirmpassword" class="form-control"  value=<%=cpass%>></td>
   		   		    </tr>
   		  </table>
   </form>
			       




