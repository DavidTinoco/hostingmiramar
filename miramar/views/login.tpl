<!DOCTYPE html>
<html lang="en">
  % include('head.tpl',title='Login | Miramar')

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="/index">
              <h1>Formulario de Inicio</h1>
              <div>
                <input type="text" class="form-control" placeholder="Usuario" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="/index">Entrar</a>
                <a class="reset_pass" href="#">¿Has olvidado la contraseña?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">¿Eres nuevo?
                  <a href="#signup" class="to_register"> Crear Cuenta </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-eye"></i> Hosting Miramar</h1>
                  <p>©2018 All Rights Reserved. Hosting Miramar - Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>Registro</h1>
              <div>
                <input type="text" class="form-control" placeholder="Usuario" required="" />
              </div>
              <div>
                <input type="text" class="form-control" placeholder="Dominio" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Re-Password" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="index.html">Darse de alta</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">¿Ya eres miembro?
                  <a href="#signin" class="to_register"> Entrar </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-eye"></i> Hosting Miramar</h1>
                  <p>©2018 All Rights Reserved. Hosting Miramar - Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
