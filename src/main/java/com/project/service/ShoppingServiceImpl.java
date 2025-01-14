package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ShoppingDAO;
import com.project.model.AddToCartVO;
import com.project.model.CategoryVO;
import com.project.model.ProductFileVO;
import com.project.model.ProductVO;
import com.project.model.SubCategoryVO;

@Service
@Transactional
public class ShoppingServiceImpl implements ShoppingService {

	@Autowired
	private ShoppingDAO shoppingDAO;
	
	@Override
	public List<CategoryVO> searchCategory(){
		return this.shoppingDAO.searchCategory();
	}
	
	@Override
	public List<SubCategoryVO> searchSubCategory(int id){
		return this.shoppingDAO.searchSubCategory(id);
	}
	
	@Override
	public List<ProductVO> searchProduct(int categoryId,int subcategoryId){
		return this.shoppingDAO.searchProduct(categoryId, subcategoryId);
	}
	
	@Override
	public List<ProductFileVO> searchProductFileList(int productId){
		return this.shoppingDAO.searchProductFileList(productId);
	}

	@Override
	public void saveCart(AddToCartVO addToCartVO) {
		this.shoppingDAO.saveCart(addToCartVO);
	}


	@Override
	public List<AddToCartVO> searchOrders(int vendorLoginId){
		return this.shoppingDAO.searchOrders(vendorLoginId);
	}
	
	@Override
	public List<AddToCartVO> searchPlacedOrders(int vendorLoginId){
		return this.shoppingDAO.searchPlacedOrders(vendorLoginId);
	}

	@Override
	public List<AddToCartVO> searchOrdersByUserId(int userId) {
		return this.shoppingDAO.searchOrdersByUserId(userId);
	}
	
	@Override
	public List<AddToCartVO> searchOrder(int productId,int userId,boolean isPlaced){
		return this.shoppingDAO.searchOrder(productId,userId,isPlaced);
	}

	@Override
	public void deleteProductFromCart(int cartId) {
		this.shoppingDAO.deleteProductFromCart(cartId);
	}

	@Override
	public void clearCart() {
		this.shoppingDAO.clearCart();
	}
	
	@Override
	public List<AddToCartVO> searchOrdersByOrderId(int orderId){
		return this.shoppingDAO.searchOrdersByOrderId(orderId);
	}
}