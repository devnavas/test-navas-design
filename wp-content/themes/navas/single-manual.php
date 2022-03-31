<?php if(is_user_logged_in()) : ?>

<?php include('assets/manual/header_manual.php'); ?>

<div class="uk-section">
  <div class="uk-container">
    <div class="uk-grid-large" data-uk-grid>

      <?php $link = get_the_permalink(); ?>
      <div class="sidebar-fixed-width uk-visible@m">
        <div class="sidebar-docs uk-position-fixed uk-margin-top">
          <h5>Índice</h5>
          <ul class="uk-nav uk-nav-default doc-nav">
            <?php 
        		$array_ultimas = array();
        		$args = array(				
            	'post_type' => 'manual',
            	'post_status' => 'publish',   
              'posts_per_page' => -1, 
              'order' => 'ASC'
        		);
        		$query = new WP_Query($args);                                                
        		if( $query->have_posts() ) :            
              while ($query->have_posts()) : $query->the_post(); ?>              
                <li class="<?php if($link == get_the_permalink()) : echo 'uk-active'; endif; ?>"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
              <?php endwhile; ?>
        		<?php endif; ?>
            <?php wp_reset_postdata(); ?>
          </ul>           
        </div>
      </div>

      <div class="uk-width-1-1 uk-width-expand@m">
        <article class="uk-article">
          <h1 class="uk-article-title"><?php the_title(); ?></h1>          
          
          <div class="article-content link-primary">
              <?php the_field('descricao'); ?>
          </div>

        </article>
      </div>
    </div>
  </div>
</div>

<div id="offcanvas-docs" data-uk-offcanvas="overlay: true">
  <div class="uk-offcanvas-bar">
    <button class="uk-offcanvas-close" type="button" data-uk-close></button>
    <h5 class="uk-margin-top">Getting Started</h5>
    <ul class="uk-nav uk-nav-default doc-nav">
      <li class="uk-active"><a href="doc.php">Template setup</a></li>
      <li><a href="doc.php">Basic theme setup</a></li>
      <li><a href="doc.php">Navigation bar</a></li>
      <li><a href="doc.php">Footer options</a></li>
      <li><a href="doc.php">Creating your first post</a></li>
      <li><a href="doc.php">Creating docs posts</a></li>
      <li><a href="doc.php">Enabling comments</a></li>
      <li><a href="doc.php">Google Analytics</a></li>
    </ul>
    <h5 class="uk-margin-top">Product Features</h5>
    <ul class="uk-nav uk-nav-default doc-nav">
      <li><a href="doc.php">Hero page header</a></li>
      <li><a href="doc.php">Category boxes section</a></li>
      <li><a href="doc.php">Fearured docs section</a></li>
      <li><a href="doc.php">Video lightbox boxes section</a></li>
      <li><a href="doc.php">Frequently asked questions section</a></li>
      <li><a href="doc.php">Team members section</a></li>
      <li><a href="doc.php">Call to action section</a></li>
      <li><a href="doc.php">Creating a changelog</a></li>
      <li><a href="doc.php">Contact form</a></li>
      <li><a href="doc.php">Adding media to post and doc content</a></li>
      <li><a href="doc.php">Adding table of contents to docs</a></li>
      <li><a href="doc.php">Adding alerts to content</a></li>
    </ul>
    <h5 class="uk-margin-top">Customization</h5>
    <ul class="uk-nav uk-nav-default doc-nav">
      <li><a href="doc.php">Translation</a></li>
      <li><a href="doc.php">Customization</a></li>
      <li><a href="doc.php">Development</a></li>
      <li><a href="doc.php">Sources and credits</a></li>
    </ul>
    <h5 class="uk-margin-top">Help</h5>
    <ul class="uk-nav uk-nav-default doc-nav">
      <li><a href="doc.php">Contacting support</a></li>
    </ul>
  </div>
</div>

<div id="offcanvas" data-uk-offcanvas="flip: true; overlay: true">
  <div class="uk-offcanvas-bar">
    <a class="uk-logo" href="index.php">Docs</a>
    <button class="uk-offcanvas-close" type="button" data-uk-close></button>
    <ul class="uk-nav uk-nav-primary uk-nav-offcanvas uk-margin-top">
      <li ><a href="index.php">Home</a></li>
      <li class="uk-active"><a href="configuracoes.php">Docs</a></li>
      <li ><a href="blog.php">Blog</a></li>
      <li ><a href="contact.php">Contact</a></li>
      <li>
        <div class="uk-navbar-item"><a class="uk-button uk-button-success" href="contact.php">Contact</a></div>
      </li>
    </ul>
    <div class="uk-margin-top uk-text-center">
      <div data-uk-grid class="uk-child-width-auto uk-grid-small uk-flex-center">
        <div>
          <a href="https://twitter.com/" data-uk-icon="icon: twitter" class="uk-icon-link" target="_blank"></a>
        </div>
        <div>
          <a href="https://www.facebook.com/" data-uk-icon="icon: facebook" class="uk-icon-link" target="_blank"></a>
        </div>
        <div>
          <a href="https://www.instagram.com/" data-uk-icon="icon: instagram" class="uk-icon-link" target="_blank"></a>
        </div>
        <div>
          <a href="https://vimeo.com/" data-uk-icon="icon: vimeo" class="uk-icon-link" target="_blank"></a>
        </div>
      </div>
    </div>
  </div>
</div>

<?php include('assets/manual/footer_manual.php'); ?>

<?php endif; ?>