<%@page import="com.project.utils.BaseMethods"%>
<nav
	class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
	<div
		class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">

	</div>
	<div class="navbar-menu-wrapper d-flex align-items-center">
		<button class="navbar-toggler navbar-toggler align-self-center"
			type="button" data-toggle="minimize">
			<span class="mdi mdi-menu"></span>
		</button>
		<span class="d-none d-md-inline">Admin</span>
		<ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile">
            <a class="nav-link">
              <div class="nav-profile-text">
                <p class="mb-0"><%=BaseMethods.getUsername()%></p>
              </div>
              <div class="nav-profile-img">
                <img src="<%=request.getContextPath()%>/adminResources/images/avatar.png" alt="image">
              </div>
            </a>
          </li>
          <li class="nav-item nav-logout d-none d-lg-block">
            <a class="nav-link" href="/logout" title="Logout">
              <i class="mdi mdi-power"></i>
            </a>
          </li>
        </ul>
	</div>
	
</nav>
