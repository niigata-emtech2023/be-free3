package model.entity;

import java.io.Serializable;

public class DesignBean implements Serializable {
	/**
	 * 文字の太さ
	 */
	private String fontSize;
	
	/**
	 * 全体のデザイン
	 */
	private String siteColor;
	
	public DesignBean() {
		
	}

	public String getFontSize() {
		return fontSize;
	}

	public void setFontSize(String fontSize) {
		this.fontSize = fontSize;
	}

	public String getSiteColor() {
		return siteColor;
	}

	public void setSiteColor(String siteColor) {
		this.siteColor = siteColor;
	}
	
	

}