package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.BrandVO;
import com.project.model.CategoryVO;
import com.project.model.LoginVO;
import com.project.model.ProductFileVO;
import com.project.model.ProductVO;
import com.project.model.SubCategoryVO;
import com.project.service.BrandService;
import com.project.service.CategoryService;
import com.project.service.LoginService;
import com.project.service.ProductService;
import com.project.service.ShoppingService;
import com.project.service.SubCategoryService;
import com.project.utils.BaseMethods;

@RestController
public class ProductController {

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private SubCategoryService subCategoryService;

	@Autowired
	private ProductService productService;

	@Autowired
	private LoginService loginService;

	@Autowired
	private BrandService brandService;

	@Autowired
	private BaseMethods baseMethods;

	@Autowired
	private ShoppingService shoppingService;

	@GetMapping(value = "user/productPreview")
	public ModelAndView productPreview(@RequestParam int id) {

		List<ProductFileVO> productFileList = this.productService.fetchFilesByProductId(id);
		
		List<ProductVO> productList = this.productService.findById(id);
		ProductVO productVO = productList.get(0);
		
		System.out.println("productVO:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;"+productVO);
		return new ModelAndView("user/productPreview", "productFileList", productFileList).addObject("productVO",productVO);
	}

	@GetMapping(value = "vendor/addProduct")
	public ModelAndView add() {

		List<CategoryVO> categoryList = categoryService.search();
		List<SubCategoryVO> subCategoryList = subCategoryService.search();
		List<BrandVO> brandList = brandService.search();

		return new ModelAndView("vendor/addProduct", "ProductVO", new ProductVO())
				.addObject("categoryList", categoryList).addObject("subCategoryList", subCategoryList)
				.addObject("brandList", brandList);
	}

	@PostMapping(value = "vendor/saveProduct")
	public ModelAndView saveProduct(@ModelAttribute ProductVO productVO, HttpServletRequest request,
			@RequestParam("file") List<MultipartFile> file) {

		String path = request.getSession().getServletContext().getRealPath("/");
		System.out.println("the path is :: " + path);
		String addProductFilePath = path + "documents\\productfile\\";

		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);
		productVO.setLoginVO(loginVO);
		this.productService.save(productVO);

		for (MultipartFile multipartFile : file) {

			UUID uuid = UUID.randomUUID();

			StringTokenizer st = new StringTokenizer(multipartFile.getOriginalFilename(), ".");

			String extension = "";

			while (st.hasMoreTokens()) {
				extension = st.nextToken();
			}

			String addProductFileToInsert = uuid + "." + extension;
			try {
				byte barr[] = multipartFile.getBytes();

				BufferedOutputStream bout = new BufferedOutputStream(
						new FileOutputStream(addProductFilePath + "/" + addProductFileToInsert));

				bout.write(barr);
				bout.flush();
				bout.close();
				ProductFileVO fileVO = new ProductFileVO();
				fileVO.setProductFileName(addProductFileToInsert);
				fileVO.setProductFilePath(addProductFilePath);
				fileVO.setProductVO(productVO);

				this.productService.save(fileVO);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return new ModelAndView("redirect:/vendor/addProduct");
	}

	@GetMapping(value = "vendor/viewProduct")
	public ModelAndView searchProduct() {

		System.out.println("in viewProductcontroller -Search()");
		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);

		List<ProductVO> productList = this.productService.search(loginVO.getId());

		return new ModelAndView("vendor/viewProduct", "productList", productList);

	}

	@GetMapping(value = "vendor/deleteProduct")
	public ModelAndView deleteProduct(@ModelAttribute ProductVO productVO, @RequestParam int id) {

		System.out.println("in Product controller -delete()");

		List<ProductVO> productList = this.productService.findById(id);

		productVO = productList.get(0);

		productVO.setStatus(false);

		this.productService.save(productVO);

		return new ModelAndView("redirect:/vendor/viewProduct");
	}

	@GetMapping(value = "vendor/editProduct")
	public ModelAndView editProduct(@ModelAttribute ProductVO productVO, @RequestParam int id) {

		System.out.println("in Product controller -edit()");

		List<CategoryVO> categoryList = categoryService.search();
		List<SubCategoryVO> subCategoryList = subCategoryService.search();
		List<BrandVO> brandList = brandService.search();
		List<ProductVO> productList = this.productService.findById(id);

		productVO = productList.get(0);

		return new ModelAndView("vendor/addProduct", "ProductVO", productList.get(0))
				.addObject("categoryList", categoryList).addObject("subCategoryList", subCategoryList)
				.addObject("brandList", brandList);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@GetMapping(value = { "vendor/fetchProductImagesById", "user/fetchProductImagesById" })
	public ResponseEntity fetchProductImagesById(@RequestParam int productId) {
		List<ProductFileVO> productFileVOList = productService.fetchProductImagesById(productId);
		System.out.println(productFileVOList);
		return new ResponseEntity(productFileVOList, HttpStatus.OK);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@GetMapping(value = { "vendor/fetchSubCategoryListByCategoryId", "user/fetchSubCategoryListByCategoryId" })
	public ResponseEntity fetchSubCategoryListByCategoryId(@RequestParam int categoryId) {

		List<SubCategoryVO> subCategoryList = subCategoryService.fetchSubCategoryListByCategoryId(categoryId);

		List<ProductVO> productVOList = this.shoppingService.searchProduct(categoryId,
				subCategoryList.get(0).getSubCategoryId());

		for (ProductVO productVO : productVOList) {
			List<ProductFileVO> productFileList = this.shoppingService.searchProductFileList(productVO.getProductId());
			productVO.setProductFileList(productFileList);
		}

		return new ResponseEntity(subCategoryList, HttpStatus.OK);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@GetMapping(value = { "user/fetchProductBySubCategoryListAndCategoryId" })
	public ResponseEntity fetchProductBySubCategoryListAndCategoryId(@RequestParam int categoryId) {

		List<SubCategoryVO> subCategoryList = subCategoryService.fetchSubCategoryListByCategoryId(categoryId);

		List<ProductVO> productVOList = this.shoppingService.searchProduct(categoryId,
				subCategoryList.get(0).getSubCategoryId());

		for (ProductVO productVO : productVOList) {
			List<ProductFileVO> productFileList = this.shoppingService.searchProductFileList(productVO.getProductId());
			productVO.setProductFileList(productFileList);
		}

		Map map = new HashMap<>();
		map.put("subCategoryList", subCategoryList);
		map.put("productVOList", productVOList);
		
		return new ResponseEntity(map, HttpStatus.OK);
	}
	
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@GetMapping(value = { "vendor/fetchProductListByCategoryAndSubCategoryId",
			"user/fetchProductListByCategoryAndSubCategoryId" })
	public ResponseEntity fetchProductListByCategoryAndSubCategoryId(@RequestParam int categoryId,
			@RequestParam int subCategoryId) {

		List<ProductVO> productList = this.productService.fetchProductListByCategoryAndSubCategoryId(categoryId,
				subCategoryId);
		
		for (ProductVO productVO : productList) {
			List<ProductFileVO> productFileList = this.shoppingService.searchProductFileList(productVO.getProductId());
			productVO.setProductFileList(productFileList);
		}

		
		return new ResponseEntity(productList, HttpStatus.OK);

	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@GetMapping(value = { "vendor/fetchProductFilesByProductId", "user/fetchProductFilesByProductId" })
	public ResponseEntity fetchProductById(@RequestParam int productId) {
		List<ProductFileVO> productFileList = this.productService.fetchFilesByProductId(productId);
		return new ResponseEntity(productFileList, HttpStatus.OK);
	}
}
