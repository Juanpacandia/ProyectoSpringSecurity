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
            <br><h3>¿QUÉ SON LOS DERECHOS HUMANOS?</h3><br><br>
        </div>
        <div>
            <p> 
                <img src="static/imagenes/derechoshumanos.png" align="right"><br><br>Los derechos humanos son derechos inherentes a todos los seres humanos, sin distinción alguna de raza, sexo, nacionalidad, origen étnico, lengua, religión o cualquier otra condición. Entre los derechos humanos se incluyen el derecho a la vida y a la libertad; a no estar sometido ni a esclavitud ni a torturas; a la libertad de opinión y de expresión; a la educación y al trabajo, entre otros muchos. Estos derechos corresponden a todas las personas, sin discriminación alguna.<br><br><br><br>
            </p>
        </div>
        <div>
            <h3>Derecho internacional de los derechos humanos</h3><br><br>
            <p>
                <img src="static/imagenes/derechos.jpg" align="left">
                El derecho internacional de los derechos humanos establece la obligación de los Gobiernos a actuar de una manera determinada o abstenerse de emprender ciertas acciones, para promover y proteger los derechos humanos y las libertades fundamentales de los individuos o de los grupos.
                Uno de los grandes logros de las Naciones Unidas es la creación de una normativa integral sobre los derechos humanos: un código protegido a nivel universal e internacional al que todas las naciones pueden adherirse y al que toda persona aspira. Las Naciones Unidas han definido un amplio abanico de derechos aceptados internacionalmente, entre los que se encuentran derechos de carácter civil, cultural, económico, político y social. También han establecido mecanismos para promover y proteger estos derechos y para ayudar a los Estados a ejercer sus responsabilidades.
                Los cimientos de este cuerpo normativo se encuentran en la Carta de las Naciones Unidas y en la Declaración Universal de los Derechos Humanos, aprobadas por la Asamblea General en 1945 y 1948, respectivamente. Desde entonces, las Naciones Unidas han ido ampliando el derecho de los derechos humanos para incluir normas específicas relacionadas con las mujeres, los niños, las personas con discapacidad, las minorías y otros grupos vulnerables, que ahora poseen derechos que los protegen frente a la discriminación que durante mucho tiempo ha sido común dentro de numerosas sociedades.             
            </p>
        </div>
        </center>
    <div id="features" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h2>Declaración Universal de los Derechos Humanos</h2>
                <p>La Declaración Universal de los Derechos Humanos (DUDH) es un documento que marca un hito en la historia de los derechos humanos. Redactada por representantes de todas las regiones del mundo de diferentes culturas y tradiciones jurídicas, la Declaración fue proclamada por la Asamblea General de las Naciones Unidas en París, el 10 de diciembre de 1948 en su Resolución 217 A (III) como un ideal común para todos los pueblos y naciones. Estableció, por primera vez, derechos humanos fundamentales que deben protegerse universalmente. Desde su aprobación en 1948, la DUDH se ha traducido a más de 501 idiomas. Es el documento más traducido del mundo, y ha servido de inspiración para las constituciones de muchos nuevos Estados independientes, así como para numerosas nuevas democracias. Junto con el  Pacto Internacional de Derechos Civiles y Políticos y sus dos Protocolos Facultativos (sobre el procedimiento de denuncia y sobre la pena de muerte); y con el Pacto Internacional de Derechos Económicos, Sociales y Culturales y su Protocolo Facultativo, la Declaración Universal de los Derechos Humanos forman la conocida como Carta Internacional de Derechos Humanos.</p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <ul class="features-left">
                            <div class="fl-inner text-center">
                                <h2>Derechos económicos, sociales y culturales</h2>                            
                            </div>
                        </li>
                        <li class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.3s">
                            <i class="flaticon-windows"></i>
                            <div class="fl-inner">
                                <h4>El Pacto Internacional de Derechos Económicos, Sociales y Culturales entró en vigor en 1976 y, a finales de octubre de 2016, ya contaba con 164 Estados parte. Entre los derechos humanos que este Pacto busca promover y proteger se encuentran:</h4>
                            </div>
                        </li>
                        <li class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.4s">
                            <i class="flaticon-price-tag"></i>
                            <div class="fl-inner">
                                <p>el derecho a trabajar en unas condiciones justas y favorables;</p>
                            </div>
                        </li>
                        <li class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.5s">
                            <i class="flaticon-new-file"></i>
                            <div class="fl-inner">
                                <p>el derecho a la protección social, a un nivel de vida adecuado y al disfrute del más alto nivel posible de salud física y mental;</p>
                            </div>
                        </li>
                        <li>
                            <i></i>
                            <div>
                                <p>el derecho a la educación y a gozar de los beneficios derivados de la libertad cultural y el progreso científico.</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 hidden-xs hidden-sm"><br>
                    <img src="static/imagenes/derechosani.jpg" class="img-center img-fluid" alt="">
                </div>
                <div class="col-lg-7 col-md-4 col-sm-11">
                    <ul class="features-right">
                            <div class="fr-inner text-center">
                                <h2>Derechos civiles y políticos</h2>
                            </div>
                        <li class="wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s">
                            <i class="flaticon-cloud-computing"></i>
                            <div class="fr-inner">
                                <h4>El Pacto Internacional de Derechos Civiles y Políticos y su primer Protocolo Facultativo entraron en vigor en 1976. Este Pacto contaba con 167 Estados parte a finales de 2010. El Segundo Protocolo Facultativo fue aprobado en 1989.</h4>
                            </div>
                        </li>
                        <li class="wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.4s">
                            <i class="flaticon-line-graph"></i>
                            <div class="fr-inner">
                                <p>Este bloque de derechos incluye el derecho a la vida; a no ser sometido o sometida a torturas, ni a penas o tratos inhumanos o degradantes, a  esclavitud o servidumbre, ni a trabajo forzoso; el derecho a la libertad y seguridad personal; el derecho de las personas a circular libremente por su país y a salir de cualquier país incluso el propio; el derecho a la no discriminación e igual protección ante la ley.</p>
                            </div>
                        </li>
                    </ul>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
        <div class="footer">
		<div class="copyright">
                    <p>© 2019 Desarrollo Sostenible. All rights reserved</p>
		</div>
	</div>
    </body>
</html>
