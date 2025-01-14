
package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cart_table")
public class AddToCartVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "cart_id")
	private int cartId;

	@ManyToOne
	@JoinColumn(name = "product_id")
	private ProductVO productVO;

	@ManyToOne
	@JoinColumn(name = "login_id")
	private LoginVO loginVO;

	@ManyToOne
	@JoinColumn(name = "vendor_login_id")
	private LoginVO vendorLoginVO;

	private String price;
	private String totalPrice;
	private Integer quantity;
	
	@Column(name = "order_placed_date")
	private String date;
	
	@Column(name = "is_placed")
	private Boolean placed=false;
	
	@ManyToOne
	@JoinColumn(name = "order_id")
	private OrderVO orderVO;

	
	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Boolean getPlaced() {
		return placed;
	}

	public void setPlaced(Boolean placed) {
		this.placed = placed;
	}

	public OrderVO getOrderVO() {
		return orderVO;
	}

	public void setOrderVO(OrderVO orderVO) {
		this.orderVO = orderVO;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public ProductVO getProductVO() {
		return productVO;
	}

	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public LoginVO getVendorLoginVO() {
		return vendorLoginVO;
	}

	public void setVendorLoginVO(LoginVO vendorLoginVO) {
		this.vendorLoginVO = vendorLoginVO;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
