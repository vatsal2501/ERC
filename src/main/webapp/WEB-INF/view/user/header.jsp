<header class="header01 isSticky" onload="getShoppingCartList()">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="headerInner01">
					<div class="logo">
						<a href="index.jsp"> <img
							src="<%=request.getContextPath()%>/userResources/images/erc_dashboard.png"
							alt="ERC" />
						</a>
					</div>
					<div class="mainMenu">
						<ul>
							<li><a href="index">Home</a></li>
							<li><a href="shopping">Shop</a></li>
							<li><a href="myOrders">My Orders</a></li>
							<li><a href="">Help</a></li>
						</ul>
					</div>
					<div class="accessNav">
						<a href="javascript:void(0);" class="menuToggler"><i
							class="fa-solid fa-bars"></i> <span>Menu</span></a>
						<div class="anItems">
							<div class="anCart">
								<a href="viewCart"><i class="fa-solid fa-shopping-cart"></i></a>
							</div>
							<div class="anUser">
								<a href="/logout"><i class="fa-solid fa-sign-out"></i> </a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

</header>


