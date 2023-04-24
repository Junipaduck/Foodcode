package com.itwillbs.foodcode.vo;
// <report테이블 컬럼 >
// report_idx
// report_content
// report_count
// store_idx

public class ReportVO {
	private int report_idx;
	private String report_content;
	private int report_count;
	private int store_idx;
	
	public ReportVO() {
		// TODO Auto-generated constructor stub
	}

	public ReportVO(int report_idx, String report_content, int report_count, int store_idx) {
		super();
		this.report_idx = report_idx;
		this.report_content = report_content;
		this.report_count = report_count;
		this.store_idx = store_idx;
	}

	public int getReport_idx() {
		return report_idx;
	}

	public void setReport_idx(int report_idx) {
		this.report_idx = report_idx;
	}

	public String getReport_content() {
		return report_content;
	}

	public void setReport_content(String report_content) {
		this.report_content = report_content;
	}

	public int getReport_count() {
		return report_count;
	}

	public void setReport_count(int report_count) {
		this.report_count = report_count;
	}

	public int getStore_idx() {
		return store_idx;
	}

	public void setStore_idx(int store_idx) {
		this.store_idx = store_idx;
	}

	@Override
	public String toString() {
		return "ReportVO [report_idx=" + report_idx + ", report_content=" + report_content + ", report_count="
				+ report_count + ", store_idx=" + store_idx + "]";
	}
	
	
	
	
	
	
	
	
}
