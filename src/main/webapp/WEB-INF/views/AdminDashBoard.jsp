<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Dashboard - NiceAdmin Bootstrap Template</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

</head>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						<!-- Sales Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card sales-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Sales <span>| Today</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>145</h6>
											<span class="text-success small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Sales Card -->

						<!-- Revenue Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card revenue-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Revenue <span>| This Month</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-currency-dollar"></i>
										</div>
										<div class="ps-3">
											<h6>$3,264</h6>
											<span class="text-success small pt-1 fw-bold">8%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Revenue Card -->

						<!-- Customers Card -->
						<div class="col-xxl-4 col-xl-12">

							<div class="card info-card customers-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Customers <span>| This Year</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>1244</h6>
											<span class="text-danger small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">decrease</span>

										</div>
									</div>

								</div>
							</div>

						</div>
						<!-- End Customers Card -->

						<!-- Reports -->
						<div class="col-12">
							<div class="card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Reports <span>/Today</span>
									</h5>

									<!-- Line Chart -->
									<div id="reportsChart" class="" style="min-height: 365px;">
										<div id="apexchartsqva968az"
											class="apexcharts-canvas apexchartsqva968az apexcharts-theme-"
											style="width: 725px; height: 350px;">
											<svg xmlns="http://www.w3.org/2000/svg" version="1.1"
												xmlns:xlink="http://www.w3.org/1999/xlink"
												class="apexcharts-svg apexcharts-zoomable hovering-zoom"
												xmlns:data="ApexChartsNS" transform="translate(0, 0)"
												width="725" height="350">
												<foreignObject x="0" y="0" width="725" height="350">
												<div
													class="apexcharts-legend apexcharts-align-center apx-legend-position-bottom"
													xmlns="http://www.w3.org/1999/xhtml"
													style="right: 0px; position: absolute; left: 0px; top: 325px; max-height: 175px;">
													<div class="apexcharts-legend-series" rel="1"
														seriesname="Sales" data:collapsed="false"
														style="margin: 4px 5px;">
														<span class="apexcharts-legend-marker" rel="1"
															data:collapsed="false"
															style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg
																xmlns="http://www.w3.org/2000/svg" version="1.1"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="100%"
																height="100%">
																<path
																	d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0"
																	fill="#4154f1" fill-opacity="1" stroke="#ffffff"
																	stroke-opacity="0.9" stroke-linecap="butt"
																	stroke-width="1" stroke-dasharray="0" cx="0" cy="0"
																	shape="circle"
																	class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle"
																	style="transform: translate(50%, 50%);"></path></svg></span><span
															class="apexcharts-legend-text" rel="1" i="0"
															data:default-text="Sales" data:collapsed="false"
															style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Sales</span>
													</div>
													<div class="apexcharts-legend-series" rel="2"
														seriesname="Revenue" data:collapsed="false"
														style="margin: 4px 5px;">
														<span class="apexcharts-legend-marker" rel="2"
															data:collapsed="false"
															style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg
																xmlns="http://www.w3.org/2000/svg" version="1.1"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="100%"
																height="100%">
																<path
																	d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0"
																	fill="#2eca6a" fill-opacity="1" stroke="#ffffff"
																	stroke-opacity="0.9" stroke-linecap="butt"
																	stroke-width="1" stroke-dasharray="0" cx="0" cy="0"
																	shape="circle"
																	class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle"
																	style="transform: translate(50%, 50%);"></path></svg></span><span
															class="apexcharts-legend-text" rel="2" i="1"
															data:default-text="Revenue" data:collapsed="false"
															style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Revenue</span>
													</div>
													<div class="apexcharts-legend-series" rel="3"
														seriesname="Customers" data:collapsed="false"
														style="margin: 4px 5px;">
														<span class="apexcharts-legend-marker" rel="3"
															data:collapsed="false"
															style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg
																xmlns="http://www.w3.org/2000/svg" version="1.1"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="100%"
																height="100%">
																<path
																	d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0"
																	fill="#ff771d" fill-opacity="1" stroke="#ffffff"
																	stroke-opacity="0.9" stroke-linecap="butt"
																	stroke-width="1" stroke-dasharray="0" cx="0" cy="0"
																	shape="circle"
																	class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle"
																	style="transform: translate(50%, 50%);"></path></svg></span><span
															class="apexcharts-legend-text" rel="3" i="2"
															data:default-text="Customers" data:collapsed="false"
															style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Customers</span>
													</div>
												</div>
												<style type="text/css">
.apexcharts-flip-y {
	transform: scaleY(-1) translateY(-100%);
	transform-origin: top;
	transform-box: fill-box;
}

.apexcharts-flip-x {
	transform: scaleX(-1);
	transform-origin: center;
	transform-box: fill-box;
}

.apexcharts-legend {
	display: flex;
	overflow: auto;
	padding: 0 10px;
}

.apexcharts-legend.apexcharts-legend-group-horizontal {
	flex-direction: column;
}

.apexcharts-legend-group {
	display: flex;
}

.apexcharts-legend-group-vertical {
	flex-direction: column-reverse;
}

.apexcharts-legend.apx-legend-position-bottom, .apexcharts-legend.apx-legend-position-top
	{
	flex-wrap: wrap
}

.apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left
	{
	flex-direction: column;
	bottom: 0;
}

.apexcharts-legend.apx-legend-position-bottom.apexcharts-align-left,
	.apexcharts-legend.apx-legend-position-top.apexcharts-align-left,
	.apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left
	{
	justify-content: flex-start;
	align-items: flex-start;
}

.apexcharts-legend.apx-legend-position-bottom.apexcharts-align-center,
	.apexcharts-legend.apx-legend-position-top.apexcharts-align-center {
	justify-content: center;
	align-items: center;
}

.apexcharts-legend.apx-legend-position-bottom.apexcharts-align-right,
	.apexcharts-legend.apx-legend-position-top.apexcharts-align-right {
	justify-content: flex-end;
	align-items: flex-end;
}

.apexcharts-legend-series {
	cursor: pointer;
	line-height: normal;
	display: flex;
	align-items: center;
}

.apexcharts-legend-text {
	position: relative;
	font-size: 14px;
}

.apexcharts-legend-text *, .apexcharts-legend-marker * {
	pointer-events: none;
}

.apexcharts-legend-marker {
	position: relative;
	display: flex;
	align-items: center;
	justify-content: center;
	cursor: pointer;
	margin-right: 1px;
}

.apexcharts-legend-series.apexcharts-no-click {
	cursor: auto;
}

.apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series
	{
	display: none !important;
}

.apexcharts-inactive-legend {
	opacity: 0.45;
}
</style></foreignObject>
												<rect width="0" height="0" x="0" y="0" rx="0" ry="0"
													opacity="1" stroke-width="0" stroke="none"
													stroke-dasharray="0" fill="#fefefe"></rect>
												<g class="apexcharts-datalabels-group"
													transform="translate(0, 0) scale(1)"></g>
												<g class="apexcharts-datalabels-group"
													transform="translate(0, 0) scale(1)"></g>
												<g class="apexcharts-yaxis" rel="0"
													transform="translate(15.635351181030273, 0)">
												<g class="apexcharts-yaxis-texts-g">
												<text x="20" y="33.666666666666664" text-anchor="end"
													dominant-baseline="auto" font-size="11px"
													font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-yaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>100</tspan>
												<title>100</title></text>
												<text x="20" y="86.60266657511393" text-anchor="end"
													dominant-baseline="auto" font-size="11px"
													font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-yaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>80</tspan>
												<title>80</title></text>
												<text x="20" y="139.5386664835612" text-anchor="end"
													dominant-baseline="auto" font-size="11px"
													font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-yaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>60</tspan>
												<title>60</title></text>
												<text x="20" y="192.47466639200846" text-anchor="end"
													dominant-baseline="auto" font-size="11px"
													font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-yaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>40</tspan>
												<title>40</title></text>
												<text x="20" y="245.41066630045572" text-anchor="end"
													dominant-baseline="auto" font-size="11px"
													font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-yaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>20</tspan>
												<title>20</title></text>
												<text x="20" y="298.346666208903" text-anchor="end"
													dominant-baseline="auto" font-size="11px"
													font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-yaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>0</tspan>
												<title>0</title></text></g></g>
												<g class="apexcharts-inner apexcharts-graphical"
													transform="translate(45.63535118103027, 30)">
												<defs>
												<clipPath id="gridRectMaskqva968az">
												<rect width="675.3646488189697" height="270.6799995422363"
													x="-3" y="-3" rx="0" ry="0" opacity="1" stroke-width="0"
													stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath>
												<clipPath id="gridRectBarMaskqva968az">
												<rect width="675.3646488189697" height="270.6799995422363"
													x="-3" y="-3" rx="0" ry="0" opacity="1" stroke-width="0"
													stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath>
												<clipPath id="gridRectMarkerMaskqva968az">
												<rect width="689.3646488189697" height="284.6799995422363"
													x="-10" y="-10" rx="0" ry="0" opacity="1" stroke-width="0"
													stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath>
												<clipPath id="forecastMaskqva968az"></clipPath>
												<clipPath id="nonForecastMaskqva968az"></clipPath>
												<linearGradient x1="0" y1="0" x2="0" y2="1"
													id="SvgjsLinearGradient1021">
												<stop stop-opacity="0.3" stop-color="rgba(65,84,241,0.3)"
													offset="0"></stop>
												<stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)"
													offset="0.9"></stop>
												<stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)"
													offset="1"></stop></linearGradient>
												<linearGradient x1="0" y1="0" x2="0" y2="1"
													id="SvgjsLinearGradient1022">
												<stop stop-opacity="0.3" stop-color="rgba(46,202,106,0.3)"
													offset="0"></stop>
												<stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)"
													offset="0.9"></stop>
												<stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)"
													offset="1"></stop></linearGradient>
												<linearGradient x1="0" y1="0" x2="0" y2="1"
													id="SvgjsLinearGradient1023">
												<stop stop-opacity="0.3" stop-color="rgba(255,119,29,0.3)"
													offset="0"></stop>
												<stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)"
													offset="0.9"></stop>
												<stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)"
													offset="1"></stop></linearGradient></defs>
												<line x1="256.9479418534499" y1="0" x2="256.9479418534499"
													y2="264.6799995422363" stroke="#b6b6b6"
													stroke-dasharray="3" stroke-linecap="butt"
													class="apexcharts-xcrosshairs" x="256.9479418534499" y="0"
													width="1" height="264.6799995422363" fill="#b1b9c4"
													filter="none" fill-opacity="0.9" stroke-width="1"></line>
												<line x1="0" y1="264.6799995422363" x2="0"
													y2="270.6799995422363" stroke="#e0e0e0"
													stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-xaxis-tick"></line>
												<line x1="102.97917674137996" y1="264.6799995422363"
													x2="102.97917674137996" y2="270.6799995422363"
													stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-xaxis-tick"></line>
												<line x1="205.95835348275992" y1="264.6799995422363"
													x2="205.95835348275992" y2="270.6799995422363"
													stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-xaxis-tick"></line>
												<line x1="308.9375302241399" y1="264.6799995422363"
													x2="308.9375302241399" y2="270.6799995422363"
													stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-xaxis-tick"></line>
												<line x1="411.91670696551984" y1="264.6799995422363"
													x2="411.91670696551984" y2="270.6799995422363"
													stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-xaxis-tick"></line>
												<line x1="514.8958837068998" y1="264.6799995422363"
													x2="514.8958837068998" y2="270.6799995422363"
													stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-xaxis-tick"></line>
												<line x1="617.8750604482798" y1="264.6799995422363"
													x2="617.8750604482798" y2="270.6799995422363"
													stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-xaxis-tick"></line>
												<g class="apexcharts-grid">
												<g class="apexcharts-gridlines-horizontal">
												<line x1="0" y1="52.935999908447265" x2="669.3646488189697"
													y2="52.935999908447265" stroke="#e0e0e0"
													stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-gridline"></line>
												<line x1="0" y1="105.87199981689453" x2="669.3646488189697"
													y2="105.87199981689453" stroke="#e0e0e0"
													stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-gridline"></line>
												<line x1="0" y1="158.8079997253418" x2="669.3646488189697"
													y2="158.8079997253418" stroke="#e0e0e0"
													stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-gridline"></line>
												<line x1="0" y1="211.74399963378906" x2="669.3646488189697"
													y2="211.74399963378906" stroke="#e0e0e0"
													stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-gridline"></line></g>
												<g class="apexcharts-gridlines-vertical"></g>
												<line x1="0" y1="264.6799995422363" x2="669.3646488189697"
													y2="264.6799995422363" stroke="transparent"
													stroke-dasharray="0" stroke-linecap="butt"></line>
												<line x1="0" y1="1" x2="0" y2="264.6799995422363"
													stroke="transparent" stroke-dasharray="0"
													stroke-linecap="butt"></line></g>
												<g class="apexcharts-grid-borders">
												<line x1="0" y1="0" x2="669.3646488189697" y2="0"
													stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-gridline"></line>
												<line x1="0" y1="264.6799995422363" x2="669.3646488189697"
													y2="264.6799995422363" stroke="#e0e0e0"
													stroke-dasharray="0" stroke-linecap="butt"
													class="apexcharts-gridline"></line>
												<line x1="0" y1="264.6799995422363" x2="669.3646488189697"
													y2="264.6799995422363" stroke="#e0e0e0"
													stroke-dasharray="0" stroke-width="1" stroke-linecap="butt"></line></g>
												<g class="apexcharts-area-series apexcharts-plot-series">
												<g class="apexcharts-series" zIndex="0" seriesName="Sales"
													data:longestSeries="true" rel="1" data:realIndex="0">
												<path
													d="M 0 182.62919968414306C 54.06406778922448 182.62919968414306 100.40469732284546 158.8079997253418 154.46876511206995 158.8079997253418C 190.51147697155292 158.8079997253418 221.4052299939669 190.56959967041016 257.4479418534499 190.56959967041016C 293.49065371293284 190.56959967041016 324.38440673534683 129.6931997756958 360.42711859482984 129.6931997756958C 396.46983045431284 129.6931997756958 427.36358347672683 153.51439973449706 463.4062953362098 153.51439973449706C 499.44900719569273 153.51439973449706 530.3427602181067 47.642399917602546 566.3854720775897 47.642399917602546C 602.4281839370727 47.642399917602546 633.3219369594867 116.459199798584 669.3646488189697 116.459199798584C 669.3646488189697 116.459199798584 669.3646488189697 116.459199798584 669.3646488189697 264.6799995422363 L 0 264.6799995422363z"
													fill="url(#SvgjsLinearGradient1021)" fill-opacity="1"
													stroke="none" stroke-opacity="1" stroke-linecap="butt"
													stroke-width="0" stroke-dasharray="0"
													class="apexcharts-area" index="0"
													clip-path="url(#gridRectMaskqva968az)"
													pathTo="M 0 182.62919968414306C 54.06406778922448 182.62919968414306 100.40469732284546 158.8079997253418 154.46876511206995 158.8079997253418C 190.51147697155292 158.8079997253418 221.4052299939669 190.56959967041016 257.4479418534499 190.56959967041016C 293.49065371293284 190.56959967041016 324.38440673534683 129.6931997756958 360.42711859482984 129.6931997756958C 396.46983045431284 129.6931997756958 427.36358347672683 153.51439973449706 463.4062953362098 153.51439973449706C 499.44900719569273 153.51439973449706 530.3427602181067 47.642399917602546 566.3854720775897 47.642399917602546C 602.4281839370727 47.642399917602546 633.3219369594867 116.459199798584 669.3646488189697 116.459199798584C 669.3646488189697 116.459199798584 669.3646488189697 116.459199798584 669.3646488189697 264.6799995422363 L 0 264.6799995422363z"
													pathFrom="M 0 182.62919968414306C 54.06406778922448 182.62919968414306 100.40469732284546 158.8079997253418 154.46876511206995 158.8079997253418C 190.51147697155292 158.8079997253418 221.4052299939669 190.56959967041016 257.4479418534499 190.56959967041016C 293.49065371293284 190.56959967041016 324.38440673534683 129.6931997756958 360.42711859482984 129.6931997756958C 396.46983045431284 129.6931997756958 427.36358347672683 153.51439973449706 463.4062953362098 153.51439973449706C 499.44900719569273 153.51439973449706 530.3427602181067 47.642399917602546 566.3854720775897 47.642399917602546C 602.4281839370727 47.642399917602546 633.3219369594867 116.459199798584 669.3646488189697 116.459199798584C 669.3646488189697 116.459199798584 669.3646488189697 116.459199798584 669.3646488189697 264.6799995422363 L 0 264.6799995422363zz"></path>
												<path
													d="M 0 182.62919968414306C 54.06406778922448 182.62919968414306 100.40469732284546 158.8079997253418 154.46876511206995 158.8079997253418C 190.51147697155292 158.8079997253418 221.4052299939669 190.56959967041016 257.4479418534499 190.56959967041016C 293.49065371293284 190.56959967041016 324.38440673534683 129.6931997756958 360.42711859482984 129.6931997756958C 396.46983045431284 129.6931997756958 427.36358347672683 153.51439973449706 463.4062953362098 153.51439973449706C 499.44900719569273 153.51439973449706 530.3427602181067 47.642399917602546 566.3854720775897 47.642399917602546C 602.4281839370727 47.642399917602546 633.3219369594867 116.459199798584 669.3646488189697 116.459199798584"
													fill="none" fill-opacity="1" stroke="#4154f1"
													stroke-opacity="1" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" class="apexcharts-area" index="0"
													clip-path="url(#gridRectMaskqva968az)"
													pathTo="M 0 182.62919968414306C 54.06406778922448 182.62919968414306 100.40469732284546 158.8079997253418 154.46876511206995 158.8079997253418C 190.51147697155292 158.8079997253418 221.4052299939669 190.56959967041016 257.4479418534499 190.56959967041016C 293.49065371293284 190.56959967041016 324.38440673534683 129.6931997756958 360.42711859482984 129.6931997756958C 396.46983045431284 129.6931997756958 427.36358347672683 153.51439973449706 463.4062953362098 153.51439973449706C 499.44900719569273 153.51439973449706 530.3427602181067 47.642399917602546 566.3854720775897 47.642399917602546C 602.4281839370727 47.642399917602546 633.3219369594867 116.459199798584 669.3646488189697 116.459199798584"
													pathFrom="M 0 182.62919968414306C 54.06406778922448 182.62919968414306 100.40469732284546 158.8079997253418 154.46876511206995 158.8079997253418C 190.51147697155292 158.8079997253418 221.4052299939669 190.56959967041016 257.4479418534499 190.56959967041016C 293.49065371293284 190.56959967041016 324.38440673534683 129.6931997756958 360.42711859482984 129.6931997756958C 396.46983045431284 129.6931997756958 427.36358347672683 153.51439973449706 463.4062953362098 153.51439973449706C 499.44900719569273 153.51439973449706 530.3427602181067 47.642399917602546 566.3854720775897 47.642399917602546C 602.4281839370727 47.642399917602546 633.3219369594867 116.459199798584 669.3646488189697 116.459199798584"
													fill-rule="evenodd"></path>
												<g
													class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown"
													data:realIndex="0">
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 0, 182.62919968414306 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#4154f1" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="0" cy="182.62919968414306"
													shape="circle"
													class="apexcharts-marker no-pointer-events w9iiigucc"
													rel="0" j="0" index="0" default-marker-size="4"></path>
												<path
													d="M 154.46876511206995, 158.8079997253418 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#4154f1" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="154.46876511206995"
													cy="158.8079997253418" shape="circle"
													class="apexcharts-marker no-pointer-events wrx8wrw9hf"
													rel="1" j="1" index="0" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 257.4479418534499, 190.56959967041016 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#4154f1" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="257.4479418534499"
													cy="190.56959967041016" shape="circle"
													class="apexcharts-marker no-pointer-events w9y30rwgl"
													rel="2" j="2" index="0" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 360.42711859482984, 129.6931997756958 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#4154f1" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="360.42711859482984"
													cy="129.6931997756958" shape="circle"
													class="apexcharts-marker no-pointer-events wjrbw7f4c"
													rel="3" j="3" index="0" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 463.4062953362098, 153.51439973449706 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#4154f1" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="463.4062953362098"
													cy="153.51439973449706" shape="circle"
													class="apexcharts-marker no-pointer-events w27ls2bsf"
													rel="4" j="4" index="0" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 566.3854720775897, 47.642399917602546 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#4154f1" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="566.3854720775897"
													cy="47.642399917602546" shape="circle"
													class="apexcharts-marker no-pointer-events wjhd72eij"
													rel="5" j="5" index="0" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 669.3646488189697, 116.459199798584 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#4154f1" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="669.3646488189697"
													cy="116.459199798584" shape="circle"
													class="apexcharts-marker no-pointer-events wrjgcc05h"
													rel="6" j="6" index="0" default-marker-size="4"></path></g></g></g>
												<g class="apexcharts-series" zIndex="1" seriesName="Revenue"
													data:longestSeries="true" rel="2" data:realIndex="1">
												<path
													d="M 0 235.56519959259032C 54.06406778922448 235.56519959259032 100.40469732284546 179.9823996887207 154.46876511206995 179.9823996887207C 190.51147697155292 179.9823996887207 221.4052299939669 145.57399974823 257.4479418534499 145.57399974823C 293.49065371293284 145.57399974823 324.38440673534683 179.9823996887207 360.42711859482984 179.9823996887207C 396.46983045431284 179.9823996887207 427.36358347672683 174.68879969787596 463.4062953362098 174.68879969787596C 499.44900719569273 174.68879969787596 530.3427602181067 127.04639978027345 566.3854720775897 127.04639978027345C 602.4281839370727 127.04639978027345 633.3219369594867 156.16119972991942 669.3646488189697 156.16119972991942C 669.3646488189697 156.16119972991942 669.3646488189697 156.16119972991942 669.3646488189697 264.6799995422363 L 0 264.6799995422363z"
													fill="url(#SvgjsLinearGradient1022)" fill-opacity="1"
													stroke="none" stroke-opacity="1" stroke-linecap="butt"
													stroke-width="0" stroke-dasharray="0"
													class="apexcharts-area" index="1"
													clip-path="url(#gridRectMaskqva968az)"
													pathTo="M 0 235.56519959259032C 54.06406778922448 235.56519959259032 100.40469732284546 179.9823996887207 154.46876511206995 179.9823996887207C 190.51147697155292 179.9823996887207 221.4052299939669 145.57399974823 257.4479418534499 145.57399974823C 293.49065371293284 145.57399974823 324.38440673534683 179.9823996887207 360.42711859482984 179.9823996887207C 396.46983045431284 179.9823996887207 427.36358347672683 174.68879969787596 463.4062953362098 174.68879969787596C 499.44900719569273 174.68879969787596 530.3427602181067 127.04639978027345 566.3854720775897 127.04639978027345C 602.4281839370727 127.04639978027345 633.3219369594867 156.16119972991942 669.3646488189697 156.16119972991942C 669.3646488189697 156.16119972991942 669.3646488189697 156.16119972991942 669.3646488189697 264.6799995422363 L 0 264.6799995422363z"
													pathFrom="M 0 235.56519959259032C 54.06406778922448 235.56519959259032 100.40469732284546 179.9823996887207 154.46876511206995 179.9823996887207C 190.51147697155292 179.9823996887207 221.4052299939669 145.57399974823 257.4479418534499 145.57399974823C 293.49065371293284 145.57399974823 324.38440673534683 179.9823996887207 360.42711859482984 179.9823996887207C 396.46983045431284 179.9823996887207 427.36358347672683 174.68879969787596 463.4062953362098 174.68879969787596C 499.44900719569273 174.68879969787596 530.3427602181067 127.04639978027345 566.3854720775897 127.04639978027345C 602.4281839370727 127.04639978027345 633.3219369594867 156.16119972991942 669.3646488189697 156.16119972991942C 669.3646488189697 156.16119972991942 669.3646488189697 156.16119972991942 669.3646488189697 264.6799995422363 L 0 264.6799995422363zz"></path>
												<path
													d="M 0 235.56519959259032C 54.06406778922448 235.56519959259032 100.40469732284546 179.9823996887207 154.46876511206995 179.9823996887207C 190.51147697155292 179.9823996887207 221.4052299939669 145.57399974823 257.4479418534499 145.57399974823C 293.49065371293284 145.57399974823 324.38440673534683 179.9823996887207 360.42711859482984 179.9823996887207C 396.46983045431284 179.9823996887207 427.36358347672683 174.68879969787596 463.4062953362098 174.68879969787596C 499.44900719569273 174.68879969787596 530.3427602181067 127.04639978027345 566.3854720775897 127.04639978027345C 602.4281839370727 127.04639978027345 633.3219369594867 156.16119972991942 669.3646488189697 156.16119972991942"
													fill="none" fill-opacity="1" stroke="#2eca6a"
													stroke-opacity="1" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" class="apexcharts-area" index="1"
													clip-path="url(#gridRectMaskqva968az)"
													pathTo="M 0 235.56519959259032C 54.06406778922448 235.56519959259032 100.40469732284546 179.9823996887207 154.46876511206995 179.9823996887207C 190.51147697155292 179.9823996887207 221.4052299939669 145.57399974823 257.4479418534499 145.57399974823C 293.49065371293284 145.57399974823 324.38440673534683 179.9823996887207 360.42711859482984 179.9823996887207C 396.46983045431284 179.9823996887207 427.36358347672683 174.68879969787596 463.4062953362098 174.68879969787596C 499.44900719569273 174.68879969787596 530.3427602181067 127.04639978027345 566.3854720775897 127.04639978027345C 602.4281839370727 127.04639978027345 633.3219369594867 156.16119972991942 669.3646488189697 156.16119972991942"
													pathFrom="M 0 235.56519959259032C 54.06406778922448 235.56519959259032 100.40469732284546 179.9823996887207 154.46876511206995 179.9823996887207C 190.51147697155292 179.9823996887207 221.4052299939669 145.57399974823 257.4479418534499 145.57399974823C 293.49065371293284 145.57399974823 324.38440673534683 179.9823996887207 360.42711859482984 179.9823996887207C 396.46983045431284 179.9823996887207 427.36358347672683 174.68879969787596 463.4062953362098 174.68879969787596C 499.44900719569273 174.68879969787596 530.3427602181067 127.04639978027345 566.3854720775897 127.04639978027345C 602.4281839370727 127.04639978027345 633.3219369594867 156.16119972991942 669.3646488189697 156.16119972991942"
													fill-rule="evenodd"></path>
												<g
													class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown"
													data:realIndex="1">
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 0, 235.56519959259032 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#2eca6a" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="0" cy="235.56519959259032"
													shape="circle"
													class="apexcharts-marker no-pointer-events w6n2goi16"
													rel="0" j="0" index="1" default-marker-size="4"></path>
												<path
													d="M 154.46876511206995, 179.9823996887207 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#2eca6a" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="154.46876511206995"
													cy="179.9823996887207" shape="circle"
													class="apexcharts-marker no-pointer-events wns7www57"
													rel="1" j="1" index="1" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 257.4479418534499, 145.57399974823 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#2eca6a" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="257.4479418534499"
													cy="145.57399974823" shape="circle"
													class="apexcharts-marker no-pointer-events wdvlg1brmg"
													rel="2" j="2" index="1" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 360.42711859482984, 179.9823996887207 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#2eca6a" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="360.42711859482984"
													cy="179.9823996887207" shape="circle"
													class="apexcharts-marker no-pointer-events wzk2mqmzz"
													rel="3" j="3" index="1" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 463.4062953362098, 174.68879969787596 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#2eca6a" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="463.4062953362098"
													cy="174.68879969787596" shape="circle"
													class="apexcharts-marker no-pointer-events w0x40mrk3"
													rel="4" j="4" index="1" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 566.3854720775897, 127.04639978027345 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#2eca6a" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="566.3854720775897"
													cy="127.04639978027345" shape="circle"
													class="apexcharts-marker no-pointer-events wm8fltj7v"
													rel="5" j="5" index="1" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 669.3646488189697, 156.16119972991942 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#2eca6a" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="669.3646488189697"
													cy="156.16119972991942" shape="circle"
													class="apexcharts-marker no-pointer-events w02fwfum9"
													rel="6" j="6" index="1" default-marker-size="4"></path></g></g></g>
												<g class="apexcharts-series" zIndex="2"
													seriesName="Customers" data:longestSeries="true" rel="3"
													data:realIndex="2">
												<path
													d="M 0 224.97799961090087C 54.06406778922448 224.97799961090087 100.40469732284546 235.56519959259032 154.46876511206995 235.56519959259032C 190.51147697155292 235.56519959259032 221.4052299939669 179.9823996887207 257.4479418534499 179.9823996887207C 293.49065371293284 179.9823996887207 324.38440673534683 217.03759962463377 360.42711859482984 217.03759962463377C 396.46983045431284 217.03759962463377 427.36358347672683 240.85879958343506 463.4062953362098 240.85879958343506C 499.44900719569273 240.85879958343506 530.3427602181067 201.1567996520996 566.3854720775897 201.1567996520996C 602.4281839370727 201.1567996520996 633.3219369594867 235.56519959259032 669.3646488189697 235.56519959259032C 669.3646488189697 235.56519959259032 669.3646488189697 235.56519959259032 669.3646488189697 264.6799995422363 L 0 264.6799995422363z"
													fill="url(#SvgjsLinearGradient1023)" fill-opacity="1"
													stroke="none" stroke-opacity="1" stroke-linecap="butt"
													stroke-width="0" stroke-dasharray="0"
													class="apexcharts-area" index="2"
													clip-path="url(#gridRectMaskqva968az)"
													pathTo="M 0 224.97799961090087C 54.06406778922448 224.97799961090087 100.40469732284546 235.56519959259032 154.46876511206995 235.56519959259032C 190.51147697155292 235.56519959259032 221.4052299939669 179.9823996887207 257.4479418534499 179.9823996887207C 293.49065371293284 179.9823996887207 324.38440673534683 217.03759962463377 360.42711859482984 217.03759962463377C 396.46983045431284 217.03759962463377 427.36358347672683 240.85879958343506 463.4062953362098 240.85879958343506C 499.44900719569273 240.85879958343506 530.3427602181067 201.1567996520996 566.3854720775897 201.1567996520996C 602.4281839370727 201.1567996520996 633.3219369594867 235.56519959259032 669.3646488189697 235.56519959259032C 669.3646488189697 235.56519959259032 669.3646488189697 235.56519959259032 669.3646488189697 264.6799995422363 L 0 264.6799995422363z"
													pathFrom="M 0 224.97799961090087C 54.06406778922448 224.97799961090087 100.40469732284546 235.56519959259032 154.46876511206995 235.56519959259032C 190.51147697155292 235.56519959259032 221.4052299939669 179.9823996887207 257.4479418534499 179.9823996887207C 293.49065371293284 179.9823996887207 324.38440673534683 217.03759962463377 360.42711859482984 217.03759962463377C 396.46983045431284 217.03759962463377 427.36358347672683 240.85879958343506 463.4062953362098 240.85879958343506C 499.44900719569273 240.85879958343506 530.3427602181067 201.1567996520996 566.3854720775897 201.1567996520996C 602.4281839370727 201.1567996520996 633.3219369594867 235.56519959259032 669.3646488189697 235.56519959259032C 669.3646488189697 235.56519959259032 669.3646488189697 235.56519959259032 669.3646488189697 264.6799995422363 L 0 264.6799995422363zz"></path>
												<path
													d="M 0 224.97799961090087C 54.06406778922448 224.97799961090087 100.40469732284546 235.56519959259032 154.46876511206995 235.56519959259032C 190.51147697155292 235.56519959259032 221.4052299939669 179.9823996887207 257.4479418534499 179.9823996887207C 293.49065371293284 179.9823996887207 324.38440673534683 217.03759962463377 360.42711859482984 217.03759962463377C 396.46983045431284 217.03759962463377 427.36358347672683 240.85879958343506 463.4062953362098 240.85879958343506C 499.44900719569273 240.85879958343506 530.3427602181067 201.1567996520996 566.3854720775897 201.1567996520996C 602.4281839370727 201.1567996520996 633.3219369594867 235.56519959259032 669.3646488189697 235.56519959259032"
													fill="none" fill-opacity="1" stroke="#ff771d"
													stroke-opacity="1" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" class="apexcharts-area" index="2"
													clip-path="url(#gridRectMaskqva968az)"
													pathTo="M 0 224.97799961090087C 54.06406778922448 224.97799961090087 100.40469732284546 235.56519959259032 154.46876511206995 235.56519959259032C 190.51147697155292 235.56519959259032 221.4052299939669 179.9823996887207 257.4479418534499 179.9823996887207C 293.49065371293284 179.9823996887207 324.38440673534683 217.03759962463377 360.42711859482984 217.03759962463377C 396.46983045431284 217.03759962463377 427.36358347672683 240.85879958343506 463.4062953362098 240.85879958343506C 499.44900719569273 240.85879958343506 530.3427602181067 201.1567996520996 566.3854720775897 201.1567996520996C 602.4281839370727 201.1567996520996 633.3219369594867 235.56519959259032 669.3646488189697 235.56519959259032"
													pathFrom="M 0 224.97799961090087C 54.06406778922448 224.97799961090087 100.40469732284546 235.56519959259032 154.46876511206995 235.56519959259032C 190.51147697155292 235.56519959259032 221.4052299939669 179.9823996887207 257.4479418534499 179.9823996887207C 293.49065371293284 179.9823996887207 324.38440673534683 217.03759962463377 360.42711859482984 217.03759962463377C 396.46983045431284 217.03759962463377 427.36358347672683 240.85879958343506 463.4062953362098 240.85879958343506C 499.44900719569273 240.85879958343506 530.3427602181067 201.1567996520996 566.3854720775897 201.1567996520996C 602.4281839370727 201.1567996520996 633.3219369594867 235.56519959259032 669.3646488189697 235.56519959259032"
													fill-rule="evenodd"></path>
												<g
													class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown"
													data:realIndex="2">
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 0, 224.97799961090087 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#ff771d" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="0" cy="224.97799961090087"
													shape="circle"
													class="apexcharts-marker no-pointer-events wxcuifp2p"
													rel="0" j="0" index="2" default-marker-size="4"></path>
												<path
													d="M 154.46876511206995, 235.56519959259032 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#ff771d" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="154.46876511206995"
													cy="235.56519959259032" shape="circle"
													class="apexcharts-marker no-pointer-events wgzwtm3m7"
													rel="1" j="1" index="2" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 257.4479418534499, 179.9823996887207 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#ff771d" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="257.4479418534499"
													cy="179.9823996887207" shape="circle"
													class="apexcharts-marker no-pointer-events w6m2u3rs7"
													rel="2" j="2" index="2" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 360.42711859482984, 217.03759962463377 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#ff771d" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="360.42711859482984"
													cy="217.03759962463377" shape="circle"
													class="apexcharts-marker no-pointer-events wcf0kw20l"
													rel="3" j="3" index="2" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 463.4062953362098, 240.85879958343506 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#ff771d" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="463.4062953362098"
													cy="240.85879958343506" shape="circle"
													class="apexcharts-marker no-pointer-events w87qrlbuu"
													rel="4" j="4" index="2" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 566.3854720775897, 201.1567996520996 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#ff771d" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="566.3854720775897"
													cy="201.1567996520996" shape="circle"
													class="apexcharts-marker no-pointer-events w3fjzmoaq"
													rel="5" j="5" index="2" default-marker-size="4"></path></g>
												<g class="apexcharts-series-markers"
													clip-path="url(#gridRectMarkerMaskqva968az)">
												<path
													d="M 669.3646488189697, 235.56519959259032 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0"
													fill="#ff771d" fill-opacity="1" stroke="#ffffff"
													stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2"
													stroke-dasharray="0" cx="669.3646488189697"
													cy="235.56519959259032" shape="circle"
													class="apexcharts-marker no-pointer-events w2xqx30w9"
													rel="6" j="6" index="2" default-marker-size="4"></path></g></g></g>
												<g class="apexcharts-datalabels" data:realIndex="0"></g>
												<g class="apexcharts-datalabels" data:realIndex="1"></g>
												<g class="apexcharts-datalabels" data:realIndex="2"></g></g>
												<line x1="0" y1="0" x2="669.3646488189697" y2="0"
													stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1"
													stroke-linecap="butt" class="apexcharts-ycrosshairs"></line>
												<line x1="0" y1="0" x2="669.3646488189697" y2="0"
													stroke="#b6b6b6" stroke-dasharray="0" stroke-width="0"
													stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line>
												<g class="apexcharts-xaxis" transform="translate(0, 0)">
												<g class="apexcharts-xaxis-texts-g"
													transform="translate(0, -4)">
												<text x="0" y="292.6799995422363" text-anchor="middle"
													dominant-baseline="auto" font-size="12px"
													font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-xaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>00:00</tspan>
												<title>00:00</title></text>
												<text x="102.97917674137996" y="292.6799995422363"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-xaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>01:00</tspan>
												<title>01:00</title></text>
												<text x="205.95835348275992" y="292.6799995422363"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-xaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>02:00</tspan>
												<title>02:00</title></text>
												<text x="308.9375302241399" y="292.6799995422363"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-xaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>03:00</tspan>
												<title>03:00</title></text>
												<text x="411.91670696551984" y="292.6799995422363"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-xaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>04:00</tspan>
												<title>04:00</title></text>
												<text x="514.8958837068998" y="292.6799995422363"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-xaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>05:00</tspan>
												<title>05:00</title></text>
												<text x="617.8750604482798" y="292.6799995422363"
													text-anchor="middle" dominant-baseline="auto"
													font-size="12px" font-family="Helvetica, Arial, sans-serif"
													font-weight="400" fill="#373d3f"
													class="apexcharts-text apexcharts-xaxis-label "
													style="font-family: Helvetica, Arial, sans-serif;">
												<tspan>06:00</tspan>
												<title>06:00</title></text></g></g>
												<g class="apexcharts-yaxis-annotations"></g>
												<g class="apexcharts-xaxis-annotations"></g>
												<g class="apexcharts-point-annotations"></g></g>
												<rect width="0" height="0" x="0" y="0" rx="0" ry="0"
													opacity="1" stroke-width="0" stroke="none"
													stroke-dasharray="0" fill="#fefefe"
													class="apexcharts-zoom-rect"></rect>
												<rect width="0" height="0" x="0" y="0" rx="0" ry="0"
													opacity="1" stroke-width="0" stroke="none"
													stroke-dasharray="0" fill="#fefefe"
													class="apexcharts-selection-rect"></rect></svg>
											<div class="apexcharts-tooltip apexcharts-theme-light"
												style="left: 318.083px; top: 184.982px;">
												<div class="apexcharts-tooltip-title"
													style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">19/09/18
													02:30</div>
												<div
													class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-0 apexcharts-active"
													style="order: 1; display: flex;">
													<span class="apexcharts-tooltip-marker" shape="circle"
														style="color: rgb(65, 84, 241);"></span>
													<div class="apexcharts-tooltip-text"
														style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">
														<div class="apexcharts-tooltip-y-group">
															<span class="apexcharts-tooltip-text-y-label">Sales:
															</span><span class="apexcharts-tooltip-text-y-value">28</span>
														</div>
														<div class="apexcharts-tooltip-goals-group">
															<span class="apexcharts-tooltip-text-goals-label"></span><span
																class="apexcharts-tooltip-text-goals-value"></span>
														</div>
														<div class="apexcharts-tooltip-z-group">
															<span class="apexcharts-tooltip-text-z-label"></span><span
																class="apexcharts-tooltip-text-z-value"></span>
														</div>
													</div>
												</div>
												<div
													class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-1 apexcharts-active"
													style="order: 2; display: flex;">
													<span class="apexcharts-tooltip-marker" shape="circle"
														style="color: rgb(46, 202, 106);"></span>
													<div class="apexcharts-tooltip-text"
														style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">
														<div class="apexcharts-tooltip-y-group">
															<span class="apexcharts-tooltip-text-y-label">Revenue:
															</span><span class="apexcharts-tooltip-text-y-value">45</span>
														</div>
														<div class="apexcharts-tooltip-goals-group">
															<span class="apexcharts-tooltip-text-goals-label"></span><span
																class="apexcharts-tooltip-text-goals-value"></span>
														</div>
														<div class="apexcharts-tooltip-z-group">
															<span class="apexcharts-tooltip-text-z-label"></span><span
																class="apexcharts-tooltip-text-z-value"></span>
														</div>
													</div>
												</div>
												<div
													class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-2 apexcharts-active"
													style="order: 3; display: flex;">
													<span class="apexcharts-tooltip-marker" shape="circle"
														style="color: rgb(255, 119, 29);"></span>
													<div class="apexcharts-tooltip-text"
														style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">
														<div class="apexcharts-tooltip-y-group">
															<span class="apexcharts-tooltip-text-y-label">Customers:
															</span><span class="apexcharts-tooltip-text-y-value">32</span>
														</div>
														<div class="apexcharts-tooltip-goals-group">
															<span class="apexcharts-tooltip-text-goals-label"></span><span
																class="apexcharts-tooltip-text-goals-value"></span>
														</div>
														<div class="apexcharts-tooltip-z-group">
															<span class="apexcharts-tooltip-text-z-label"></span><span
																class="apexcharts-tooltip-text-z-value"></span>
														</div>
													</div>
												</div>
											</div>
											<div
												class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light"
												style="left: 251.746px; top: 296.68px;">
												<div class="apexcharts-xaxistooltip-text"
													style="font-family: Helvetica, Arial, sans-serif; font-size: 12px; min-width: 73.6837px;">19/09/18
													02:30</div>
											</div>
											<div
												class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
												<div class="apexcharts-yaxistooltip-text"></div>
											</div>
										</div>
									</div>

									<script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
									<!-- End Line Chart -->

								</div>

							</div>
						</div>
						<!-- End Reports -->

						<!-- Recent Sales -->
						<div class="col-12">
							<div class="card recent-sales overflow-auto">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Recent Sales <span>| Today</span>
									</h5>

									<div
										class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
										<div class="datatable-top">
											<div class="datatable-dropdown">
												<label> <select class="datatable-selector"
													name="per-page"><option value="5">5</option>
														<option value="10" selected="">10</option>
														<option value="15">15</option>
														<option value="-1">All</option></select> entries per page
												</label>
											</div>
											<div class="datatable-search">
												<input class="datatable-input" placeholder="Search..."
													type="search" name="search" title="Search within table">
											</div>
										</div>
										<div class="datatable-container">
											<table
												class="table table-borderless datatable datatable-table">
												<thead>
													<tr>
														<th scope="col" data-sortable="true"
															style="width: 10.758620689655173%;"><button
																class="datatable-sorter">#</button></th>
														<th scope="col" data-sortable="true"
															style="width: 23.448275862068964%;"><button
																class="datatable-sorter">Customer</button></th>
														<th scope="col" data-sortable="true"
															style="width: 39.310344827586206%;"><button
																class="datatable-sorter">Product</button></th>
														<th scope="col" data-sortable="true"
															style="width: 11.724137931034482%;"><button
																class="datatable-sorter">Price</button></th>
														<th scope="col" data-sortable="true" class="red"
															style="width: 14.758620689655173%;"><button
																class="datatable-sorter">Status</button></th>
													</tr>
												</thead>
												<tbody>
													<tr data-index="0">
														<td scope="row"><a href="#">#2457</a></td>
														<td>Brandon Jacob</td>
														<td><a href="#" class="text-primary">At
																praesentium minu</a></td>
														<td>$64</td>
														<td class="green"><span class="badge bg-success">Approved</span></td>
													</tr>
													<tr data-index="1">
														<td scope="row"><a href="#">#2147</a></td>
														<td>Bridie Kessler</td>
														<td><a href="#" class="text-primary">Blanditiis
																dolor omnis similique</a></td>
														<td>$47</td>
														<td class="green"><span class="badge bg-warning">Pending</span></td>
													</tr>
													<tr data-index="2">
														<td scope="row"><a href="#">#2049</a></td>
														<td>Ashleigh Langosh</td>
														<td><a href="#" class="text-primary">At
																recusandae consectetur</a></td>
														<td>$147</td>
														<td class="green"><span class="badge bg-success">Approved</span></td>
													</tr>
													<tr data-index="3">
														<td scope="row"><a href="#">#2644</a></td>
														<td>Angus Grady</td>
														<td><a href="#" class="text-primar">Ut voluptatem
																id earum et</a></td>
														<td>$67</td>
														<td class="green"><span class="badge bg-danger">Rejected</span></td>
													</tr>
													<tr data-index="4">
														<td scope="row"><a href="#">#2644</a></td>
														<td>Raheem Lehner</td>
														<td><a href="#" class="text-primary">Sunt
																similique distinctio</a></td>
														<td>$165</td>
														<td class="green"><span class="badge bg-success">Approved</span></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="datatable-bottom">
											<div class="datatable-info">Showing 1 to 5 of 5 entries</div>
											<nav class="datatable-pagination">
												<ul class="datatable-pagination-list"></ul>
											</nav>
										</div>
									</div>

								</div>

							</div>
						</div>
						<!-- End Recent Sales -->

						<!-- Top Selling -->
						<div class="col-12">
							<div class="card top-selling overflow-auto">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body pb-0">
									<h5 class="card-title">
										Top Selling <span>| Today</span>
									</h5>

									<table class="table table-borderless">
										<thead>
											<tr>
												<th scope="col">Preview</th>
												<th scope="col">Product</th>
												<th scope="col">Price</th>
												<th scope="col">Sold</th>
												<th scope="col">Revenue</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row"><a href="#"><img
														src="assets/img/product-1.jpg" alt=""></a></th>
												<td><a href="#" class="text-primary fw-bold">Ut
														inventore ipsa voluptas nulla</a></td>
												<td>$64</td>
												<td class="fw-bold">124</td>
												<td>$5,828</td>
											</tr>
											<tr>
												<th scope="row"><a href="#"><img
														src="assets/img/product-2.jpg" alt=""></a></th>
												<td><a href="#" class="text-primary fw-bold">Exercitationem
														similique doloremque</a></td>
												<td>$46</td>
												<td class="fw-bold">98</td>
												<td>$4,508</td>
											</tr>
											<tr>
												<th scope="row"><a href="#"><img
														src="assets/img/product-3.jpg" alt=""></a></th>
												<td><a href="#" class="text-primary fw-bold">Doloribus
														nisi exercitationem</a></td>
												<td>$59</td>
												<td class="fw-bold">74</td>
												<td>$4,366</td>
											</tr>
											<tr>
												<th scope="row"><a href="#"><img
														src="assets/img/product-4.jpg" alt=""></a></th>
												<td><a href="#" class="text-primary fw-bold">Officiis
														quaerat sint rerum error</a></td>
												<td>$32</td>
												<td class="fw-bold">63</td>
												<td>$2,016</td>
											</tr>
											<tr>
												<th scope="row"><a href="#"><img
														src="assets/img/product-5.jpg" alt=""></a></th>
												<td><a href="#" class="text-primary fw-bold">Sit
														unde debitis delectus repellendus</a></td>
												<td>$79</td>
												<td class="fw-bold">41</td>
												<td>$3,239</td>
											</tr>
										</tbody>
									</table>

								</div>

							</div>
						</div>
						<!-- End Top Selling -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>

	</main>

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>