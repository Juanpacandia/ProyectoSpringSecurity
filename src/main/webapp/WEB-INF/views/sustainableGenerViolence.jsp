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
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/" class="hvr-sweep-to-bottom">Inicio</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/ODS" class="hvr-sweep-to-bottom">ODS</a></li>
								<li><a href="/SpringMVCHibernateManyToManyCRUDExample/forum" class="hvr-sweep-to-bottom">Foro</a></li>
								<li  class="active"><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Temas<span class="caret"></span></a>
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
       <div id="features" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h1><br>�Qu� es la violencia de g�nero?</h1>
                <p class="lead"><br><br>Se trata de una violencia que afecta a las mujeres por el mero hecho de serlo. Constituye un atentado contra la integridad, la dignidad y la libertad de las mujeres, independentemente del �mbito en el que se produzca.<br><br>
                                        Se entiende por violencia de g�nero cualquier acto violento o agresi�n, basados en una situaci�n de desigualdad en el marco de un sistema de relaciones de dominaci�n de los hombres sobre las mujeres que tenga o pueda tener como consecuencia un da�o f�sico, sexual o psicol�gico, incluidas las amenazas de tales actos y la coacci�n o privaci�n arbitraria de la libertad, tanto si ocurren en el �mbito p�blico como en la vida familiar o personal. (Ley 11/2007, del 27 de julio, gallega para la prevenci�n y el tratamiento integral de la violencia de g�nero).<br><br>
                                        El concepto "violencia de g�nero" da nombre a un problema, que incluso hace poco, formaba parte de la vida personal de las personas; era considerado un asunto de familia que no deb�a trascender de puertas para fuera y, por lo tanto, en el que no se deb�a intervenir. Entender la violencia como un asunto personal refuerza a las mujeres a una situaci�n de subordinaci�n respeto del hombre e implica asumir las relaciones de poder historicamente desiguales entre ambos y a trav�s de las cuales se legitima al hombre a mantener su status-quo de la dominaci�n incluso a trav�s de la violencia. Esta percepci�n contribuye a que las mujeres no denuncien su situaci�n por miedo, verg�enza o culpabilidad.</p>
            </div>
        </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
            <div class="section-title text-center">
                <h2><br>Si te sientes identificada con alguna de las siguientes manifestaciones, est�s siendo v�ctima de maltrato</h2><br>
                <h3 align="left">Violencia fisica</h3>
                <img src="static/imagenes/violencia fisica.jpg" align="right"><br><br>Incluye cualquier acto de fuerza contra el cuerpo de la mujer, con resultado o riesgo de producir lesi�n f�sica o da�o: golpes, quemaduras, pellizcos, tirones de pelo, picadas, empujones, lanzamiento de objetos, uso de armas, intentos de estrangulamiento, intentos de asesinato, intentos de provocar abortos...<br><br>
                                                                                     El maltrato f�sico es el m�s evidente y el m�s f�cil de demostrar; aun as�, no es preciso que se requiera atenci�n m�dica o que tenga efectos visibles en el cuerpo. Es muy probable que empiece con un simple golpe o bofetada.<br><br>
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">Violencia psicol�gica</h3>
                        <img src="static/imagenes/violencia psicologica.jpg" align="right"><br><br>Incluye toda conducta, verbal o no verbal, que produzca en la mujer desvalorizaci�n o sufrimiento: insultos (expresiones como: est�s loca, eres una hist�rica, ignorante, atrasada, fea); menosprecios (expresiones como: no sirves para nada, no eres capaz de hacer nada bien, mala madre, si no fuera por m� donde ir�as?..); intimidaciones / amenazas (expresiones como: te voy a matar, vete/vete de la casa, te voy a quitar los/las ni�os/ni�as, te voy a hundir..); abuso de autoridad ( como por ejemplo: registra tus cosas, revisa tu correo, preguntas cosas como ?con qui�n estuviste hoy??, llegaste 10 minutos tarde?); falta de respeto (no respeta tus necesidades, sentimientos, opiniones, deseos y manipula lo que dices, destruye objetos de especial valor para ti, ignora tu presencia, te desautoriza delante de los ni�os/ni�as..); exige obediencia (no quiere que la mujer trabaje fuera de la casa, no quiere que estudie, quiere que se vista c�mo �l quiere, le controla el tiempo, le pregunta "a que hora llegas?", le dice ?quita esa ropa y te viste c�mo Dios manda??); utilizaci�n de las hijas e hijos (amenaza con quitarle las/los menores, los amenaza y los maltrata, le obliga a que se desnude, culpabiliza constantemente a la madre); castigar con el silencio e incomunicaci�n (el silencio reiterado pode llegar a herir tanto como las palabras); culpabilizar a la mujer de todo lo que ocurre en la casa de modo que al final ella piensa que es la culpable de todas las situaciones de tensi�n; mostrar celos (acusar constantemente de ser infiel y coquetear con otros hombres, impedir relaciones con amigos/as y familiares, aislar la mujer de todo su entorno...).      
                </div>
            </div>
        </div>   
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">Violencia sexual y abusos sexuales</h3>
                        <p><br><br>Incluyen cualquier acto de naturaleza sexual forzada por el agresor o no consentida por la mujer, y que abarcan la imposici�n, mediante la fuerza o con intimidaci�n, de relaciones sexuales no consentidas, y el abuso sexual, con independencia de que el agresor guarde o no relaci�n conjugal, de pareja, afectiva o de parentesco con la v�ctima.
                                                                                                        Incluye aquellas conductas consistentes en la solicitud de favores de naturaleza sexual, para s� o para una tercera persona, en las que el sujeto activo se valle de una situaci�n de superioridad laboral, docente o an�loga, con el anuncio expreso o t�cito a la mujer de causarle un mal relacionado con las expectativas que la v�ctima tenga en el �mbito de la dicha relaci�n, o bajo la promesa de una recompensa o de un premio en el �mbito de esta.<br><br>
                </div>
            </div>
        </div>
        <div id="features" class="section lb">
            <div class="container">
                <div class="section-title text-center">
                        <h3 align="left">El tr�fico de mujeres y ni�as con fines de explotaci�n</h3>
                        <img src="static/imagenes/violencia psicologica.jpg" align="right"><br><br>Incluye la captaci�n, el transporte, el traslado, la acogida o la recepci�n de personas, especialmente de mujeres y ni�as, que son sus principales v�ctimas, recurriendo a la amenaza o al uso de la fuerza u otras formas de coacci�n, o rapto, o fraude, o enga�o, o abuso de poder o de una situaci�n de vulnerabilidad o la concesi�n o recepci�n de pagos o beneficios para obtener el consentimiento de una persona que tenga autoridad sobre otra, con fines de explotaci�n. Esa explotaci�n incluir�, como m�nimo, la explotaci�n de la prostituci�n ajena u otras formas de explotaci�n sexual, los trabajos o servicios forzados, la esclavitud o las pr�cticas similares. Independentemente de la relaci�n que una a la v�ctima con el agresor y el medio empleado.
                </div>
            </div>
        </div>
    </body>
</html>
