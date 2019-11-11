<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login</title>
                <link href="${pageContext.request.contextPath}/static/css/style.css"rel="stylesheet">
                <link href="${pageContext.request.contextPath}/static/css/bootstrap_1.css"rel="stylesheet">
                <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
                <link href="<c:url value='/static/css/bootstrap_1.css' />" rel="stylesheet">
                <link href="<c:url value='/static/css/style.css' />" rel="stylesheet">
                <link href="<c:url value='/static/css/font-awesome.css' />" rel="stylesheet">
                <link href="<c:url value='/static/css/immersive-slider.css' />" rel="stylesheet">
                <link href="<c:url value='/static/css/jquery.flipster.css' />" rel="stylesheet">
                <script type="text/javascript" src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>
                <script type="text/javascript" src="<c:url value="/static/js/bootstrap.js" />"></script>
                <script type="text/javascript" src="<c:url value="/static/js/SmoothScroll.min.js" />"></script>
                <script type="text/javascript" src="<c:url value="/static/js/jquery.immersive-slider.js" />"></script>
                <script type="text/javascript">
                    jQuery(document).ready(function($) {
                            $(".scroll").click(function(event){		
                                    event.preventDefault();
                                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                            });
                    });
                </script>
        </head>
    <body>
        <!-- header-top -->
	<div class="header-top">
		<div class="container">
			<div class="w3layouts-address">
				<ul>
					<li><i class="fa fa-mobile" aria-hidden="true"></i> +57 3174071823</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:educaciondecalidad@gmail.com"> educaciondecalidad@gmail.com</a></li>
				</ul>
			</div>
			<div class="agileinfo-social-grids">
				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-rss"></i></a></li>
					<li><a href="#"><i class="fa fa-vk"></i></a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
        <!-- //header-top -->
        <!-- header -->
        <div class="header">
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="w3layouts-logo">
                                                    <h1><a><b>Educaci�n de Calidad</b></a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li class="active"><a href="/proyecto_AS">Inicio</a></li>
								<li><a href="/proyecto_AS/views/ODS" class="hvr-sweep-to-bottom">ODS</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/forum" class="hvr-sweep-to-bottom">Foro</a></li>
								<li><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Temas<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a class="hvr-sweep-to-bottom" href="/proyecto_AS/views/sustainableDevelopment">�Que es el desarollo sostenible?</a></li>
										<li><a class="hvr-sweep-to-bottom" href="/proyecto_AS/models/modelslist">Modelos de vida sostenibles</a></li>
										<li><a class="hvr-sweep-to-bottom" href="/proyecto_AS/views/sustainableGenerViolence">Violencia de genero</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/proyecto_AS/views/sustainableRights">Derechos humanos</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/proyecto_AS/views/sustainablePeaceCulture">Cultura de paz y no violencia</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/proyecto_AS/views/sustainableWorld">Cuidadania mundial</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/proyecto_AS/views/sustainableDiversity">Diversidad cultural</a></li>
									</ul>
								</li>
								<li><a href="/proyecto_AS/views/organizations" class="hvr-sweep-to-bottom">Organizaciones</a></li>
								<li><a href="/proyecto_AS/views/reports" class="hvr-sweep-to-bottom">�Necesitas ayuda?</a></li>
                                                                <sec:authorize access="hasRole('ADMIN') or hasRole('ORGNIZATIONS')">
                                                                    <li><a href="/SpringMVCHibernateManyToManyCRUDExample/list" class="hvr-sweep-to-bottom">Consultar </a></li>
                                                                </sec:authorize>
                                                                    <li><a href="/SpringMVCHibernateManyToManyCRUDExample/list" class="hvr-sweep-to-bottom">Salir</a></li>
							</ul>
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
	</div>
        <!--//header -->

        <!-- banner -->
	<div class="main">
		<div class="page_container">
			<div id="immersive_slider">
				  <div class="slide" data-blurred="">
						<div class="col-md-6 image">
							<img src="static/imagenes/Slider1.jpg" alt="Slider 1" />
						</div>
						<div class="col-md-6 content">
							<h3>Desarrollo <span>Sostenible</span></h3>
							<p>La educaci�n es la base para mejorar nuestra vida y el desarrollo sostenible. Adem�s de mejorar la calidad de vida de las personas, el acceso a la educaci�n inclusiva y equitativa puede ayudar abastecer a la poblaci�n local con las herramientas necesarias para desarrollar soluciones innovadoras a los problemas m�s grandes del mundo. </p>
						</div>
						<div class="clearfix"> </div>
				  </div>
				  <div class="slide" data-blurred="">
						<div class="col-md-6 image">
							<img src="static/imagenes/Slider2.jpg" alt="Slider 2" />
						</div>
						<div class="col-md-6 content">
							<h3>Educacion de <span>Calidad</span></h3>
							<p>La educaci�n es la clave para poder alcanzar otros muchos Objetivos de
                                                           Desarrollo Sostenible (ODS). Cuando las personas pueden acceder a
                                                           una educaci�n de calidad, pueden escapar del ciclo de la pobreza. </p>
						</div>
						<div class="clearfix"> </div>
				  </div>
				  <div class="slide" data-blurred="">
						<div class="col-md-6 image">
							<img src="static/imagenes/Slider3.jpg" alt="Slider 3" />
						</div>
						<div class="col-md-6 content">
							<h3>Datos <span>Destacables</span></h3>
                                                        <p>La matriculaci�n en la ense�anza primaria en los pa�ses en desarrollo ha alcanzado el 91%, pero 57 millones de ni�os en edad de escolarizaci�n primaria siguen sin asistir a la escuela</p>
                                                        <p>M�s de la mitad de los ni�os que no est�n matriculados en la escuela viven en el �frica Subsahariana.</p>
						</div>
						<div class="clearfix"> </div>
				  </div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready( function() {
			$("#immersive_slider").immersive_slider({
				  container: ".main"
			});
		});

	</script>
        <!-- //banner -->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="w3-banner-bottom-heading">
				<h3>Cifras <span>importantes</span></h3>
			</div>
			<div class="agileits-banner-bottom">
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						<div class="services-grid-right agile-services-grid-right">
							<div class="services-grid-right-grid hvr-radial-out blue-grid">
								<span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
							</div>
						</div>
						<div class="services-grid-left agile-services-grid-left">
							<h4>91%</h4>
							<p>La matriculaci�n en educaci�n primaria en los pa�ses en desarrollo ha alcanzado el 91%</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						<div class="services-grid-right agile-services-grid-right">
							<div class="services-grid-right-grid hvr-radial-out orange-grid">
								<span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
							</div>
						</div>
						<div class="services-grid-left agile-services-grid-left">
							<h4>57 millones</h4>
							<p>A�n as�, 57 millones de ni�os de edad primaria permanecen fuera de la escuela, 
                                                            m�s de la mitad de ellos en �frica subsahariana.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						<div class="services-grid-right agile-services-grid-right">
							<div class="services-grid-right-grid hvr-radial-out green-grid">
								<span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
							</div>
						</div>
						<div class="services-grid-left agile-services-grid-left">
							<h4>1 de cada 4</h4>
							<p>En los pa�ses en desarrollo, una de cada cuatro ni�as no 
                                                            asiste a la escuela.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						<div class="services-grid-right agile-services-grid-right">
							<div class="services-grid-right-grid hvr-radial-out red-grid">
								<span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
							</div>
						</div>
						<div class="services-grid-left agile-services-grid-left">
							<h4>103 millones</h4>
							<p>103 millones de j�venes en el mundo carecen de 
                                                            habilidades b�sicas de alfabetizaci�n, y m�s del 60% de ellos son mujeres.</p>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //banner-bottom -->
	<!-- choose -->
	<div class="choose jarallax">
		<div class="w3-agile-testimonial">
			<div class="container">
				<div class="w3-agileits-choose">
					<div class="col-md-6 choose-grid">
						<div class="w3-banner-bottom-heading choose-heading">
							<h3>Objetivos<span> en accion</span></h3>
						</div>
						<div class="top-choose-info">
							<div class="choose-info-top">
								<div class="choose-left-grid col-sm-6">
									<div class="choose-info-grid ">
										<ul>
											<li><a href="https://feature.undp.org/global-goals-2019/es/" style="color:#FFFFFF">Semana de los objetivos mundiales.</a></li>
										</ul>
									</div>
								</div>
								<div class="choose-right-grid col-sm-6">
									<div class="choose-info-grid ">
										<ul>
											<li><a href="https://medium.com/@pnud/todo-ha-cambiado-para-siempre-fa98dfdf4bce" style="color:#FFFFFF">Todo ha cambiado para siempre.</a></li>
										</ul>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="choose-info-top">
								<div class="choose-left-grid col-sm-6">
									<div class="choose-info-grid ">
										<ul>
                                                                                        <li><a href="https://www.humanrights70.org/es/" style="color:#FFFFFF">70 a�os de los derechos humanos.</a></li>
										</ul>
									</div>
								</div>
								<div class="choose-right-grid col-sm-6">
									<div class="choose-info-grid ">
										<ul>
											<li><a href="https://stories.undp.org/una-vida-libre-de-parasitos-para-los-ninos-de-tanzania" style="color:#FFFFFF">Cuidando la salud de los ni�os en Tanzania.</a></li>
										</ul>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="choose-info-top">
								<div class="choose-left-grid col-sm-6">
									<div class="choose-info-grid ">
										<ul>
											<li><a href="https://stories.undp.org/" style="color:#FFFFFF">La radio resuena en Laos</a></li>
										</ul>
									</div>
								</div>
								<div class="choose-right-grid col-sm-6">
									<div class="choose-info-grid ">
										<ul>
											<li><a href="https://stories.undp.org/mujeres-que-salvan-vidas" style="color:#FFFFFF">Mujeres que salvan vidas.</a></li>
										</ul>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 choose-grid">
						<div class="w3-banner-bottom-heading choose-heading">
							<h3>Algunas<span> frases</span></h3>
						</div>
						<div class="top-choose-info testimonial-info">
							<div class="wthree-testimonial-grid">
									<div class="slider">
											<div class="callbacks_container">
												<ul class="rslides" id="slider3">
													<li>
														<div class="testimonial-top">
															<i class="fa fa-quote-right" aria-hidden="true"></i>
															<p>Dentro de algunas d�cadas, la relaci�n entre el ambiente, 
                                                                                                                            los recursos y los conflictos ser� tan obvia como la conexi�n 
                                                                                                                            que vemos ahora entre derechos humanos, democracia y paz.</p>
															<h5>Wangari Maathai <span>- Premio Nobel de la Paz 2004</span></h5>
														</div>
													</li>
													<li>
														<div class="testimonial-top">
															<i class="fa fa-quote-right" aria-hidden="true"></i>
															<p>Cuando las generaciones futuras juzguen a las que vinieron antes 
                                                                                                                            respecto a temas ambientales, tal vez lleguen a la conclusi�n de que no sab�an: 
                                                                                                                            evitemos pasar a la historia como las generaciones que s� sab�an, pero no les import� </p>
															<h5>Mikhail Gorbachev <span>- (2002)</span></h5>
														</div>
													</li>
												</ul>
											</div>
											<script>
												// You can also use "$(window).load(function() {"
												$(function () {
												  // Slideshow 4
												  $("#slider3").responsiveSlides({
													auto: true,
													pager:true,
													nav:false,
													speed: 500,
													namespace: "callbacks",
													before: function () {
													  $('.events').append("<li>before event fired.</li>");
													},
													after: function () {
													  $('.events').append("<li>after event fired.</li>");
													}
												  });
											
												});
											 </script>
											<!--banner Slider starts Here-->
									</div>
							</div>

						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //choose -->
	<!-- footer -->
	<div class="footer">
		<div class="copyright">
			<p>� 2019 Desarrollo Sostenible. All rights reserved</p>
		</div>
	</div>
	<!-- //footer -->        
    </body>
</html>
