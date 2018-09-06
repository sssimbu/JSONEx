package org.json;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.labs.repackaged.org.json.JSONException;
import com.google.appengine.labs.repackaged.org.json.JSONObject;
import org.json.*;

public class Register extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		PersistenceManager pm = PMF.get().getPersistenceManager();

		
		
		System.out.println("into servlet");
		JSONObject jObj=null;
		try {
			jObj = new JSONObject(request.getParameter("obj"));
			System.out.println("json value:"+jObj);
			
			String Name = jObj.getString("name");
			String email = jObj.getString("email");
			String Mobile = jObj.getString("Mobile");
			String Age = jObj.getString("Age");
			String Salary = jObj.getString("Salary");
			System.out.println("name-->"+Name+" email-->"+email+" mobile-->"+Mobile+"Age-->"+Age+"Salary-->"+Salary);
			
			Person per=new Person();
			per.setAge(Age);
			per.setEmail(email);
			per.setMobile(Mobile);
			per.setName(Name);
			per.setSalary(Salary);
			

				pm.makePersistent(per);

			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				pm.close();

			}
			
			//Gson gson = new gson();
			// Map<String,String> userDetails = gson.fromJson(Map.class,request.getParameter(obj));
			// String userDetails = gson.toJson(userDetails);
		



		
	}

}
