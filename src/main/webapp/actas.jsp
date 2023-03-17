<%@ page pageEncoding="ISO-8859-1"%>
    
  <%String id =(String) session.getAttribute("id");   
    String[] data  =(String []) session.getAttribute("data");  
    String nroMesas="";
  %>
 
<head>
     <title>ONPE -Oficina Nacional de Procesos Electorales</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  /> 
     <meta http-equiv="X-UA-Compatible" content="IE=9" />
     <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen"/>
     <link href="css/style.css" rel="stylesheet" type="text/css" media="screen"/>
     <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="screen"/>     
 </head>
<body>
    <%@include file="WEB-INF/header.jsp" %>
    <div class="container">

            <img src="images/fnd-actas.jpg" width="1170" height="248" class="img-responsive mg30top">

            <section class="menu navbar-default menu05">
                <div class="navbar-header">
                    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <a name="posicion"></a>
                <nav class="navbar-collapse bs-navbar-collapse collapse" aria-expanded="false">
                    <ul class="nav navbar-nav">
                        <li class="bt-azul">
                            <a href="./Resumen-GeneralPresidencial.html">PRESIDENCIAL</a>
                        </li>
                        <li class="bt-amarillo act-amarillo">
                            <a href="svlActas">ACTAS</a>
                        </li>
                        <li class="bt-rojo">
                            <a href="svlParticipacion">PARTICIPACI�N CIUDADANA</a>
                        </li>
                    </ul>
                </nav>
            </section>

            <section class="contenedor">
                <div class="row">
                    <div class="col-xs-12 col-md-3">
                        <div class="menu-interna">
                            <ul>
                                <li><a href="./Actas-por-Ubigeo.html">Actas por ubigeo</a></li>
                                <li><a href="svlActas" class="act-izq">Actas por n�mero</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-9" id="impreso">
                        <div class="contenido-interna">
                            <div class="titulos col-xs-12">
                                <div class="col-xs-11">
                                    <h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCI�N PRESIDENCIAL 2016: ACTAS POR N�MERO</h3>
                                </div>

                                <div class="col-xs-1 oculto-boton-print">
                                    <button onclick="printContent('impreso');"><i class="fa fa-print ico-print"></i></button>
                                </div>
                            </div>

                            <div class="col-xs-12">
                            
                            <div class="col-lg-7 centered">
						        <div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
						            <div class="col-xs-3 col-md-1">
						                <span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
						            </div>
						
						            <div class="col-xs-9 col-md-11">
						                <ul>
						                    <li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h </li>
						                </ul>
						            </div>
						        </div>
						    </div>


                                <div id="page-wrap">
                                <br>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                    <form id="myfsorm" name="myform" class="horizontal-form" method="post" action="svlActas">
									<div class="col-md-3">
										INGRESE EL N�MERO DE ACTA:
									</div>
								
										<div class="col-md-4">
											<div class="form-group">
												<span id="spanNroMesa"> <input id="nroMesa"
													name="id" type="text" onkeyPress="return validText(this,evetn,4)" maxlength="6" class="form-control" value="" />
												</span>
											</div>
										</div>

										<div class="col-md-2">
											<button  type="submit"  onclick="svlActas?id=" class="btn btn-primary" >
												<span class="glyphicon glyphicon-search" aria-hidden="true"></span>BUSCAR
											</button>
										</div>
											
									</form>
                                </div>
                                
                             <% if ( id != null && data ==null ){ %>
	                            <div id="divDetalle" class="ptop20">
	                                <div class="contenido-resultados">
	                                    <p>&nbsp;</p>
	                                    <div class="row">
	                                        <div class="tab-info">
	                                            El Numero de mesa que ha ingresado no existe
	                                        </div>
	                                    </div>
	                                </div>
                            	</div>
                        	<% } %>
                                <div id="divDetalle" class="ptop20">
                                
						<% if (data != null ) { %>
						                                
						<div class="contenido-resultados">
						                    <p>&nbsp;</p>
						        <div class="row">
						            <div class="tab-info">
						                <div class="tab-content">
						                    <div id="detMesa">
						                            <div class="tab-content">
													    <div role="tabpanel" class="tab-pane active" id="presidencial">
													        <div class="tab-info-desc">
													            <div class="row">
													                <div class="col-xs-3 col-md-4">
													                    <div class="mesap01">
									                                            <img src="images/mp-sin.jpg" class="img-responsive">
									                                        <!--  Si requiere la imagen del acta, solic�tela a trav�s del procedimiento de acceso a la informaci�n p�blica.-->
													                    </div>
													                </div>
													                <div class="col-xs-9 col-md-8">
													                    <div class="row">
													                        <div class="col-xs-12">
													                            <p class="subtitle1">ACTA ELECTORAL</p>
													                            <div id="page-wrap">
													                                <table class="table13" cellspacing="0">
													                                    <thead>
													                                        <tr>
													                                            <th>Mesa N�</th>
													                                            <th>N� Copia</th>
													                                        </tr>
													                                    </thead>
													                                    <tbody>
													                                        <tr>
													                                            <td><%= data[6] %></td>
													                                            <td><%= data[7] %></td>
													                                        </tr>
													                                    </tbody>
													                                </table>
													                            </div>
													                        </div>
													
													                        <div class="col-xs-12">
													                            <p class="subtitle1">INFORMACI�N UBIGEO</p>
													                            <div id="page-wrap">
													                                <table class="table14" cellspacing="0">
													                                    <tbody>
													                                        <tr class="titulo_tabla">
													                                            <td>Departamento</td>
													                                            <td>Provincia</td>
													                                            <td>Distrito</td>
													                                            <td>Local de votaci�n</td>
													                                            <td>Direcci�n</td>
													                                        </tr>
													                                        <tr>
													                                            <td><%= data[0] %></td>
													                                            <td><%= data[1] %></td>
													                                            <td><%= data[2] %></td>
													                                            <td><%= data[3] %></td>
													                                            <td><%= data[4] %></td>
													                                        </tr>
													                                    </tbody>
													                                </table>
													                            </div>
													                        </div>
													
													                        <div class="col-xs-12">
													                            <p class="subtitle1">INFORMACI�N MESA</p>
													                            <div id="page-wrap">
													                                <table class="table15" cellspacing="0">
													                                    <tbody>
													                                        <tr class="titulo_tabla">
													                                            <td>Electores h�biles</td>
													                                            <td>Total votantes</td>
													                                            <td>Estado del acta</td>
													                                        </tr>
													                                        <tr>
													                                            <td><%= data[9] %></td>
													                                            <td><%= data[10] %></td>
													                                            <td>ACTA ELECTORAL NORMAL</td>
													                                        </tr>
													                                    </tbody>
													                                </table>
													                            </div>
													                        </div>
													                    </div>
													
													                </div>
													            </div>
													
													            <div>
													                <div class="col-xs-12 pbot30_acta">
													                    <p class="subtitle1">LISTA DE RESOLUCIONES</p>
													                                            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> No hay resoluciones para el acta seleccionada
													                                        <div id="page-wrap">
													                        <div class="col-md-12 resolu"> </div>
													                    </div>
													                <!-- <p class="centro"># : El valor consignado en el acta presenta ilegibilidad.</p> -->
													                </div>
													
													            </div>
													
													            <div>
													                <div class="col-xs-12">
													                    <p class="subtitle1">INFORMACI�N DEL ACTA ELECTORAL</p>
													                    <div id="page-wrap" class="cont-tabla1">
													                        <table class="table06">
													                            <tbody>
													                            <tr class="titulo_tabla">
													                                <td colspan="2">Organizaci�n pol�tica</td>
													                                <td>Total de Votos</td>
													                            </tr>
													                                                                                                                                                                                                                            <tr>
													                                    <td>PERUANOS POR EL KAMBIO</td>
													                                    <td><img width="40px" height="40px" src="images/simbolo_pkk.jpg"></td>
													                                    <td><%= data[11] %></td>
													                                </tr>
													                                                                                                                                                                                                                                                            <tr>
													                                    <td>FUERZA POPULAR</td>
													                                    <td><img width="40px" height="40px" src="images/simbolo_keyko.jpg"></td>
													                                    <td><%= data[12] %></td>
													                                </tr><tr>
													                                    <td colspan="2">VOTOS EN BLANCO</td>
													                                    <td><%= data[13] %></td>
													                                </tr>
													                                <tr>
													                                    <td colspan="2">VOTOS NULOS</td>
													                                    <td><%= data[14] %></td>
													                                </tr>
													                                <tr>
													                                    <td colspan="2">VOTOS IMPUGNADOS</td>
													                                    <td><%= data[15] %></td>
													                                </tr>
													                                <tr>
													                                    <td colspan="2">TOTAL DE  VOTOS EMITIDOS</td>
													                                    <td><%= data[10] %></td>
													                                </tr>
													                            </tbody>
													                        </table>
													                    </div>
													                </div>
							                            		</div>
													
													        </div>
													    </div>
													</div>              


        

									                  </div>
									               </div>
									           </div>
									       </div>
									        
									  </div>
                                
                                
                                  <% }  %>
                                
                                </div>
                                
                            </div>

                        </div>
                    </div>
                </div>
            </section>
    	</div>
    
<%@include file="WEB-INF/footer.jsp" %>
</body>
</html>
