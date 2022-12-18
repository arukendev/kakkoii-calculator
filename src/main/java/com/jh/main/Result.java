package com.jh.main;

public class Result {
	private String unit1;
	private String unit2;
	private String icon;
	private String hId;
	private String bId;
	private String result;
	
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Result(String unit1, String unit2, String icon, String hId, String bId, String result) {
		super();
		this.unit1 = unit1;
		this.unit2 = unit2;
		this.icon = icon;
		this.hId = hId;
		this.bId = bId;
		this.result = result;
	}

	public String getUnit1() {
		return unit1;
	}

	public void setUnit1(String unit1) {
		this.unit1 = unit1;
	}

	public String getUnit2() {
		return unit2;
	}

	public void setUnit2(String unit2) {
		this.unit2 = unit2;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String gethId() {
		return hId;
	}

	public void sethId(String hId) {
		this.hId = hId;
	}

	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
