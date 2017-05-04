
<div class="pure-u-1 pure-u-md-1-<?php echo $perrow; ?>">

    
  <div class="obox">

   
<div class="pure-g">
<div class="pure-u-1 pure-u-md-1-2" >
<center>
<?php
			if($permalink=="0")
			{
			echo '<img src="'.$image.'" class="pure-img" >';
			}
		else
		{
			if($popup=="on")
			{
			
			echo '<a href="'.$preview_large.'" title="'.$thetitle.'" class="'.$preview_type.'" border=0><img src="'.$image.'" class="pure-img"></a>';
			}
			else
			{
			echo '<a href="'.$permalink.'" border=0><img src="'.$image.'" class="pure-img"></a>';
			}
		}

			?>
			
</center>
			
</div>
<div class="pure-u-1 pure-u-md-1-2">
<div class="margin-box">
<h3><?php echo $thetitle; ?></h3>
<?php 
	
		
		echo get_the_content('Read more');
				//echo get_the_excerpt();		?>
	
</div>
</div>

</div>
 </div>
  
  </div>