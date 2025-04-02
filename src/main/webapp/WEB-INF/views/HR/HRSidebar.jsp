<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link " href="hrhome"> <i
				class="bi bi-grid"></i> <span>Dashboard</span>
		</a></li>
		<!-- End Dashboard Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-people-fill"></i><span>Employees</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>

			<ul id="components-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="viewemployee"> <i class="bi bi-circle"></i><span>List
							of Employees</span>
				</a></li>
				<li><a href="adduser"> <i class="bi bi-circle"></i><span>Add
							Employee</span>
				</a></li>
			</ul></li>
		<!-- End Components Nav -->
		
		<li class="nav-item"><a class="nav-link collapsed"
			href="departmentlist"> <i class="bi bi-journal-text"></i> <span>Departments</span>
		</a></li>

		<!-- <li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-journal-text"></i><span>Departments & Positions</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a> --> <!-- <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="newdepartment">
              <i class="bi bi-circle"></i><span>Add Departments & Positions</span>
            </a>
          </li>
          <li>
            <a href="viewdepartments">
              <i class="bi bi-circle"></i><span>View Departments & Positions</span>
            </a>
          </li>
        </ul> --></li>
		<!-- End Forms Nav -->


		<li class="nav-item"><a class="nav-link collapsed"
			href="users-profile.html"> <i class="bi bi-person"></i> <span>Profile</span>
		</a></li>
		<!-- End Profile Page Nav -->


	</ul>

</aside>