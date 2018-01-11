<!DOCTYPE html>
<html lang="en">
  % include('head.tpl',title='Dashboard | Miramar')
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        % include('sidebar.tpl')

        <!-- top navigation -->
        % include('topbar.tpl')
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Panel de Control</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="">
                  <div class="x_content">
                    <div class="row">
                      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="tile-stats">
                          <div class="icon"><i class="fa fa-globe"></i>
                          </div>
                          <div class="count">1</div>

                          <h3>Dominios</h3>
                          <p>Dominios registrados</p>
                        </div>
                      </div>
                      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="tile-stats">
                          <div class="icon"><i class="fa fa-globe"></i>
                          </div>
                          <div class="count">5</div>

                          <h3>Subdominios</h3>
                          <p>Subdominios registrados</p>
                        </div>
                      </div>
                      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="tile-stats">
                          <div class="icon"><i class="fa fa-database"></i>
                          </div>
                          <div class="count">1</div>

                          <h3>Bases de datos</h3>
                          <p>Bases de datos disponibles</p>
                        </div>
                      </div>
                      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="tile-stats">
                          <div class="icon"><i class="fa fa-check-square-o"></i>
                          </div>
                          <div class="count">5</div>

                          <h3>Páginas web</h3>
                          <p>Páginas web disponibles</p>
                        </div>
                      </div>
                    </div>

                    <br />
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <!-- Subdomains -->
              <div class="col-md-8 col-sm-8 col-xs-12">
                 <div class="x_panel">
                   <div class="x_title">
                     <h2>Subdomains</h2>
                     <ul class="nav navbar-right panel_toolbox">
                       <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                       </li>
                       <li class="dropdown">
                         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                         <ul class="dropdown-menu" role="menu">
                           <li><a href="#">Settings 1</a>
                           </li>
                           <li><a href="#">Settings 2</a>
                           </li>
                         </ul>
                       </li>
                       <li><a class="close-link"><i class="fa fa-close"></i></a>
                       </li>
                     </ul>
                     <div class="clearfix"></div>
                   </div>
                   <div class="x_content">

                     <p>En la siguiente lista puede ver y administrar sus subdominions contratados</p>

                     <!-- start project list -->
                     <table class="table table-striped projects">
                       <thead>
                         <tr>
                           <th style="width: 5%">#</th>
                           <th style="width: 50%">Subdominio</th>
                           <th>Estado</th>
                           <th style="width: 30%">Acciones</th>
                         </tr>
                       </thead>
                       <tbody>
                         <tr>
                           <td>0001</td>
                           <td>
                             <a>wordpress.charliejsanchez.com</a>
                             <br />
                             <small>Created 08.05.2017</small>
                           </td>
                           <td>
                             <button type="button" class="btn btn-danger btn-xs">Inactivo</button>
                           </td>
                           <td>
                             <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-globe"></i> Abrir </a>
                             <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Borrar </a>
                           </td>
                         </tr>
                         <tr>
                           <td>0002</td>
                           <td>
                             <a>ftp.charliejsanchez.com</a>
                             <br />
                             <small>Created 08.05.2017</small>
                           </td>
                           <td>
                             <button type="button" class="btn btn-success btn-xs">Activo</button>
                           </td>
                           <td>
                             <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-globe"></i> Abrir </a>
                             <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Borrar </a>
                           </td>
                         </tr>
                         <tr>
                           <td>0003</td>
                           <td>
                             <a>mysql.charliejsanchez.com</a>
                             <br />
                             <small>Created 08.05.2017</small>
                           </td>
                           <td>
                             <button type="button" class="btn btn-success btn-xs">Activo</button>
                           </td>
                           <td>
                             <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-globe"></i> Abrir </a>
                             <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Borrar </a>
                           </td>
                         </tr>
                       </tbody>
                     </table>

                     <a href="/addsubdomain" class="btn btn-success btn-xs"><i class="fa fa-globe"></i> Nuevo Subdominio </a>
                     <!-- end project list -->

                   </div>
                 </div>
               </div>

              <!-- Finish Subdomains -->
              <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Notificaciones</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <ul class="list-unstyled timeline">
                      <li>
                        <div class="block">
                          <div class="tags">
                            <a href="" class="tag">
                              <span>Entertainment</span>
                            </a>
                          </div>
                          <div class="block_content">
                            <h2 class="title">
                                            <a>Se ha dado de alta el usuario X</a>
                                        </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Admin</a>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="block">
                          <div class="tags">
                            <a href="" class="tag">
                              <span>Entertainment</span>
                            </a>
                          </div>
                          <div class="block_content">
                            <h2 class="title">
                                            <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                        </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="block">
                          <div class="tags">
                            <a href="" class="tag">
                              <span>Entertainment</span>
                            </a>
                          </div>
                          <div class="block_content">
                            <h2 class="title">
                                            <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                        </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                    </ul>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        % include('footer.tpl')
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="static/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="static/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="static/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="static/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="static/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- jQuery Sparklines -->
    <script src="static/vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- easy-pie-chart -->
    <script src="static/vendors/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="static/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="static/build/js/custom.min.js"></script>

  </body>
</html>
