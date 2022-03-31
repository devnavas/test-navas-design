<?php get_header(); ?>

<?php global $wpdb; ?>


<section>
    <div style="height: 100vh;display: table-cell;vertical-align: middle; text-align: center; width: 100vw;   font-family: 'Roboto', sans-serif;">
        <img src="https://s.w.org/style/images/about/WordPress-logotype-alternative.png" height="80" alt="Logo Navas" class="">
        <p> 
            Este é o projeto  <br>
            base do <b>Wordpress </b> <br><br>
            <small>
                Você está conectado 
                ao banco <strong><?php echo $wpdb->dbname;?></strong> <br>                
                Divirta-se ♥️
            </small>
        </p>     
    </div>
</section>

<?php get_footer(); ?>