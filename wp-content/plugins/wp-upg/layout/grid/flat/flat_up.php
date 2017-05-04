<?php
	// Changing excerpt more
   function new_excerpt_more($more) {
   global $post;
   return '… <a class="more-link" href="'. get_permalink($post->ID) . '">' . 'Read More &raquo;' . '</a>';
   }
   add_filter('excerpt_more', 'new_excerpt_more');
   ?>
<style>
.obox {
  border: 1px solid #ddd;
  padding: 10px 12px;
  margin-bottom: 15px;
  background: #fff;
  obox-sizing: border-obox;
  border-radius: 3px;
  overflow: hidden;
  margin: 0px 5px 5px 0px;
}
.obox:hover {
  border: 1px solid #5890FF;
  padding: 10px 12px;
  margin-bottom: 15px;
  background: #fff;
  obox-sizing: border-obox;
  border-radius: 3px;
  overflow: hidden;
  margin: 0px 5px 5px 0px;
}
.obox.blue {
  border: 1px solid #5890FF;
}
.omiddle
{
	
   text-align:center;
  
    
}
</style>


 	
<div class="pure-g">