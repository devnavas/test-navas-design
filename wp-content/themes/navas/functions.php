
<?php

/**
 * Adiciona o Titulo da Página 
 */
function theme_slug_setup() {
   add_theme_support( 'title-tag' );
}
add_action( 'after_setup_theme', 'theme_slug_setup' );

/**
 * Remove mensagem de atualização do wordpress do painel
 */
add_filter( 'pre_site_transient_update_core', create_function( '$a', "return null;" ) );

/**
 * Limpa wp_head 
 */
remove_action( 'wp_head', 'rsd_link' );
remove_action( 'wp_head', 'wlwmanifest_link' );
remove_action( 'wp_head', 'wp_generator' );
remove_action( 'wp_head', 'start_post_rel_link' );
remove_action( 'wp_head', 'index_rel_link' );
remove_action( 'wp_head', 'adjacent_posts_rel_link' );
remove_action( 'wp_head', 'wp_shortlink_wp_head' );
remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
remove_action( 'wp_print_styles', 'print_emoji_styles' );
remove_action('rest_api_init', 'wp_oembed_register_route');
remove_filter('oembed_dataparse', 'wp_filter_oembed_result', 10);
remove_action('wp_head', 'wp_oembed_add_discovery_links');
remove_action('wp_head', 'wp_oembed_add_host_js');

/**
 * Customiza Login Wordpress  
 */
add_action('login_head', 'custom_login_logo');
function custom_login_logo() {
  echo '<style type="text/css">
          .login h1 a {
            background: url("' . get_template_directory_uri() . '/assets/navas.svg") no-repeat scroll center 0 transparent;
            width: 155px;
            background-position: center;
          }
          body {
            background-color: #f1f1f3;          
          }
          .login form {
            border: none;
            -webkit-box-shadow: 0px 0px 30px 2px rgba(0,0,0,0.2);
            -moz-box-shadow: 0px 0px 30px 2px rgba(0,0,0,0.2);
            box-shadow: 0px 0px 30px 2px rgba(0,0,0,0.2);
            padding-bottom: 10px;
          }
          .login form .input {
            border-radius: 4px;            
            border: 1px solid #f1f1f1;
            background: #f1f1f3;
            font-size: 13px;
            
          }          
          .login form .input:focus {
            border: none;
            box-shadow: none;
            border-bottom: 1px solid #508195;
          }              
          #login {
            position: absolute;
            left: 50%;
            width: 420px;
            top: 50%;
            transform: translateX(-50%) translateY(-50%);
            padding: 0px;
          }
          #login #wp-submit {
            position: relative;
            right: 0px;
            margin: 17px 0px;
            padding: 0px 25px;
            width: 100%;
            border-radius: 0px;
            background: #323232;
            background: #000;
            border: none;
            text-align: center;
            text-transform: uppercase;
            font-size: 11px;
            bottom: 0px;
            height: 44px;
            line-height: 44px;
          }
          .login .message {
            background: #71aee6;
            color: #fff;
            text-align: center;
          }
          .login #login_error {
            border-left-color: #d63638;
            background: #d63637;
            color: #fff;
            text-align: center
          }
          .login .forgetmenot label {
            font-size: 10px;
            text-transform: uppercase;
          }
          .login #nav {
            display: none;
          }
          .dashicons-visibility:before {
            font-size: 12px;
          }
    
          @media only screen and (max-width : 480px) { 
            #login {
              width: 95%;
            }            
          }

       </style>';
}
add_action('admin_head', 'my_custom_panel');
function my_custom_panel() {
  echo '<style type="text/css">
          body {
            background: #fbfbfb;
          }
          .btAjuda,
          .btManual {
            padding: 10px 30px;
            border: 1px solid #d9dadb;
            text-transform: uppercase;
            text-decoration: none;
            font-size: 11px;
            color: #484848;
            font-weight: 600;
            margin-right: 10px;
            margin-top: 10px;
            display: inline-block;
            transition: 0.3s;
          }
          .btAjuda:hover,
          .btManual:hover {
            background: #ebebeb;
            border: 1px solid #ebebeb;
            color: #484848;
          }
          #adminmenuback {
            background-image: url("' . get_template_directory_uri() . '/assets/navas-branco-completa.svg");
            background-position: 13px 13px;
            background-size: 62px;
            background-repeat: no-repeat;
          }
          #screen-meta-links {
            margin-top: -32px;
          }
          #contextual-help-link-wrap {
            display: none;
          }

  				#wp-admin-bar-wp-logo {
            display:none
          }
          .sticky-menu #adminmenuwrap,
          #wpadminbar,
          #adminmenu li.menu-top,
          #adminmenu div.wp-menu-name,
          #adminmenuback {
            background-color: #255466;
            background-color: #161d46;
            background-color: #000;            
          }         
           
          #wpadminbar {
            width: calc(100% + 0px);
            float: right;
            position: relative;
            right: 0px;
            left: auto;
            top: -32px;
            height: 50px;
            background: #fff;
            border-bottom: 1px solid #ebeff4;
            padding: 0px 10px;
            z-index: 1;
          }
          #adminmenu li.wp-menu-separator {
            background: #161d46;
            margin: 0px;
            height: 2px;
            display: none;
          }
          
          #adminmenu .wp-has-current-submenu .wp-submenu {
            background-color: #2c2c2c;
          }
          #collapse-button {
            display: none; 
          }
          #adminmenu div.wp-menu-name {
            text-transform: uppercase;
            font-size: 11px;
          }
          #adminmenu, #adminmenu .wp-submenu, #adminmenuback, #adminmenuwrap {
            width: 200px;
          }
          #wpcontent, #wpfooter {
            margin-left: 200px;
          }
          .wrap h1 {
            text-transform: uppercase;
            font-weight: 800;
            font-size: 21px;
          }
          .search-box input[name="s"] {
            border-radius: 0px;
            border: none;
            border-bottom: 1px solid #dee0e2;
          }
          .wp-core-ui .button {
            vertical-align: baseline;
            background: #161e46;
            color: #fff;
            font-size: 12px;
            padding: 0px 15px;
            border-radius: 0px;
            border: none;
            text-transform: uppercase;
            font-size: 9px;
            font-weight: 500;
            transition: 0.2s;
        }
        .wp-core-ui .button:hover {
          background: #123947;
          color: #fff;
          
        }
        
        .tablenav .actions select {
          border-radius: 0px;
          border-color: #e8e9eb;
        }
        #wpadminbar .quicklinks>ul>li>a,
        #wpadminbar ul li:last-child .ab-item,
        #wpadminbar #wp-admin-bar-my-sites a.ab-item,
         #wpadminbar #wp-admin-bar-site-name a.ab-item {
          color: #636363;
          text-transform: uppercase;
          line-height: 50px;
          font-size: 12px;
          height: 50px;
          font-weight: 600;
        }
        #yoast-ab-icon {
          position: relative;
          top: 7px;
        }
        .wp-admin #wpadminbar #wp-admin-bar-site-name>.ab-item:before {
          content: "\f11f";
          color: #636363;
          line-height: 42px;
          padding: 0px;
        }
        #wp-admin-bar-my-account>.ab-item:before {
          color: #636363;
          line-height: 42px;
          padding: 0px;
        }
        #dashboard-widgets-wrap .postbox {
          border: 1px solid #ebeff4;
        }
        #wpseo-dashboard-overview a.button {
          line-height: 35px;
        }
        #wpseo-dashboard-overview .onpage .button.landing-page {
          border-color: #d54e20;
          background: #d54e20;
          box-shadow: none;
          transition: 0.4s;
        }
        #wpseo-dashboard-overview .onpage .button.landing-page:hover {
          background: #d94614;
        }
        #wpadminbar ul#wp-admin-bar-root-default>li:hover a {
          background:#f4f6f8;
        }
        #wpadminbar .quicklinks ul {        
          background: #f4f6f8;
        }
        #adminmenu li.menu-top:hover {
          background-color: #000;
        }
        .js #adminmenu .opensub .wp-submenu {
          background: #ebeff4;
        }
        #adminmenu .wp-not-current-submenu li>a {
          color: #161d46;
        }
        #adminmenu .wp-not-current-submenu li>a:hover {
          color: #161d46;
        }
        #adminmenu li.menu-top::after,
        #adminmenu .wp-not-current-submenu .wp-submenu::after {
          display: none;
        } 
        .imgBoasVindas {
          background: url("' . get_template_directory_uri() . '/assets/home_page_dashboard.svg") no-repeat scroll center 0 transparent;
          position: absolute;
          height: 270px;
          width: 50%;
          top: 50px;
          right: 0px;          
          background-size: contain;
        }
        #wpadminbar .ab-top-menu>li.hover>.ab-item {
          background: #fff;
          
        }
        #wpadminbar .quicklinks .menupop.hover ul li .ab-item,
        #wpadminbar #wp-admin-bar-user-info .display-name {
          color: #636363;
        }
        #wpadminbar .quicklinks>ul>li>a{
          background: #fff;
        }
        #wpadminbar:not(.mobile) .ab-top-menu>li:hover>.ab-item {
          background: #fff;
        }
        #adminmenu li.wp-has-current-submenu a.wp-has-current-submenu {
          background: #000000;
        }
        .js #adminmenu .opensub .wp-submenu {
          background-color: #2c2c2c;
        }
        #adminmenu .wp-not-current-submenu li>a {
          color: #fff;
        }

        @media only screen and (max-width : 768px) { 
          #adminmenu .wp-not-current-submenu li>a {
            color: #161d46;
          }
          #adminmenu .wp-not-current-submenu li>a:hover {
            color: #161d46;
          }
        }
        

  			</style>';
}

/**
 * Remove permissão de criar novas páginas 
 */
function permissions_admin_redirect() {
  $result = stripos($_SERVER['REQUEST_URI'], 'post-new.php?post_type=page');
  if ($result!==false && !current_user_can('publish_pages')) {
    wp_redirect(get_option('siteurl') . '/wp-admin/edit.php?post_type=page&permissions_error=true');
  }
}
add_action('admin_menu','permissions_admin_redirect');

function permissions_admin_notice() {
  echo "<div id='permissions-warning' class='error fade'><p><strong>".__('Você não tem permissão para criar novas páginas.')."</strong></p></div>";
}


/**
 * Remove alertas de atualizacao 
 */
add_action('admin_menu','wphidenag');
function wphidenag() {
	if(!current_user_can('publish_pages')) {
  	remove_action( 'admin_notices', 'update_nag', 3 );
  }
}

/**
 * Remove a toolbar wordpress
 */
add_filter('show_admin_bar', '__return_false');

/**
 * Cria novo tipo de usuário 
*/
add_role( 'cliente', 'Cliente');
remove_role('editor');
remove_role('file_uploader');
remove_role('author');
remove_role('contributor');
remove_role('subscriber');

global $wp_roles;
$role = get_role('cliente');
$role->add_cap( 'read' );
$role->add_cap( 'edit_files' );                     //upload de arquivos
$role->add_cap( 'upload_files' );                   //upload de arquivos
$role->add_cap( 'remove_upload_files' );            //upload de arquivos
$role->add_cap( 'delete_posts' );                   //upload de arquivos
$role->add_cap( 'edit_pages' );                     //edicao de paginas
$role->add_cap( 'edit_others_pages' );              //edicao de paginas
$role->add_cap( 'edit_published_pages' );           //edicao de paginas
$role->add_cap( 'edit_others_posts' );              //edicao de paginas
$role->add_cap( 'edit_posts' );                     //edicao de posts
$role->add_cap( 'edit_published_posts' );           //edicao de posts
$role->add_cap( 'publish_posts' );                  //edicao de posts
$role->add_cap( 'delete_others_posts' );            //upload de posts
$role->add_cap( 'delete_published_posts' );         //upload de posts
$role->add_cap( 'manage_categories' );              //categorias (posts e custom post types)


/**
 * Custom painel wordpress 
 */
add_filter('admin_footer_text', 'custom_admin_footer');
function custom_admin_footer() {
  echo '<a href="http://navas.design" target="_blank" title="" ><img style=" width: 20px; position: relative; top: 3px; " src="' . get_template_directory_uri() . '/assets/favicon.png" ></a>';
}

/*

/**
 * Remove links da adminbar 
*/
function remove_admin_bar_links() {
  global $wp_admin_bar, $current_user;
  $wp_admin_bar->remove_menu('updates');
  $wp_admin_bar->remove_menu('comments');
  $wp_admin_bar->remove_menu('new-content');
}
add_action( 'wp_before_admin_bar_render', 'remove_admin_bar_links' );

function remove_links_menu() {
  global $menu;


  remove_menu_page('upload.php');
  remove_menu_page('link-manager.php');
  remove_menu_page('tools.php');
  remove_menu_page('edit-comments.php');

  if(!current_user_can('publish_pages')) {
    remove_menu_page('profile.php');
  }
}
add_action( 'admin_menu', 'remove_links_menu' );

/**
 * Remove a metabox de atributos da página 
 */
function remove_page_attribute_support() {
  remove_post_type_support('page','page-attributes');
}
add_action( 'init', 'remove_page_attribute_support' );

/**
 * Remove widgets da dashboard 
*/
function disable_default_dashboard_widgets() {    
  remove_action('welcome_panel', 'wp_welcome_panel');
  remove_meta_box('dashboard_right_now', 'dashboard', 'core');
  remove_meta_box('dashboard_site_health', 'dashboard', 'core');
  
  remove_meta_box( 'dashboard_php_nag', 'dashboard', 'normal' );
  remove_meta_box('dashboard_activity', 'dashboard', 'core');
  remove_meta_box('dashboard_recent_comments', 'dashboard', 'core');
  remove_meta_box('dashboard_incoming_links', 'dashboard', 'core');
  remove_meta_box('dashboard_plugins', 'dashboard', 'core');
  remove_meta_box('dashboard_quick_press', 'dashboard', 'core');
  remove_meta_box('dashboard_recent_drafts', 'dashboard', 'core');
  remove_meta_box('dashboard_primary', 'dashboard', 'core');
  remove_meta_box('dashboard_secondary', 'dashboard', 'core');
}
add_action('admin_menu', 'disable_default_dashboard_widgets');

// Remove mensagem de versão de PHP
function remove_php_nag() {
	remove_meta_box( 'dashboard_php_nag', 'dashboard', 'normal' );
}
add_action( 'wp_dashboard_setup', 'remove_php_nag' );

function dashboard_navas(){
  echo '
  <h2><b>Olá!</b></h2>
  <p>
    Bem-vindo ao painel do seu Website! <br>
    Aqui você poderá fazer a gestão de todo o conteúdo disponível para edição.
  </p>';
  
}
function wordpress_destaque(){
 echo "<a target='_blank' href='http://navas.design'><img width='100%' src='" . get_template_directory_uri() . "/assets/home_page_dashboard.svg' /></a>";
}
function add_dashboard_widgets(){
	wp_add_dashboard_widget(
    'dashboard_suporte_widget',
    'Suporte',
    'dashboard_navas'
  );
  wp_add_dashboard_widget(
    'dashboard_obvio_widget',
    'navas.design',
    'wordpress_destaque'
  );
}

add_action(
  'wp_dashboard_setup',
  'add_dashboard_widgets'
);

/**
 * Correção de acentuação nas imagens
*/
add_filter('sanitize_file_name', 'remove_acentos_arquivos_upload', 10);
function remove_acentos_arquivos_upload ($filename) {
  return remove_accents( $filename );
}


/**
 * Chave da API Google Maps para ACF 
 */
function acf_google_map_api( $api ){
 	$api['key'] = 'AIzaSyC884fFO7den2XN_qzCKVbjKFu87Qwafck';
 	return $api;
}
add_filter('acf/fields/google_map/api', 'acf_google_map_api');


/**
 * Integrar o Advanced Custom Fields no tema 
 */
// Atualiza o caminho
function acf_caminho_configuracoes( $path ) {
    $path = get_stylesheet_directory() . '/acf/';
    return $path;
}
add_filter('acf/settings/path', 'acf_caminho_configuracoes');

// Atualiza o diretório
function acf_diretorio_configuracoes( $dir ) {
    $dir = get_stylesheet_directory_uri() . '/acf/';
    return $dir;
}
add_filter('acf/settings/dir', 'acf_diretorio_configuracoes');

// Inclui o ACF
include_once( get_stylesheet_directory() . '/acf/acf.php' );

//Cria custom post para manual
add_action('init','create_post_type');


?>
