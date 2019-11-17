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
                <h1><br>¿Que es un modelo de vida sostenibles?</h1>
                <p class="lead"><br><br>Se consideran estilos de vida sostenibles aquellas formas de vida, elecciones y comportamientos sociales que minimizan su impacto al medio ambiente (uso
                                        de recursos naturales, emisiones de CO2, residuos y contaminación), y favorecen un desarrollo socioeconómico equitativo y una mejor calidad de vida para
                                        todos. </p>
            </div>
        </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
            <div class="section-title text-center">
                <h2><br>Propuestas para cambiar por el planeta desde el día a día</h2><br>
                <h3 align="left">1. Reduce el consumo de energia</h3>
                <img src="static/imagenes/estilo1.PNG" align="right"><br><br>El consumo medio de energía en Francia es 342 veces superior al de Rwanda (2011). De hecho, las personas que habitan en países más ricos consumen hasta 10 veces más recursos naturales que las que viven en los países más pobres. De media, un habitante de Norte América consume alrededor de 90 kg. de recursos cada día. En Europa, el consumo ronda los 45 kg. al día mientras que, en África, la gente consume solo alrededor de 10kg al día.<br><br>
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">2. Compra productos locales</h3><br>
                        <img src="static/imagenes/estilo2.PNG" align="right"><br><br>Las fresas de Israel, el cordero de Nueva Zelanda, las judías verdes de Kenia, las peras de Argentina... A diferencia del mango, el coco o los plátanos, estos productos existen en el hemisferio norte, y una vez importados de todas partes del mundo, van invadiendo los supermercados a precios muy competitivos. Estudios referentes a esta materia, realizados en muchos países, han mostrado que el camino que pueden recorrer los diferentes componentes de un solo yogurt (fresas, leche, plástico, el etiquetado,?.) puede alcanzar un total de 9.000 kilómetros.
                            Las verduras frescas de temporada, cultivadas localmente, emiten 20 veces menos gases de efecto invernadero que las verduras frescas importadas, y 7 veces menos gases que las verduras congeladas. Además, la comida cultivada localmente durante las temporadas naturales es más fresca y requiere menos energía para su producción.      
                </div>
            </div>
        </div>   
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                    <h3 align="left">3. Haz del transporte público tu prioridad</h3><br>
                        <img src="static/imagenes/estilo3.PNG" align="right"<br><br>Conducir un coche se ha convertido en una pesadilla: la subida del precio de la gasolina y la materia prima, la contaminación, las emisiones de CO2 y los atascos. ¿Y si pudiésemos vivir sin ello?
                                    De media, por cada pasajero, un coche emite alrededor de 7 veces más gases que un autobús, el cual emite, a su vez, más que un tranvía o el metro, por ejemplo. Mediante el transporte público se puede llegar rápidamente a donde quieras y ahorrar tiempo a la vez, al no tener que buscar aparcamiento. Y mientras el tráfico es sinónimo de ruido, la reducción del número de vehículos en circulación reduciría la contaminación acústica. ¿No hay una estación o parada de transporte público, ni carril bici en dirección a tu trabajo?<br><br>
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">4. Come menos carne y menos productos de origen animal</h3>
                        <img src="static/imagenes/estilo4.PNG" align="right"><br><br>Un alto consumo de carne puede ser peligroso para la salud: puede provocar enfermedades como la hipertensión, infartos, diabetes de tipo 2, osteoporosis, colesterol alto, cáncer y obesidad.
                                Asimismo, de acuerdo con la FAO, la ganadería es responsable de un 18% de las emisiones de CO2 (más que el transporte), y un 8% del consumo global de agua ( se precisan entre 20.000 y 100.000 litros de agua para producir un kilo de carne).
                                Actualmente, el 90% de las semillas de soja que se cultivan en el mundo son usadas para la ganadería, y se necesitan 10 kilos de grano para producir un kilo de carne. Hemos llegado a la paradoja en la que los cereales son usados para alimentar a los animales y no a los hombres?
                                Necesitamos urgentemente reducir el consumo de carne para proteger el planeta y luchar contra el hambre en el mundo.
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">5. Comparte: actúa menos individualmente y más de forma colectiva</h3>
                        <img src="static/imagenes/estilo5.PNG" align="right"><br><br>Compartir sus bienes y servicios con los demás significa ahorrar dinero, tanto en costes de adquisición como de mantenimiento.
                                Por ejemplo, prestar o pedir prestadas herramientas u otros elementos que no se suelen usar, compartir coche, trabajar en un espacio compartido, o regalar cosas que ya no uses.
                                Compartir, en lugar de comprar nuevas cosas, evita la reducción de los recursos naturales y se reduce el uso de energía porque se necesita menos producción, por no mencionar el ahorro en las toneladas de productos desperdiciados cada año.
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">6. Súbete a la bici</h3>
                        <img src="static/imagenes/estilo6.PNG" align="right"><br><br>Montar en bicicleta en lugar de conducir tiene varios beneficios, tanto para ti como para el planeta. Es un entrenamiento muy eficaz que proporciona muchos beneficios para la salud a la vez que permite ahorrar dinero. Además, el ciclismo es, también, una manera de reducir la contaminación y congestión ambiental, haciendo de nuestras calles sitios más habitables.
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">7. Crea una zona libre de plásticos</h3>
                        <img src="static/imagenes/estilo7.PNG" align="right"><br><br>Reducir nuestro consumo de productos plásticos puede contribuir, en gran medida, a la protección del medio ambiente, por la disminución de la energía necesaria para su producción y por los residuos de los procesos de gestión y reciclaje.
                                   Haciendo cambios simples en el envasado de alimentos, y usando botellas y bolsas reutilizables podemos contribuir directamente al cuidado de la creación.
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">8. Prepárate tu propia comida</h3>
                        <img src="static/imagenes/estilo8.PNG" align="right"><br><br>¿Por qué no recuperar habilidades en la cocina mientras ahorras dinero?  
                                    Cocinar en casa reduce el desperdicio de alimentos y permite comer más barato. También ayuda a tener un mayor "control de calidad", que no se puede tener con los alimentos procesados: mediante la preparación de nuestra propia tenemos un conocimiento más fiable de lo que contienen los alimentos que comemos y de dónde vienen.
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">9. Actúa ahora</h3>
                        <img src="static/imagenes/estilo9.PNG" align="right"><br><br>Avanzar hacia un modo de vida más sostenible significa pedir también, a los que tienen la capacidad de tomar decisiones a todos los niveles, que realicen los cambios políticos que respalden ese estilo de vida. Ahora es el momento adecuado para unirse al llamamiento mundial a la acción y demostrar que la sociedad civil, con toda su diversidad, es capaz de unirse y está lista para liderar un movimiento consolidadoy duradero en pro de la justicia global.
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">10. No desperdicies tu comida</h3>
                        <img src="static/imagenes/estilo10.PNG" align="right"><br><br>La mitad de los alimentos que producimos, cada año, son desperdiciados. Tirar comida no es una cosa sin importancia: además de las implicaciones éticas, sociales y económicas que tiene, genera, también, una huella ecológica significativa. Puedes hacer mucho para evitar el desperdicio de alimentos planificando tus compras, aprendiendo a cocinar con sobras, o conservando los alimentos de forma adecuada.
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">11. Elimina el uso de combustibles fósiles</h3>
                        <img src="static/imagenes/estilo11.PNG" align="right"><br><br>El gas natural, el petróleo y el carbón: estos combustibles fósiles se utilizan a diario en todo el mundo para generar energía. Sin embargo, son fuentes de energía no renovables y representan una grave amenaza para el medio ambiente, así como para la salud de las personas. Con el fin de limitar el calentamiento global y sus peligrosos impactos sociales, debemos limitar su uso y favorecer las fuentes de energía renovables, como la eólica o la solar.
                </div>
            </div>
        </div>
        	<!-- footer -->
	<div class="footer">
		<div class="copyright">
			<p>© 2019 Desarrollo Sostenible. All rights reserved</p>
		</div>
	</div>
	<!-- //footer -->  
    </body>
</html>
