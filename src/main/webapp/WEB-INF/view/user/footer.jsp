<section class="siteInfoSection">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="siteInfo">
					All rights reserved &nbsp;<a href="index.html">E-commerce
						Retail Conversation</a>&nbsp;&nbsp;&copy;&nbsp;&nbsp;2023
				</div>
			</div>

		</div>
	</div>
</section>

<script type="text/javascript">
	
	function getShoppingCartList() {
		
		var htp = new XMLHttpRequest();

		htp.onreadystatechange = function() {

			if (htp.readyState == 4) {
				var jsn = JSON.parse(htp.responseText);
			}
		}
	
		htp.open("get", "cartOrderCount", true);
		
		htp.send();
		
	}
</script>

<!-- END: Site Info Section -->

<!-- BEGIN: Back To Top -->
<a href="javascript:void(0);" id="backtotop"><i
	class="fa-solid fa-angles-up"></i></a>
<!-- END: Back To Top -->
