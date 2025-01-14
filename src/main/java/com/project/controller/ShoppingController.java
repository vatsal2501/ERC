package com.project.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.dao.ShoppingDAO;
import com.project.model.AddToCartVO;
import com.project.model.CategoryVO;
import com.project.model.CityVO;
import com.project.model.LoginVO;
import com.project.model.OrderVO;
import com.project.model.ProductFileVO;
import com.project.model.ProductVO;
import com.project.model.StateVO;
import com.project.model.SubCategoryVO;
import com.project.service.CityService;
import com.project.service.LoginService;
import com.project.service.OrderService;
import com.project.service.ProductService;
import com.project.service.ShoppingService;
import com.project.service.StateService;
import com.project.utils.BaseMethods;

@RestController
public class ShoppingController {

	@Autowired
	private ShoppingService shoppingService;

	@Autowired
	private ShoppingDAO shoppingDAO;

	@Autowired
	private BaseMethods baseMethods;

	@Autowired
	private LoginService loginService;

	@Autowired
	private ProductService productService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private StateService stateService;

	@Autowired
	private CityService cityService;

	@GetMapping(value = "user/shopping")
	public ModelAndView loadShoppingDetails() {

		List<CategoryVO> categoryVOList = this.shoppingService.searchCategory();

		CategoryVO categoryVO = categoryVOList.get(0);

		List<SubCategoryVO> subCategoryVOList = this.shoppingService.searchSubCategory(categoryVO.getCid());

		SubCategoryVO subCategoryVO = subCategoryVOList.get(0);

		List<ProductVO> productVOList = this.shoppingService.searchProduct(categoryVO.getCid(),
				subCategoryVO.getSubCategoryId());

		for (ProductVO productVO : productVOList) {
			List<ProductFileVO> productFileList = this.shoppingService.searchProductFileList(productVO.getProductId());
			productVO.setProductFileList(productFileList);
		}

		return new ModelAndView("user/shopping", "categoryVOList", categoryVOList)
				.addObject("categoryId", categoryVOList.get(0).getCid())
				.addObject("subCategoryVOList", subCategoryVOList).addObject("productVOList", productVOList);

	}

	@GetMapping(value = "user/addToCart")
	public ModelAndView addToCart(@RequestParam int id) {

		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);
		int userId = loginVO.getId();
		List<ProductVO> ls1 = this.productService.findById(id);

		List<AddToCartVO> cartProductList = this.shoppingService.searchOrder(id, userId, false);

		System.out.println(":::cartProductList.size() :::" + cartProductList.size());

		if (cartProductList.isEmpty() == false) {

			AddToCartVO cartProduct = cartProductList.get(0);

			int qty = (int) cartProduct.getQuantity() + 1;
			cartProduct.setQuantity(qty);

			int price = (Integer.parseInt(cartProduct.getPrice())) * qty;
			String totalPrice = Integer.toString(price);
			cartProduct.setTotalPrice(totalPrice);
			/* cartProduct.setPrice(productPrice); */

			this.shoppingService.saveCart(cartProduct);

		} else {

			AddToCartVO addToCartVO = new AddToCartVO();
			ProductVO producVO = ls1.get(0);
			addToCartVO.setProductVO(producVO);
			addToCartVO.setLoginVO(loginVO);
			addToCartVO.setVendorLoginVO(producVO.getLoginVO());
			addToCartVO.setPrice(producVO.getProductPrice());
			addToCartVO.setTotalPrice(producVO.getProductPrice());
			addToCartVO.setQuantity(1);

			/*
			 * DateFormat df = new SimpleDateFormat("dd/MM/yyyy"); Date d = new
			 * Date(); String date = df.format(d);
			 * 
			 * addToCartVO.setDate(date);
			 */
			this.shoppingService.saveCart(addToCartVO);

		}
		

		System.out.println("in  -addToCart() controller");

		return new ModelAndView("redirect:/user/viewCart");
	}

	private boolean isEqual(AddToCartVO obj1, AddToCartVO obj2) {
		if (obj1.getProductVO() == obj2.getProductVO()) {
			return true;
		} else {
			return false;
		}
	}

	@GetMapping(value = "user/viewCart")
	public ModelAndView viewCart() {

		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);

		List<AddToCartVO> orderList = this.shoppingService.searchOrdersByUserId(loginVO.getId());// searching
																									// oreder
																									// by
																									// user
																									// id

		System.out.println(":: orderList :: " + orderList);

		for (AddToCartVO cartVO : orderList) {
			ProductVO productVO = cartVO.getProductVO();
			List<ProductFileVO> productFileList = this.shoppingService.searchProductFileList(productVO.getProductId());
			productVO.setProductFileList(productFileList);
			cartVO.setProductVO(productVO);
		}

		List<String> productThumbnailList = new ArrayList<String>();
		/*
		 * making list for thumbnail productThumbnailList contains the thumbnai
		 * for each product
		 */
		for (AddToCartVO temp : orderList) {
			ProductVO productVO = temp.getProductVO();
			ProductFileVO productFileVO = productVO.getProductFileList().get(0);
			String fileName = productFileVO.getProductFileName();
			productThumbnailList.add(fileName);
		}

		List<StateVO> stateVOList = this.stateService.search();
		List<CityVO> cityVOList = this.cityService.search();
		
		return new ModelAndView("user/cart", "orderList", orderList)
				.addObject("productThumbnailList", productThumbnailList).addObject("orderVO", new OrderVO())
				.addObject("stateVOList", stateVOList).addObject("cityVOList", cityVOList);

		/* .addObject("counts", counts); */
	}

	@PostMapping(value = "user/cartCheckout")
	public ModelAndView checkOutOrder(@ModelAttribute OrderVO orderVO) {

		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);
		
		orderVO.setLoginVO(loginVO);
		List<AddToCartVO> orderList = this.shoppingService.searchOrdersByUserId(loginVO.getId());

		UUID uuid = UUID.randomUUID();
		String uuidAsString = uuid.toString();

		System.out.println("Your UUID is: " + uuidAsString);

		orderVO.setOrderId(uuidAsString);
		this.orderService.saveOrder(orderVO);

		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		Date d = new Date();
		String date = df.format(d);

		for (AddToCartVO orderInCart : orderList) {

			orderInCart.setOrderVO(orderVO);
			orderInCart.setPlaced(true);
			orderInCart.setDate(date);

			this.shoppingService.saveCart(orderInCart);
		}

		return new ModelAndView("redirect:/user/viewCart");
	}

	@GetMapping(value = "user/deleteProductFromCart")
	public ModelAndView deleteProductFromCart(@RequestParam int id) {

		this.shoppingService.deleteProductFromCart(id);
		return new ModelAndView("redirect:/user/viewCart");
	}

	@GetMapping(value = "user/clearCart")
	public ModelAndView clearCart() {

		this.shoppingService.clearCart();

		return new ModelAndView("redirect:/user/viewCart");
	}
	
	
}
