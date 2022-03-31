<?php
/**
 * As configurações básicas do WordPress.
 *
 * Esse arquivo contém as seguintes configurações: configurações de MySQL, Prefixo de Tabelas,
 * Chaves secretas, Idioma do WordPress, e ABSPATH. Você pode encontrar mais informações
 * visitando {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. Você pode obter as configurações de MySQL de seu servidor de hospedagem.
 *
 * Esse arquivo é usado pelo script ed criação wp-config.php durante a
 * instalação. Você não precisa usar o site, você pode apenas salvar esse arquivo
 * como "wp-config.php" e preencher os valores.
 *
 * @package WordPress
 */

/*
define('WP_HOME', 'http://localhost/nomedosite/');
define('WP_SITEURL', 'http://localhost/nomedosite/');
*/

// ** Configurações do MySQL - Você pode pegar essas informações com o serviço de hospedagem ** //
define('DB_NAME', 'base');
define('DB_USER', 'root');
define('DB_PASSWORD', 'root');
define('DB_HOST', 'localhost');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer cookies existentes. Isto irá forçar todos os usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '!fRybh.Wy7y&mcJ 6djRC)t!H[v^Pd?-]d:^>2F82}3-=!+]fFa$h i7q5|tyom9');
define('SECURE_AUTH_KEY',  '*9?_B8[ifHKx1=J1%EBFPS~,:V].{p$]9{K^xd;2<xD#qxr-.ee761WM>8r;T?OU');
define('LOGGED_IN_KEY',    'viq5iXk9npN$zDcuP:hwQ$C6^_a@v0/5qeCu=>x9K=-]!z3) |J b]ZJ~L>^6X{+');
define('NONCE_KEY',        'Fh):k+|-t2w I`Mnz;|]jbQvk4brUYitGtC[>E3%L3M(2?x/eiE=?YITwt#a%)7/');
define('AUTH_SALT',        ' ${LByN/TG4c#,,fePic|*qFBK+CFMYX+GJs!tK^;C1BnN<%-DCN]^30%*n(xKf}');
define('SECURE_AUTH_SALT', 'S`qa^M.2M<=]Fv}kb}}C~Gcu6{TcGI&M&2Cwq#2SO5#Z37+e<U+aen,itJ,K?RQl');
define('LOGGED_IN_SALT',   '0F:2/w/e|~]-`0=;-BE`X>}ZcqN@:Fmj5NLOD~6URX:O>]=$b-j-ido:zysN3g;)');
define('NONCE_SALT',       'qDqYVFE-KS)I( Q]>rWO8g{e2S^xx^&%N2^6@xXj5hmL|F&~MNs(9s5i,Y%k+l}]');

define( 'WP_AUTO_UPDATE_CORE', false ); //remove a atualização automatica do Wordpress

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der para cada um um único
 * prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';


/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * altere isto para true para ativar a exibição de avisos durante o desenvolvimento.
 * é altamente recomendável que os desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 */
define('WP_DEBUG', false);


//Chave utilizada para JWT na API REST
// define('JWT_AUTH_SECRET_KEY', 'E]/Iq=ATurRw%J1m_bIq*b-xEk+,nAYgVYFs0c]co-aj89mus<l*E `EgF*>#d>/');
// define('JWT_AUTH_CORS_ENABLE', true);


/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis do WordPress e arquivos inclusos. */
require_once(ABSPATH . 'wp-settings.php');
