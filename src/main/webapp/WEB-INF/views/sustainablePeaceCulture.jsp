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
								<li ><a href="/SpringMVCHibernateManyToManyCRUDExample/" class="hvr-sweep-to-bottom">Inicio</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/ODS" class="hvr-sweep-to-bottom">ODS</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/forum" class="hvr-sweep-to-bottom">Foro</a></li>
								<li class="active"><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Temas<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableDevelopment">�Que es el desarollo sostenible?</a></li>
										<li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableLives">Modelos de vida sostenibles</a></li>
										<li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableGenerViolence">Violencia de genero</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableRights">Derechos humanos</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainablePeaceCulture">Cultura de paz y no violencia</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableWorlds">Cuidadania mundial</a></li>
                                                                                <li><a class="hvr-sweep-to-bottom" href="/SpringMVCHibernateManyToManyCRUDExample/sustainableDiversity">Diversidad cultural</a></li>
									</ul>
								</li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/organizations" class="hvr-sweep-to-bottom">Organizaciones</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/reports" class="hvr-sweep-to-bottom">�Necesitas ayuda?</a></li>
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
            <br><h3>Cultura de Paz y No Violencia</h3><br>
        </div>
        <div>
            <p> 
                <img src="static/imagenes/culturadepaz.jpg" align="right"><br><br>La construcci�n de una cultura de paz y desarrollo sostenible es uno de los objetivos principales del mandato de la UNESCO. La formaci�n y la investigaci�n para el desarrollo sostenible est�n entre sus prioridades, as� como la educaci�n para los derechos humanos, las competencias en materia de relaciones pac�ficas, la buena gobernanza, la memoria del Holocausto, la prevenci�n de conflictos y la consolidaci�n de la paz.
                Desde 1945, la UNESCO promueve el derecho a la educaci�n de calidad y los avances cient�ficos aplicados al desarrollo de los conocimientos y capacidades requeridos para lograr el progreso econ�mico y social y alcanzar la paz y el desarrollo sostenible.                                                          
                La cooperaci�n internacional se fomenta a trav�s de programas para gestionar espacios transfronterizos tales como los sitios del patrimonio mundial, las reservas de biosfera, los geoparques y los recursos h�dricos transfronterizos, adem�s de los programas como ?Agua para la Paz? o ?Del conflicto potencial al potencial de cooperaci�n? (PCCP). Las ONU design� a la UNESCO coordinadora del A�o Internacional de la cooperaci�n en la esfera del agua (2013)(link is external), destinado a promover una cooperaci�n m�s estrecha entre los pa�ses para dar respuesta al incremento de la demanda de acceso al agua, al reparto de los recursos y a los servicios de abastecimiento.          
            </p>
        </div><br><br><br><br>
            <p>
                <img src="static/imagenes/culturadepaz2.png" align="left">
                        Varios proyectos internacionales establecidos bajo los auspicios de la UNESCO tratan de impulsar la solidaridad y la paz en Oriente Medio gracias a la cooperaci�n cient�fica. Cabe destacar el proyecto SESAME (Centro Internacional de Radiaciones de Sincrotr�n para Ciencias Experimentales y Aplicadas), que es uno de los institutos de investigaci�n m�s ambiciosos de Oriente Medio, y la Organizaci�n Israelo-Palestina para la Ciencia (IPSO).
                        En el �mbito de la ciencia, gracias a su mandato intergubernamental y su composici�n universal, la UNESCO concentra sus actividades en las preocupaciones a escala mundial que requieren la colaboraci�n de varios pa�ses, como los problemas de gesti�n de recursos de agua dulce, la salud de los oc�anos, el cambio clim�tico, las energ�as renovables, la prevenci�n de los desastres naturales, la p�rdida de biodiversidad, y el refuerzo de capacidades en ciencia, tecnolog�a e innovaci�n.
                        Asimismo, se considera que el conocimiento de los derechos y las libertades es una herramienta fundamental que garantiza el respeto de los derechos de todos. El Programa Mundial para la educaci�n en Derechos Humanos(link is external) gu�a el trabajo de la UNESCO en esta materia.
                        Preocupada por el avance del racismo, la xenofobia y la intolerancia, la UNESCO considera que la educaci�n es esencial para fortalecer los fundamentos de la tolerancia y reducir la discriminaci�n y la violencia. El 18 de enero de 2012 vio la luz el proyecto ?Ense�ar el respeto para todos?, una iniciativa conjunta de la UNESCO, los Estados Unidos de Am�rica y Brasil que trata de concebir un marco pedag�gico para luchar contra el racismo y fomentar la tolerancia adaptable al contexto y las necesidades de cada pa�s.
                        La UNESCO reconoce igualmente la necesidad de ense�ar las lecciones del Holocausto para cimentar el respeto de los derechos humanos, las libertades fundamentales y valores como la tolerancia y el respeto mutuo. Se anima a los Estados Miembros de la Organizaci�n de las Naciones Unidas a elaborar programas educativos que transmitan la memoria del Holocausto a las generaciones futuras para evitar que el genocidio se repita. La UNESCO pone a disposici�n herramientas pedag�gicas y una plataforma educativa para que los centros docentes, los profesores, los estudiantes y otras partes interesadas tengan acceso a los recursos educativos para perpetuar la memoria del Holocausto.
        </center>
    	<!-- footer -->
	<div class="footer">
		<div class="copyright">
			<p>� 2019 Desarrollo Sostenible. All rights reserved</p>
		</div>
	</div>
	<!-- //footer -->  
    </body>
</html>
