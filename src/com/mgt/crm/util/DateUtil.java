package com.mgt.crm.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	static SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
	
	public static java.sql.Date getSQLDate(String s)
	{
		
		Date dt;
		try {
			dt = sf.parse(s);
			java.sql.Date sd=new java.sql.Date(dt.getTime());		
			return sd;
	} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
return null;
	}
}
