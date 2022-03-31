<?php
/*
 * Abaixo está exemplificado
 * um modelo de criação de 
 * custom posts types do
 * wordpress. Para utilizar
 * basta selecionar e descomentar
 */

// add_action( 'init', 'nome_da_funcao' );

// function nome_da_funcao() {
//   $labels = array( // Define os labels
//     'name' => 'Modelo',
//     'singular_name' => 'Modelo',
//     'add_new' => 'Adicionar ',
//     'all_items' => 'Itens do modelo',
//     'add_new_item' => 'Adicionar',
//     'edit_item' => 'Editar',
//     'new_item' => 'Nova',
//     'view_item' => 'Ver',
//     'search_items' => 'Buscar',
//     'not_found' =>  'Nenhum encontrado',
//     'not_found_in_trash' => 'Nenhum encontrado',
//     'parent_item_colon' => '',
//     'menu_name' => 'Modelo'
//   );
//   $args = array( // Define configurações do custom post type
//     'labels' => $labels,
//    // 'show_in_rest' => false, //define se o post poderá ser utilizado via API REST
//     'description' => "Modelo", //um curto e descritivo sumário do tipo de post, isto pode ser exibido nos templates dos tipos de posts mas não  aparecerá em nenhum outro lugar
//     'public' => true, //se os tipos de posts estão visíveis para autores e visitantes, o valor padrão é FALSE, e significa que não aparecerá no Painel de Controle do Administrador.
//     'exclude_from_search' => true, //se os posts deste tipos aparecem normalmente nos resultados de pesquisa. O valor padrão é o oposto do valor do público.
//     'publicly_queryable' => true, //se os posts deste tipo podem ser recuperadas usando a URL, como http://www.mywebsite.com/?post_type=movie, ou no modo avançado via função query_posts(). O valor padrão é o valor público.
//     'show_ui' => true, //se o menu de links e o editor de posts serão visíveis no Painel de Controle do Administrador. O valor padrão é o valor público.
//     'show_in_nav_menus' => true, //se os posts deste tipo podem ser adicionados para navegação nos menus criados via tela Aparência > Menus. O valor padrão é o valor público.
//     'show_in_menu' => true, //onde o link dos tipos de posts vão aparecer na navegação no painel de controle do administrador. FALSE oculta o link. TRUE adiciona o link como um novo link de nível superior. Digitar uma string permite colocar o link como sublink existente ao link de nível superior, ou seja, digitando options-general.php, será aplicado abaixo do link Configurações.
//     'show_in_admin_bar' => true, //se o tipo de posts aparecerá na barra superior do Admin, abaixo do link +novo.
//     'menu_position' => 20, //posição do novo link na navegação do Painel de Controle do Administrador, 5 coloca-o abaixo dos posts, 100 coloca-o abaixo de Configurações, visite a entrada WordPress Codex para a lista completa de posições.
//     'menu_icon' => 'dashicons-media-document',
//     'capability_type' => 'post', //define quem pode acessar esse custom post
//     'hierarchical' => true, //se os posts podem ser atribuídos a um post Parent, se for TRUE, o array $support deve conter o recurso ‘page-attributes’.
//     'taxonomies' => array(''), //um array de taxonomias que podem ser aplicadas a posts deste tipo, taxonomias devem já estar registradas – isto não as cria.
//     'supports' => array('title', 'page-attributes'), //habilita de forma seletiva vários recursos de posts, como imagens em destaque, citações, campos personalizados, etc. Se definida como FALSE ao invés de array, desabilitará o editor para este tipo de post – isto é muito útil se você quer bloquear todos os posts deste tipo enquanto os mantém visíveis. Modelo: array( 'title', 'editor', 'thumbnail', 'excerpt', 'comments', 'custom-fields' ),
//     'has_archive' => false, //se o tipo de post tem uma página de arquivo, a url segue a estrutura do permalink, e o slug é o nome que você insere no parâmetro 1 do register_post_types(), ou seja, http://www.mysite.com/movies_reviews/ mostra todos posts movies_reviews.
//     'rewrite' => array('slug' => 'modelo'), //defina a slug do custom post, por padrão utiliamos o mesmo nome do ID
//     'query_var' => true, //TRUE ou FALSE define se o post pode ser visualizado ao inserir o tipo de post e o nome do post ao consultar a url, ou seja, ‘http://www.mysite.com/?movie=matrix‘. Se você digitar uma string de texto, você pode configurar o texto para ser usado depois do caractere ?, então ao digitar ‘filme’ resultaria em ‘?filme=matrix’.
//     'can_export' => true, 
//   ); 
//   register_post_type( 'modelo', $args );  // Registra o custom post type com base nos argumentos passados
// }