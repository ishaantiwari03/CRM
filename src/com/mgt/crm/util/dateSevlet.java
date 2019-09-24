package com.mgt.crm.util;

	import java.text.SimpleDateFormat;
	import java.util.Date;
	
	public class dateSevlet{
	public static void main(String[] args) {
			Date date = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			String strDate= formatter.format(date);
			System.out.println(strDate);
		}
		}
		
		