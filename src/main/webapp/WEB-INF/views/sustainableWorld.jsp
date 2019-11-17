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
								<li ><a href="/SpringMVCHibernateManyToManyCRUDExample/" class="hvr-sweep-to-bottom">Inicio</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/ODS" class="hvr-sweep-to-bottom">ODS</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/forum" class="hvr-sweep-to-bottom">Foro</a></li>
								<li class="active"><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Temas<span class="caret"></span></a>
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
        <center>
        <div>           
            <br><h3>Educación para la ciudadanía mundial</h3><br>
        </div>
        <div>
            <p> 
                <img src="static/imagenes/mundial1.PNG" align="right"><br><br>A pesar de que el mundo está cada vez más interconectado, la paz y el desarrollo sostenible siguen estando amenazados por las violaciones de los derechos humanos, las desigualdades y la pobreza.<br>
La Educación para la Ciudadanía Mundial (ECM) es la respuesta de la UNESCO a este reto. Mediante su labor, la Organización pone a disposición de los educandos de todas las edades los medios para reflexionar acerca de estos desafíos mundiales, tanto local como globalmente, y para que se vuelvan contribuyentes, en una actitud proactiva, de un mundo más pacífico, tolerante, seguro y sostenible.<br>
La ECM es uno de los ámbitos estratégicos del Programa de Educación de la UNESCO que saca provecho del trabajo llevado a cabo por la Organización en los ámbitos de la paz y los derechos humanos. Tiene como objetivo inculcar a los educandos los valores, las actitudes y los comportamientos que constituyen la base de una ciudadanía mundial responsable: creatividad, innovación y compromiso a favor de la paz, derechos humanos y desarrollo sostenible.<br>        
            </p>
        </div><br><br><br><br>
            <p>
                <img src="static/imagenes/ciudadania.jpg" align="left"><br>
                       La labor llevada a cabo por la UNESCO en este ámbito tiene raíces en el preámbulo de su propia Constitución cuyo objetivo es ?construir la paz en la mente de los hombres y de las mujeres?, en la Declaración Universal de los Derechos Humanos, en la Agenda de Educación 2030 y el marco de acción, fundamentalmente en la meta 4.7 de los Objetivos de Desarrollo Sostenible, en la Recomendación sobre la Educación para la Comprensión, la Cooperación y la Paz y la Educación relativa a los Derechos Humanos y las Libertades Fundamentales (1974) y el Programa mundial para la educación en derechos humanos (2005-en curso).<br>
                        En el ámbito de la EDC, la UNESCO concentra sus esfuerzos en diversos temas específicos: La educación como instrumento para prevenir el extremismo violento, la educación sobre el Holocausto y el genocidio, las lenguas en la educación, a los que se añadirá pronto la formación ciudadana hacia una cultura de la legalidad.<br>
                        La UNESCO garantiza la difusión de la ECM mediante una amplia red mundial integrada fundamentalmente por sus propios institutos y centros de Categoría 1, otras agencias de las Naciones Unidas y organizaciones intergubernamenteles, en particular organizaciones regionales como el Instituto Mahatma Gandhi de Educación para la Paz y el Desarrollo Sostenible de la UNESCO (MGIEP, por sus siglas en inglés), el Instituto Internacional de la UNESCO para el Fortalecimiento de Capacidades en África (IICBA), el Instituto de Estadística de la UNESCO (IEU), el Centro de Asia y el Pacífico de Educación para el Entendimiento Internacional (APCEIU), la Red del Plan de Escuelas Asociadas de la UNESCO (RedPEA) y el Programa UNITWIN y de Cátedras de la UNESCO.<br>
        </center>     
    	<!-- footer -->
	<div class="footer">
		<div class="copyright">
			<p>© 2019 Desarrollo Sostenible. All rights reserved</p>
		</div>
	</div>
	<!-- //footer -->  
    </body>
</html>
