package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	@NotEmpty(message="Productname cannot be empty")
	String productName;
	@NotEmpty(message="productdescription cannot be empty")
	String productDescription;
	@Min(value=1,message="productprice cannot be empty")
	double productPrice;
	
	@Min(value=0,message="productquantity cannot be empty")
	int productQuantity;
	@ManyToOne
	private Category category;
	@Transient
	private MultipartFile image;
	public MultipartFile getImage() {  
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	
	
	public int getId() {
		return id;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	
}
