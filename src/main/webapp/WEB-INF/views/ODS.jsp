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
                                                    <h1><a><b>Educación de Calidad</b></a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/" class="hvr-sweep-to-bottom">Inicio</a></li>
								<li  class="active"><a href="/SpringMVCHibernateManyToManyCRUDExample/ODS" >ODS</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/forum" class="hvr-sweep-to-bottom">Foro</a></li>
								<li><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Temas<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableDevelopment">¿Que es el desarollo sostenible?</a></li>
										<li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableLives">Modelos de vida sostenibles</a></li>
										<li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableGenerViolence">Violencia de genero</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableRights">Derechos humanos</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainablePeaceCulture">Cultura de paz y no violencia</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableWorlds">Cuidadania mundial</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableDiversity">Diversidad cultural</a></li>
									</ul>
								</li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/organizations" class="hvr-sweep-to-bottom">Organizaciones</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/reports" class="hvr-sweep-to-bottom">¿Necesitas ayuda?</a></li>
                                                                <sec:authorize access="hasRole('ADMIN') or hasRole('ORGNIZATIONS')">
                                                                    <li><a href="/SpringMVCHibernateManyToManyCRUDExample/list" class="hvr-sweep-to-bottom">Consultar </a></li>
                                                                </sec:authorize>
                                                                    <li><a href="<c:url value="/logout" />" class="hvr-sweep-to-bottom">Salir</a></li>
							</ul>
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
	</div>
        <!--//header -->
        <!--//descripcion -->
        <center>
        <div>           
                <h3>¿QUÉ SON LOS OBJETIVOS DE DESARROLLO SOSTENIBLE?</h3><br><br>
        </div>
        <div>
            <p> 
                <img src="../resources/imagenes/ODS.jpg" align="right"><br><br>Los Objetivos de Desarrollo Sostenible, también conocidos como Objetivos Mundiales, se<br>
                        adoptaron por todos los Estados Miembros en 2015 como un llamado universal para poner<br> 
                        fin a la pobreza, proteger el planeta y garantizar que todas las personas gocen de paz y<br>
                        prosperidad para 2030.<br><br>
                        Los 17 ODS están integrados, ya que reconocen que las intervenciones en un área afectarán<br>
                        los resultados de otras y que el desarrollo debe equilibrar la sostenibilidad medio ambiental,<br>
                        económica y social.<br><br>
                        Siguiendo la promesa de no dejar a nadie atrás, los países se han comprometido a acelerar<br>
                        el progreso para aquellos más atrasados. Es por esto que los ODS han sido diseñados para<br>
                        traer al mundo varios ?ceros? que cambien la vida, lo que incluye pobreza cero, hambre<br>
                        cero, SIDA cero y discriminación cero contra las mujeres y niñas.<br><br>
                        Todo el mundo es necesario para alcanzar estos objetivos ambiciosos. Se necesita la<br>
                        creatividad, el conocimiento, la tecnología y los recursos financieros de toda la sociedad<br>
                        para conseguir los ODS en cada contexto.<br><br><br><br>
            </p>
        </div>
        <div>
            <h3>¿CUÁL ES LA FUNCIÓN DEL PNUD?</h3><br><br>
            <p>
                <img src="../resources/imagenes/PNUD1.PNG" align="left">
                Como principal organismo de las Naciones Unidas para el desarrollo, el PNUD tiene una<br>
                posición única para ayudar a implementar los Objetivos a través de nuestro trabajo en unos<br>
                170 países y territorios.<br><br>
                Apoyamos a países a conseguir los ODS con soluciones integradas. Los desafíos complejos<br>
                actuales, que van desde detener el avance de las enfermedades hasta prevenir el conflicto,<br>
                no se pueden tratar de forma eficiente aisladamente. Para el PNUD esto significa centrarse<br>
                en sistemas, causas profundas y conexiones entre desafíos, no solo sectores temáticos,<br>
                para crear soluciones que respondan a las realidades diarias de las personas.<br><br>
                Nuestra trayectoria trabajando con los Objetivos nos ha dotado de una experiencia valiosa<br>
                y probados conocimientos normativos que nos permitirán a todos alcanzar las metas<br>
                establecidas en los ODS de aquí a 2030. Sin embargo, no podemos hacerlo solos,<br>              
            </p>
        </div>
        </center>
	<div class="banner-bottom">
		<div class="container">
			<div class="w3-banner-bottom-heading">
				<h3>Objetivos</h3>
			</div>
			<div class="agileits-banner-bottom">
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						<a title="Objetivo1" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-1-no-poverty.html"><img src="../resources/imagenes/objetivo 1.PNG" alt="Los Tejos" /></a>
                                                <div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 1: Fin de la pobreza</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						
                                                    <a title="Objetivo2" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-2-zero-hunger.html"><img src="../resources/imagenes/objetivo 2.PNG" alt="Los Tejos" /></a>
						
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 2: Hambre cero</h4>							
						</div>
					</div>
				</div>
                            <div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						
                                                    <a title="Objetivo3" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-3-good-health-and-well-being.html"><img src="../resources/imagenes/objetivo 3.PNG" alt="Los Tejos" /></a>
						
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 3: Salud y bienestar</h4>							
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo4" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-4-quality-education.html"><img src="../resources/imagenes/objetivo 4.PNG" alt="Los Tejos" /></a>
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 4: Educación de calidad</h4>							
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
                        <div class="agileits-banner-bottom">
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						<a title="Objetivo5" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-5-gender-equality.html"><img src="../resources/imagenes/objetivo 5.PNG" alt="Los Tejos" /></a>
                                                <div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 5: Igualdad de género</h4>							
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo6" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-6-clean-water-and-sanitation.html"><img src="../resources/imagenes/objetivo 6.PNG" alt="Los Tejos" /></a>
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 6: Agua limpia y saneamiento</h4>							
						</div>
					</div>
				</div>
                            <div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo7" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-7-affordable-and-clean-energy.html"><img src="../resources/imagenes/objetivo 7.PNG" alt="Los Tejos" /></a>						
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 7: Energía no asequible y no contaminable</h4>							
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo8" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-8-decent-work-and-economic-growth.html"><img src="../resources/imagenes/objetivo 8.PNG" alt="Los Tejos" /></a>						
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 8: Trabajo decente y crecimiento económico</h4>							
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
                        <div class="agileits-banner-bottom">
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						<a title="Objetivo9" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-9-industry-innovation-and-infrastructure.html"><img src="../resources/imagenes/objetivo 9.PNG" alt="Los Tejos" /></a>
                                                <div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 9: Industria, innovación e infraestructura</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo10" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-10-reduced-inequalities.html"><img src="../resources/imagenes/objetivo 10.PNG" alt="Los Tejos" /></a>						
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 10: Reducción de las desigualdades</h4>							
						</div>
					</div>
				</div>
                            <div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo11" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-11-sustainable-cities-and-communities.html"><img src="../resources/imagenes/objetivo 11.PNG" alt="Los Tejos" /></a>						
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 11: Ciudades y comunidades sostenibles</h4>							
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo12" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-12-responsible-consumption-and-production.html"><img src="../resources/imagenes/objetivo 12.PNG" alt="Los Tejos" /></a>						
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 12: Producción y consumo responsable</h4>							
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
                        <div class="agileits-banner-bottom">
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">
						<a title="Objetivo13" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-13-climate-action.html"><img src="../resources/imagenes/objetivo 13.PNG" alt="Los Tejos" /></a>
                                                <div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 13: Acción por el clima</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo14" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-14-life-below-water.html"><img src="../resources/imagenes/objetivo 14.PNG" alt="Los Tejos" /></a>
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 14: Vida submarina</h4>							
						</div>
					</div>
				</div>
                            <div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo15" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-15-life-on-land.html"><img src="../resources/imagenes/objetivo 15.PNG" alt="Los Tejos" /></a>
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 15: Vida de ecosistemas terrestres</h4>							
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo16" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-16-peace-justice-and-strong-institutions.html"><img src="../resources/imagenes/objetivo 16.PNG" alt="Los Tejos" /></a>						
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 16: Paz, justicia e instituciones sólidas</h4>							
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
                            <div class="col-md-3 agileits-banner-bottom-grid">
					<div class="services-grid1">						
                                                    <a title="Objetivo17" href="https://www.undp.org/content/undp/es/home/sustainable-development-goals/goal-17-partnerships-for-the-goals.html"><img src="../resources/imagenes/objetivo 17.PNG" alt="Los Tejos" /></a>						
						<div class="services-grid-left agile-services-grid-left">
							<h4>Objetivo 17: Alianza para lograr los objetivos</h4>							
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
                        
		</div>
	</div>
        <div class="footer">
		<div class="copyright">
                    <p>© 2019 Desarrollo Sostenible. All rights reserved</p>
		</div>
	</div>
    </body>
</html>
