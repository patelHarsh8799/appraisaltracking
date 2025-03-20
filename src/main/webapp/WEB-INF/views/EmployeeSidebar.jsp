<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="employeehome">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-people-fill"></i><span>Appraisals</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="viewemployee">
              <i class="bi bi-circle"></i><span>Upcoming Appraisal</span>
            </a>
          </li>
          <li>
            <a href="adduser">
              <i class="bi bi-circle"></i><span>Appraisal History</span>
            </a>
          </li>
          <li>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Goals</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="assignedgoals">
              <i class="bi bi-circle"></i><span>Assigned Goals</span>
            </a>
          </li>
          <li>
            <a href="viewdepartments">
              <i class="bi bi-circle"></i><span>Set My Goal</span>
            </a>
          </li>
        </ul>
      </li><!-- End Forms Nav -->
      
      <!-- <li class="nav-item">
        <a class="nav-link collapsed" href="users-profile.html">
          <i class="bi bi-person"></i>
          <span>Profile</span>
        </a>
      </li> -->

    </ul>

  </aside>