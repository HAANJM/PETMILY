package com.kh.product.model.vo;

public class Product {
	
	private int productNo; // PRODUCT_NO	NUMBER
	private String productName; //PRODUCT_NAME	VARCHAR2(30 BYTE)
	private int price; // PRICE	NUMBER
	private String productInfo; // PRODUCT_INFO	VARCHAR2(4000 BYTE)
	private int stock; // STOCK	NUMBER
	private int categoryNo; // CATEGORY_NO	NUMBER
	private String categoryName;
	
	public Product() {
		super();
	}
	
	
	
	public Product(int productNo, String productName, int price, String categoryName) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.price = price;
		this.categoryName = categoryName;
	}



	public Product(int productNo, String productName, int price, String productInfo, int stock, int categoryNo) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.price = price;
		this.productInfo = productInfo;
		this.stock = stock;
		this.categoryNo = categoryNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	
	
	public String getCategoryName() {
		return categoryName;
	}



	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}



	@Override
	public String toString() {
		return "Product [productNo=" + productNo + ", productName=" + productName + ", price=" + price
				+ ", productInfo=" + productInfo + ", stock=" + stock + ", categoryNo=" + categoryNo + "]";
	}
	
	

}
