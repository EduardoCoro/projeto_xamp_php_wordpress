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

// ** Configurações do MySQL - Você pode pegar essas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'Etec');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '');

/** nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Conjunto de caracteres do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de collate do banco de dados. Não altere isso se tiver dúvidas. */
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
define('AUTH_KEY',         'fiA6j=&x>BsU_Y&{<;]}Xj@ZBI2c[MBqL,%F=nzK<N?~=_}Z0nz9N7yWMeXMX,Am');
define('SECURE_AUTH_KEY',  '/K~h{jupEOD[}o?S%[ogP;p*vAY)ng|w*H2Bqe;4dmxV1& u9upq=i^;BF`}Ia&@');
define('LOGGED_IN_KEY',    '&C|ZmWVh~Z>P%Nal/t[#k7*V)sgo~gD!V_]`vBwPUTV-v[:56*U(6P|Sz< ?(K[$');
define('NONCE_KEY',        'g0^k7/Sl:!ryE!ZvlAcEfH0<f@(5$COM_VdGgEe=hG4#k*iKe+(I(XU`D@ZZ?OYr');
define('AUTH_SALT',        '|wYUSoCy7 ceYAZN~5?._sf3eeyoms0:~:@{&@9tiBObw3}A;0#3mK<LL*Tq@!6d');
define('SECURE_AUTH_SALT', 'H}iMFtsK@x d^&<to l6_qEK@HUNA^&8G=.JRH:BkUQBV<<oISWJb?S`bOta3S)s');
define('LOGGED_IN_SALT',   '/BGCITge2,p:*af;RdGwQo{P/#Y+I>U1sfc$gm&dPKkocA0z&H<sMlxFrJ8}.|ZF');
define('NONCE_SALT',       '`~m^u}mb~Y@g^A&E)l(TAbDK/5k@Ncyg[`d@21@I0r6wx^t#uVh0c&+]Z<3|hD`z');

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

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
	
/** Configura as variáveis do WordPress e arquivos inclusos. */
require_once(ABSPATH . 'wp-settings.php');
