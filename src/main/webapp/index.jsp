<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <title>Proyecto Integrador CaC4.0</title>
</head>
<body>
    <header class="toggle-list">
        <nav>
            <div class="logo-container" id="logoToMainPage">
                <img src="img/codoacodo.png" alt="Logo del programa Codo a Codo 4.0" class="logo">
                <p>Conf Bs As</p>
            </div>

            <ul class="header-list">
                <li><a href="#intro">La conferencia</a></li>
                <li><a href="#oradores">Los oradores</a></li>
                <li><a href="#lugar_fecha">El lugar y la fecha</a></li>
                <li><a href="#formulario">Conviertete en orador</a></li>
                <li><a href="" class="tickets">Comprar tickets</a></li>
            </ul>

            <svg class="menu-toggle" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M4 7L7 7M20 7L11 7" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                <path d="M20 17H17M4 17L13 17" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                <path d="M4 12H7L20 12" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                </svg>
        </nav>
    </header>
    <main>
        <div class="intro" id="intro">
            <section> <!--Aca tiene que ir la imagen de fondo y la capa translucida-->
                <h2>Conf Bs. As.</h2>
                <p>Bs As por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                <div>
                    <button type="button" class="btn-orador">Quiero ser orador</button>
                    <button type="button" class="btn-comprar">Comprar tickets</button>
                </div>
            </section>
        </div>
        <section class="oradores" id="oradores">
            <p class="titulo">Conoce a los<br><span>Oradores</span></p>
            <div class="oradores-box">
                <article class="oradorCard">
                    <div class="pictureOrador1"></div>
                    <div class="descripcionOrador">
                        <div class="especialidad">
                            <p class="javascript">JavaScript</p>
                            <p class="react">React</p>
                        </div>
                        <h3>Steve Jobs</h3>
                        <p class="textOrador">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Non quasi a consectetur blanditiis ex fugiat rem nam eligendi necessitatibus animi. Quas esse totam voluptate dolores quod tenetur. Consectetur, repellat laudantium!</p>
                    </div>
                </article>
                <article class="oradorCard">
                    <div class="pictureOrador2"></div>
                    <div class="descripcionOrador">
                        <div class="especialidad">
                            <p class="javascript">JavaScript</p>
                            <p class="react">React</p>
                        </div>
                        <h3>Bill Gates</h3>
                        <p class="textOrador">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Non quasi a consectetur blanditiis ex fugiat rem nam eligendi necessitatibus animi. Quas esse totam voluptate dolores quod tenetur. Consectetur, repellat laudantium!</p>
                    </div>
                </article>
                <article class="oradorCard">
                    <div class="pictureOrador3"></div>
                    <div class="descripcionOrador">
                        <div class="especialidad">
                            <p class="negocios">Negocios</p>
                            <p class="startup">Startups</p>
                        </div>
                        <h3>Ada Lovelace</h3>
                        <p class="textOrador">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Non quasi a consectetur blanditiis ex fugiat rem nam eligendi necessitatibus animi. Quas esse totam voluptate dolores quod tenetur. Consectetur, repellat laudantium!</p>
                    </div>
                </article>
            </div>
        </section>
        <section class="lugar_fecha">
            <div class="hawaii" id="lugar_fecha"></div>
            <div class="lugarFecha_texto">
                <h2>Bs As - Octubre</h2>
                <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la cosa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximandamente 600km2 de superficie).</p>
                <button type="button">Conocé más</button>
            </div>
        </section>
        <section class="formulario" id="formulario">
            <a href="#" id="formularioAnchor"></a>
            <p class="tituloForm">CONVIÉRTETE EN UN<br><span>ORADOR</span></p>
            <p class="instruccionForm">Anótate como orador para dar una <span>charla ignite</span>. Cuéntanos de qué quieres hablar!</p>
            <form action="SvOrador" method="POST" class="form">
                <input type="text" name="nombre" id="nombre" placeholder="Nombre">
                <input type="text" name="apellido" id="apellido" placeholder="Apellido">
                <input type="text" name="email" id="email" placeholder="Correo Electronico">
                <textarea name="temario" id="tema" cols="30" rows="3" placeholder="Sobre qué quieres hablar?"></textarea>
                <p>Recuerda incluir un título para tu charla</p>
                <button type="submit">Enviar</button>
            </form>
        </section>
    </main>
    <footer>
        <ul>
            <li><a href="#">Preguntas frecuentes</a></li>
            <li><a href="#">Contactanos</a></li>
            <li><a href="#">Prensa</a></li>
            <li><a href="#">Conferencias</a></li>
            <li><a href="#">Terminos y condiciones</a></li>
            <li><a href="#">Privacidad</a></li>
            <li><a href="#">Estudiantes</a></li>
        </ul>
    </footer>
    <script src="js/script_index.js"></script>
</body>
</html>