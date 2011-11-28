<?php
$lang['project'] = 'Captcha ';
$lang['msg_changes'] = 'Cambios Guardados';
$lang['friendlyname'] = 'Captcha ';
$lang['postinstall'] = 'El m&oacute;dulo Captcha se instal&oacute; correctamente. Controle que el servidor tenga puesto los permisos de escribir habilitados para el directorio images/captchas dentro del &aacute;rbol de archivos dentro del directorio del m&oacute;dulo Captcha';
$lang['postuninstall'] = 'Se desinstal&oacute; correctamente el m&oacute;dulo Captcha.';
$lang['really_uninstall'] = '&iquest;Esta seguro de querer desinstalar el m&oacute;dulo Captcha? Otros m&oacute;dulos pueden estar us&aacute;ndolo.';
$lang['uninstalled'] = 'El m&oacute;dulo desinstalado.';
$lang['installed'] = 'Se instal&oacute; la versi&oacute;n %s del m&oacute;dulo.';
$lang['upgraded'] = 'El m&oacute;dulo se actualiz&oacute; a la versi&oacute;n %s.';
$lang['moddescription'] = 'Habilita el soporte de captcha para el uso por otros m&oacute;dulos.';
$lang['error'] = '&iexcl;Error!';
$lang['err_no_gd_support'] = 'La instalaci&oacute;n de PHP no admite GD';
$lang['err_no_jpg_support'] = 'La librer&iacute;a GD no admite JPG';
$lang['err_no_freetype_support'] = 'La librer&iacute;a GD no admite FreeType';
$lang['admindescription'] = 'Configuraci&oacute;n de Captcha';
$lang['accessdenied'] = 'Acceso Denegado. Compruebe los permisos.';
$lang['title_general'] = 'General ';
$lang['title_cache'] = 'Cach&eacute;';
$lang['legend_pear'] = 'PEAR Captcha ';
$lang['label_enable_pear'] = 'Habilita PEAR Texto/Captcha (debe estar instalado, ver la ayuda del m&oacute;dulo Captcha)';
$lang['legend_active_lib'] = 'Librer&iacute;a activa';
$lang['label_captchalib_select'] = 'Librer&iacute;a Captcha a usar';
$lang['msg_active_lib_changed'] = 'La librer&iacute;a activa se cambi&oacute; a %s';
$lang['msg_no_changes'] = 'Sin cambios';
$lang['msg_pear_enabled'] = 'Se habilit&oacute; PEAR Texto/Captcha';
$lang['msg_pear_disabled'] = 'Se deshabilit&oacute; PEAR Texto/Captcha';
$lang['msg_pear_disable_while_selected'] = 'PEAR Captcha no se puede deshabilitar mientras est&aacute; en uso. <br />Por favor elija otra librer&iacute;a Captcha para usar antes de deshabilitar PEAR Captcha.';
$lang['msg_pear_unavailable'] = 'PEAR Texto/Captcha no est&aacute; habilitado en este sistema, vea la ayuda del m&oacute;dulo Captcha';
$lang['legend_cache'] = 'Cache ';
$lang['label_clear_cache'] = 'Eliminar todas las imagenes en el directorio cache';
$lang['msg_cache_overview'] = 'N&uacute;mero de archivos de im&aacute;genes en el directorio cach&eacute;: %s';
$lang['cache_directory'] = 'Directorio cach&eacute;';
$lang['msg_deleted_cache'] = 'Se eliminaron %s archivos de im&aacute;genes del directorio cach&eacute;';
$lang['msg_deleted_cache_single'] = 'Se elimin&oacute; 1 archivo de imagen del directorio cach&eacute;';
$lang['legend_fonts'] = 'Fuentes';
$lang['label_font_path'] = 'Ruta de fuente';
$lang['available_fonts'] = 'Fuentes disponibles';
$lang['restore'] = 'Restaurar a los valores por defecto';
$lang['msg_restored_defaults'] = 'Se restauraron los valores por defecto';
$lang['changelog'] = '<ul>
<li>
  <p><b>Versi&oacute;n 0.4.2<b> - (calguy1000)</p>
  <ul>
    <li>Corrige uno o dos avisos menores producidos por cambios en el comportamiento de de PHP.</li>
  </ul>
</li>
<li>
  <p><b>Versi&oacute;n 0.4.1<b> - (calguy1000)</p>
  <ul>
    <li>Soluciona algunos problemas menores de validaci&oacute;n y unos bugs irritantes</li>
  </ul>
</li>

	<li>
		<p><b>Versi&oacute;n 0.3.2</b></p>
		<ul>
			<li>Actualizado hn_captcha a la versi&oacute;n 1.5.0</li>
			<li>A&ntilde;adido un captcha sencillo basado en GD que no emplea Freetype</li>
		</ul>
	</li>
	<li>
		<p><b>Versi&oacute;n 0.3.1</b> (calguy1000)</p>
		<ul>
                        <li>Ahora usa el permiso &#039;Modify Site Preferences&#039;</p>
                        <li>Cambiado el directorio cach&eacute; a tmp/cache</li>
		</ul>
	</li>
	<li>
		<p><b>Versi&oacute;n 0.3</b></p>
		<ul>
			<li>Cambiado de hn_captcha a hn_captcha_X1 que incluye recolecci&oacute;n de basura</li>
			<li>Incluido soporte para la librer&iacute;a PhpCaptcha</li>
			<li>Captcha library specific settings can now be managed from the module admin</li>
			<li>Las librer&iacute;as captcha se cargan de forma autom&aacute;tica desde los archivos de clase disponibles</li>
			<li>Las librer&iacute;as captcha no se cargan hasta que se necesitan</li>
		</ul>
	</li>
	<li>
		<p><b>Versi&oacute;n 0.2.1</b></p>
		<ul>
			<li>Corrige el uso de la funci&oacute;n PHP parse_url en la forma que s&oacute;lo funciona para PHP5</li>
		</ul>
	</li>
	<li>
		<p><b>Versi&oacute;n 0.2</b></p>
		<ul>
			<li>Soluciona la incidencia en la que la imagen captcha no se muestra en algunos servidores Windows.</li>
			<li>Cambios que aseguran que la imagen captcha se muestra correctamente cuando se usa hn_captcha y no est&aacute; configurado correctamente $_SERVER[&#039;DOCUMENT_ROOT&#039;].</li>
			<li>Se retira el soporte de la librer&iacute;a b2evo. Se deriva de hn_captcha y no a&ntilde;ade niguna funcionalidad extra.</li>
			<li>Usa una versi&oacute;n no modificada de la librer&iacute;a hn_captcha (s&oacute;lo se mantienen algunas correcciones ortogr&aacute;ficas).</li>
		</ul>
	</li>
	<li>
		<p><b>Versi&oacute;n 0.1.1</b></p>
		<ul>
			<li>Evita la advertencia que aparece si allow_call_time_pass_reference se configura a false en php.ini.</li>
		</ul>
	</li>
	<li>
		<p><b>Versi&oacute;n 0.1</b></p>
		<ul>
			<li>Versi&oacute;n inicial.</li>
		</ul>
	</li>
</ul>';
$lang['help'] = '<h3>&iquest;Qu&eacute; Hace Esto?</h3>
<p>Habilita el soporte de captcha para su uso en otros m&oacute;dulos.
Vea <a href="http://www.wikipedia.org/wiki/Captcha">http://www.wikipedia.org/wiki/Captcha</a> para m&aacute;s informaci&oacute;n sobre las pruebas de respuesta-desaf&iacute;o Captcha.
</p>
<p>
<strong>La versi&oacute;n de PHP debe tener instalado GD con soporte para gr&aacute;ficos JPEGs y fuentes TrueType</strong>. Para m&aacute;s informaci&oacute;n, vea <a href="http://www.php.net/image/">Funciones de Imagen PHP</a>.<br />
</p>
<h3>&iquest;C&oacute;mo lo Uso?</h3>
<p>
Este m&oacute;dulo no se usa directamente en la p&aacute;gina, sino que es una herramienta para ser usada por otros m&oacute;dulos. Si es un desarrollador de m&oacute;dulos y desea usar Captcha en su m&oacute;dulo:
</p>
<p>
Para mostrar una imagen captcha:
<pre>
// cree una referencia a un objeto del m&oacute;dulo Captcha
$captcha = &amp;$this->getModuleInstance(&#039;Captcha&#039;);
// muestre la imagen de captcha
echo $captcha->getCaptcha();
</pre>
Para comprobar lo introducido por el usuario:
<pre>
// cree una referencia a un objeto del m&oacute;dulo Captcha
$captcha = &amp;$this->getModuleInstance(&#039;Captcha&#039;);
// compruebe lo introducido por el usuario (el m&eacute;todo checkCaptcha devolver&aacute; TRUE si $input es correcto, y FALSE si $input es incorrecto)
$validated = $captcha->checkCaptcha($input);
</pre>
</p>
<p>
Algunos ejemplos de implementaci&oacute;n:<br />
<a href="http://viewsvn.cmsmadesimple.org/viewsvn?rev=60&amp;root=comments&amp;view=rev" target="_blank">Comentarios</a><br />
<a href="http://viewsvn.cmsmadesimple.org/viewsvn?rev=101&amp;root=frontendusers&amp;view=rev" target="_blank">Usuarios del Portal</a><br />
<a href="http://viewsvn.cmsmadesimple.org/viewsvn?rev=145&amp;root=gastbuch&amp;view=rev" target="_blank">Libro de Visitas</a><br />
<a href="http://viewsvn.cmsmadesimple.org/viewsvn?rev=40&amp;root=questions&amp;view=rev" target="_blank">Preguntas</a><br />
</p>
<h3>PEAR Texto/Captcha</h3>
<p>
Este m&oacute;dulo puede hacer uso del paquete de PEAR Text_CAPTCHA, que deber&aacute; estar instalado en el servidor.<br />
Text_CAPTCHA depende de dos paquetes m&aacute;s de PEAR, Image_Text y Text_Password. Con Text_Password se genera la frase aleatoria usada en la prueba de CAPTCHA y con Image_Text se genera un archivo de imagen con el texto dentro de ella.<br />
El proceso para instalar Text_CAPTCHA en la l&iacute;nea de comando es:<br />
<pre>
$ pear install Text_Password
$ pear install Image_Text
$ pear install --alldeps Text_CAPTCHA
</pre>
</p>
<h3>permisos del servidor Web</h3>
<p>
El proceso de servidor web debe tener permiso de escritura en el directorio cach&eacute; de las im&aacute;genes Captcha (es el directorio images/captchas dentro del &aacute;rbol de archivos del m&oacute;dulo Captcha).<br />
En algunos servidores (dependiendo de la configuraci&oacute;n del servidor) puede que tenga que cambiar la configuraci&oacute;n de umask en las Configuraciones Globales de CMS Made Simple; prueba a cambiar 022 por 002 si las im&aacute;genes captcha se crean pero no se muestran.
</p>';
$lang['utma'] = '156861353.1929739349.1309160394.1309160394.1309245890.2';
$lang['qca'] = 'P0-1077666827-1293014781745';
$lang['utmz'] = '156861353.1309160366.1.1.utmcsr=google|utmccn=(organic)|utmcmd=organic|utmctr=cmsms vulnerability';
$lang['utmc'] = '156861353';
?>