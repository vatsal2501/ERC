package com.project.dao;

import java.util.List;

import com.project.model.AddToCartVO;
import com.project.model.CategoryVO;
import com.project.model.ProductFileVO;
import com.project.model.ProductVO;
import com.project.model.SubCategoryVO;

public interface ShoppingDAO {
	
	
	List<CategoryVO> searchCategory();
	
	List<SubCategoryVO> searchSubCategory(int id);

	List<ProductVO> searchProduct(int categoryId,int subcategoryId);
	
	List<ProductFileVO> searchProductFileList(int productId);
	
	void saveCart(AddToCartVO addToCartVO);
	
	List<AddToCartVO> searchOrders(int vendorLoginId);
	
	public List<AddToCartVO> searchPlacedOrders(int vendorLoginId);
	
	List<AddToCartVO> searchOrdersByUserId(int userId);
	
	List<AddToCartVO> searchOrder(int productId,int userId,boolean isPlaced);
	
	void deleteProductFromCart(int cartId);
	
	void clearCart();
	
	List<AddToCartVO> searchOrdersByOrderId(int orderId);
}
