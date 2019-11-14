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
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/" >Inicio</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/ODS" class="hvr-sweep-to-bottom">ODS</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/forum" class="hvr-sweep-to-bottom">Foro</a></li>
								<li  class="active"><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Temas<span class="caret"></span></a>
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
        <div id="features" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h1><br>¿Que es el desarrollo sostenible?</h1>
                <p class="lead"><br><br>Muchos de los retos a los que se enfrenta el ser humano, tales como el cambio climático, la escasez de
                                agua, las desigualdades o el hambre, solo se pueden resolver desde una perspectiva global y promoviendo
                                el desarrollo sostenible: una apuesta por el progreso social, el equilibrio medioambiental y el crecimiento
                                económico.</p>
                <p class="lead">El desarrollo sostenible es un concepto que aparece por primera vez en 1987 con la publicación del
                                Informe Brundtland, que alertaba de las consecuencias medioambientales negativas del desarrollo
                                económico y la globalización y trataba de buscar posibles soluciones a los problemas derivados de la
                                industrialización y el crecimiento de la población.</p>
            </div>
        </div>
        </div>
        <div id="features" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h2>Ventajas y desventajas</h2>
                <p class="lead">En la actualidad, todos los problemas ambientales de los que somos responsables nos hacen darnos cuenta de que es necesario seguir la tendencia de la sustentabilidad, pero aunque se tengan buenas intenciones y los beneficios a largo plazo mejoren la calidad de vida, todo tiene un costo y tal vez para algunos sectores o personas éste sea muy alto para pagarlo.</p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <ul class="features-left">
                            <div class="fl-inner text-center">
                                <h2>Ventajas</h2>                            
                            </div>
                        </li>
                        <li class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.3s">
                            <i class="flaticon-windows"></i>
                            <div class="fl-inner">
                                <h4>Reactivar el crecimiento</h4>
                                <p>Principalmente en los casos de los países en desarrollo, donde está la mayor parte de la pobreza del mundo, la satisfacción de las necesidades esenciales</p>
                            </div>
                        </li>
                        <li class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.4s">
                            <i class="flaticon-price-tag"></i>
                            <div class="fl-inner">
                                <h4>Atender a las necesidades humanas</h4>
                                <p>Esenciales de empleo, alimento, energía, saneamiento del agua son necesidades básicas cuya atención debe ser buscada con prioridad.</p>
                            </div>
                        </li>
                        <li class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.5s">
                            <i class="flaticon-new-file"></i>
                            <div class="fl-inner">
                                <h4>Easy to Customize</h4>
                                <p>Más que un beneficio es señalado como una de las metas del desarrollo, también es comprendido Como una obligación moral de las generaciones presentes.</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 hidden-xs hidden-sm">
                    <img src="../resources/imagenes/desarrollo.jpg" class="img-center img-fluid" alt="">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <ul class="features-right">
                            <div class="fr-inner text-center">
                                <h2>Desventajas</h2>
                            </div>
                        <li class="wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s">
                            <i class="flaticon-cloud-computing"></i>
                            <div class="fr-inner">
                                <h4>Costos.</h4>
                                <p>A pesar de que las intenciones son buenas, llevarlas a cabo cuesta trabajo porque se trata de reducir o prescindir completamente de energía que ya abastece a una parte de la población por otra nueva </p>
                            </div>
                        </li>
                        <li class="wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.4s">
                            <i class="flaticon-line-graph"></i>
                            <div class="fr-inner">
                                <h4>Desempleo en algunas áreas.</h4>
                                <p>Los cambios para preservar y cuidar los ecosistemas y la biodiversidad puede hacer que varias industrias tengan que reducir sus actividades. </p>
                            </div>
                        </li>
                        <li class="wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                            <i class="flaticon-coding"></i>
                            <div class="fr-inner">
                                <h4>Más requisitos.</h4>
                                <p>Las empresas, plantas, fabricas y demás responsables de afectar el ambiente tendrían más requisitos para funcionar, como reducir sus emisiones de dióxido de carbono. </p>
                            </div>
                        </li>
                    </ul>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
    <div id="features" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h1><br>¿Cómo alcanzar un desarrollo sostenible?</h1>
                <p class="lead"><br><br>El desarrollo sostenible se basa en tres resultados: crecimiento económico, cuidado del medio ambiente y desarrollo social, que equivale a decir prosperidad, planeta y personas. Sin una atención cuidadosa a estos tres componentes, no podemos crear un mundo sostenible.</p>
                <div>
                <div>
                    <h2 align="left"><br>Sostenibilidad ambiental</h2>
                </div>
                <p> 
                <img src="../resources/imagenes/ambiental.PNG" align="right"><br><br>La sostenibilidad ambiental es el equilibrio que se genera a través de la relación armónica entre la sociedad y la naturaleza que lo rodea y de la cual es parte. Esta implica lograr resultados de desarrollo sin amenazar las fuentes de nuestros recursos  naturales y sin comprometer los de las futuras generaciones. En ese sentido, es importante considerar que el aspecto ambiental, más allá de tratarse de un área concreta del desarrollo humano, es en realidad el eje de cualquier forma de desarrollo a la que queramos aspirar.<br><br>
                Las personas: toma de conciencia y control de los hábitos de consumo que impactan (o pueden impactar) negativamente a la naturaleza e incluso a nosotros mismos.<br><br>
                Las instituciones base como el hogar y la escuela: ambas instituciones, como espacios de formación,  tienen la misión de ser despertar el interés y respeto por la vida y la naturaleza; de ahí que la formación de la conciencia ambiental sea una de sus principales labores y aportes para conseguir el equilibrio ambiental.<br><br>
                La comunidad y los medios de comunicación social informan, educan y pueden generar reflexión y conciencia en la gente, por eso deben fortalecer los mensajes dados desde el hogar y las escuelas con el fin de crear un frente común que sostenga las prácticas ambientales positivas. Así, no sólo deben promover el cumplimiento de las mismas, sino también la creación de nuevas y mejores formas a partir de las cuales los seres humanos podamos relacionarnos con nuestro planeta. Es clave que los medios de comunicación presenten información y reflexionen sobre el cambio climático para darle relevancia en la agenda ciudadana y política del país, sin caer en predicciones catastróficas, pero sí en un llamado de atención sobre el estado de vulnerabilidad de nuestro país.
                        
            </p>
                </div>
            </div>
        </div>
        
        </div>
    <div id="features" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <div>
                    <div>
                        <h2 align="left"><br>Sostenibilidad social</h2>
                    </div>
                <p> 
                    <img src="../resources/imagenes/social.jpg" align="left"><br><br>El primer objetivo de la sustentabilidad social es perseguir la equidad, que significa proponerse la eliminación de la pobreza y de que todos los estratos sociales se beneficien de las virtudes del crecimiento económico.<br><br>
                                                                                 El desafío para alcanzar la sustentabilidad social implica satisfacer las necesidades básicas del individuo, establecidas en los principios generales de los tratados internacionales sobre los derechos humanos.<br><br>
                                                                                 En particular, el concepto de sustentabilidad social implica impulsar acciones que permitan el cumplimiento de los derechos económicos, políticos, culturales, equidad de géneros y de razas entre las personas que habitan las diversas regiones del planeta.<br><br>
                                                                                 De esta manera, la idea de sustentabilidad social signfica ejercer el derecho de vivir en un contexto en que se puedan expresar las potencialidades de cada individuo y la posibilidad de los ciudadanos de interactuar en los procesos electivos.<br>
                                                                                 Sustentabilidad social significa tambien apoyar acciones utiles a la conservación de las tradiciones y de los derechos de las comunidades regionales sobre el territorio que se habita.
                        
                </p>
                </div>
            </div>
        </div>
    </div>
    <div id="features" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <div>
                    <div>
                        <h2 align="left"><br>Sostenibilidad social</h2>
                    </div>
                <p> 
                    <img src="../resources/imagenes/economica.jpg" align="right"><br><br>Una sociedad del bienestar se logra bajo un contexto de sostenibilidad económica, que asegure un crecimiento económico equitativo, que beneficie a todos y que brinde a la población las oportunidades para que pueda ser feliz. Además, es importante tener presente que el crecimiento económico es una condición necesaria para generar bienestar pero no suficiente por sí mismo.<br><br>
                                                                                         El crecimiento económico se logra a través de una economía donde se generen condiciones para posibilitar la productividad y la competitividad. La economía debe ser abierta al mundo a través de acuerdos comerciales negociados justamente y protegiendo el interés nacional. El entorno debe permitir que el individuo pueda tomar sus propias decisiones, donde se faciliten las condiciones para crear, mantener y concretar negocios. En este sentido, el Estado debe promover el desarrollo de empresas, cadenas productivas eficientes, investigación y desarrollo y asegurar derechos de propiedad para promover la inversión  y otorgar estabilidad jurídica. Bajo este contexto se generan condiciones que posibilitan un crecimiento económico sostenido y esto permite la creación de puestos de trabajo caracterizados por su dignidad y productividad.<br><br>
                        
                </p>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
		<div class="copyright">
			<p>© 2019 Desarrollo Sostenible. All rights reserved</p>
		</div>
	</div>
    </body>
</html>
