package org.json;

import java.util.HashMap;
import java.util.Map;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

public class Test {

	
	public HashMap<String, String> ShowTest()
	{
		System.out.println("inside showtest method");
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Person.class);
		
		  HashMap<String,String> obj=(HashMap<String,String>)q.execute(); 
		  return obj;

	}
	
	
}
