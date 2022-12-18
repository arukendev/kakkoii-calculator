package com.jh.main;

import javax.servlet.http.HttpServletRequest;

public class UnitM {
	public static void calc(HttpServletRequest request) {
		int input = Integer.parseInt(request.getParameter("input"));
		double calculate = input * 0.621371;
		String unit1 = "km/h";
		String unit2 = "mi/h";
		String icon = "fa-tachometer-alt";
		String hId = "kmHeader";
		String bId = "kmButton";
		String[] selects = request.getParameterValues("select");
		for (String select : selects) {
			if (select.equals("cm")) {
				calculate = input * 0.393701;
				unit1 = "cm";
				unit2 = "inch";
				icon = "fa-ruler";
				hId = "cmHeader";
				bId = "cmButton";
			} else if (select.equals("m")) {
				calculate = input * 0.3025;
				unit1 = "m<sup>2</sup>";
				unit2 = "pyeong";
				icon = "fa-ruler-combined";
				hId = "mHeader";
				bId = "mButton";
			} else if (select.equals("c")) {
				calculate = (input * 1.8) + 32;
				unit1 = "¡É";
				unit2 = "¢µ";
				icon = "fa-thermometer-half";
				hId = "cHeader";
				bId = "cButton";
			}
		}
		String result = String.format("%.1f", calculate);
		
		Result r = new Result(unit1, unit2, icon, hId, bId, result);
		
		request.setAttribute("r", r);
	}
}
