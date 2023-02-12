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
define('DB_NAME', 'wordpress');

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
define('AUTH_KEY',         'Ilq}8?o&2ZP4.Yhp+rvv`w;>UNK@/*_I.1`V0WNQS;)zt=3AZb,x]3A-r4^w3[x7');
define('SECURE_AUTH_KEY',  '!E/BmH{pC:u,iQCy&Igtw{5}4pcO}/l#65Pvy}oHMhID`$l$wziJaP]1!sTaFJru');
define('LOGGED_IN_KEY',    'X6W,ov#I3]G|fxNSQtvq[K3%`]O*4pOmV/4L&CE83n-#_V?t|_o~t`o(estO<vt<');
define('NONCE_KEY',        '9hUzm+f5J}@9 6R4ES|;#ZCXg7+1o#i2O!e,J0p~0T+tU#javIg%*_FMi#dsc-i0');
define('AUTH_SALT',        'a2%pT^s)e[(zDh<)01/_tKmsX|ReX^+R,1M?U#&:3.30(;bm}Edues:b,9<kS|97');
define('SECURE_AUTH_SALT', '%:e7$Oio*(H_(a`p)z~?OEi,7XTAaj^=20C,F9s2=GuTzR=4`7`dV:iQ}QZZy{;k');
define('LOGGED_IN_SALT',   '!Ggif?dAeRV)>-_<uyQ:<48w?Rb5k.E2A!NTkSGXTo*1TLwo* 5Q>|cgMla;2[83');
define('NONCE_SALT',       'fyE+MxbU9wW)+Y.,=MU:3L:~GsiCq>br2cD>y$|_A{/J3ER=w2=i]imJN=|)2;!~');

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
