<?php
/*  IMPORTANTE: 
 *  para utilizar a API REST com ACF
 *  é necessário utilizar o plugin
 *  instalado e não incluído na
 *  pasta do tema
 */

/*
 *	TÍTULO: MODELO DE ROTA
 *	URL: http://localhost/base/wordpress/wp-json/insercao/v1/modelo_rota/?nome=Eric
 *	Campos:
 *	- NOME: nome
 * - SOBRENOME: sobrenome
 * - TeLEFONE: phone
 */
// function modeloFuncao($data) {	    
// 	if($data->get_param( 'nome' ) != "") : //Verifica se foi enviado algum valor para nome na rota
// 		update_field('nome_do_campo', $data->get_param( 'nome' ), 'id_da_pagina');
//         echo "Sucesso: Nome inserido";
//     else :
//         echo "Erro: Nenhum valor enviado na rota";
// 	endif;
// }
// add_action(
//     'rest_api_init',
//     function () {
//         register_rest_route(
//             'insercao/v1',
//             '/modelo_rota',
//             array(
//               'methods' => 'POST',
//               'callback' => 'modeloFuncao', // Esse callable será chamado para responder as chamadas para da rota
//             )
//         );
//     }
// );
