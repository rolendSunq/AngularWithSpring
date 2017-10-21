package org.angularstudy.spring.dataobject;

public class ProductVO {
	private int id;
	private String name;
	private String category;
	private double price;

	public ProductVO() {
		id = 0;
		name = "";
		category = "";
		price = 0.0;
	}

	public ProductVO(int id, String name, String category, double price) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("ProductVO \r\n");
		sb.append("id: " + id + "\r\n");
		sb.append("name: " + name + "\r\n");
		sb.append("category: " + category + "\r\n");
		sb.append("price: " + price + "\r\n");
		return sb.toString();
	}
}
