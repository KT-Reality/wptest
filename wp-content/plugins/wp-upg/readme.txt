=== User Picture Gallery===

Contributors: odude

Tags: UPG, wp-upg, add gallery, add image, add images, add photo, add picture, add pictures, album, best gallery, best gallery plugin, content gallery, filterable gallery, user submit, free gallery, free photo gallery, fullscreen gallery, fullscreen slider, Galleria, galleries, gallery, youtube gallery, gallery image, gallery lightbox, Gallery Plugin, gallery shortcode, gallery wordpress, grid, grid gallery, image album, image gallery, image gallery plugin, image slider, images gallery, justified, justified gallery, lightbox gallery, media gallery, multiple pictures, photo album, photo albums, photo gallery, photoalbum, photogallery, youtube, picture, pictures, plugin gallery, portfolio, responsive gallery, responsive wordpress photo gallery, shortcode gallery, Simple gallery, youtube url, thumbnail gallery, thumbnails, wordpress gallery, wordpress gallery plugin, wordpress photo gallery plugin, wp gallery, wp gallery plugin, wp gallery plugins, user photo gallery, user picture gallery, user submitted, frontend, frontend post

Donate Link: http://www.odude.com

Requires at least: 3.8

Tested up to: 4.7

Stable tag: 1.2

License: GPLv3

License URI: http://www.gnu.org/licenses/gpl-3.0.html


Frontend User Submitted Image & Youtube Gallery.


== Description ==

= UPG - User Photo Gallery =

User Photo Gallery (UPG) is easy way to make image gallery. Images and Youtube videos can be uploaded by visitors without registration.

= Features =

* Responsive image/youtube gallery for mobile & tablets.
* Registered & Visitors can upload images from front end.
* Choose selected category from frontend.
* Options to set approval of images before it is displayed.
* Can view images as gallery for particular users.
* Clean Permalinks for Search Engines.
* External plugins shortcode can be added near image.
* Options of Lightbox and static page.
* True Pagination by wp-navi plugin
* Set No. of Images per row
* Set No. of Images per page
* Images are deleted as soon as post is deleted permanently.
* Sorting options at shortcode
* List images from selected category
* Thumbnail Gallery View
* Full of shortcodes parameters for page & post.

Basic installation video
[youtube https://www.youtube.com/watch?v=NjkUddltDZw]



= Support =

For further queries feel free to drop a line at <a href="mailto:navneet@odude.com">navneet@odude.com</a>.
or
Go to our site and read full updated documentaions and features at <a href="http://odude.com/user-photo-gallery/">ODude.com wp-upg</a>

= Live Demo =

Click on the link to see the <a href="http://odude.com/demo/users-photo-gallery/" target="_blank">Basic Demo</a>.


== Installation ==

= Automatic Installation =

* Go to your plugin browser inside your wordpress installation and search `odude` by keyword. Then choose User Photo Gallery and click install. It will be installed shortly.
* Activate the plugin from `Plugins` menu after installation

= Manual Installation =

* Download the latest version and extract the folder to the `/wp-content/plugins/` directory
* The plugin will appear as inactive in your `Plugins` menu
* Activate the plugin through the `Plugins` menu in WordPress

= Show images from specific album =

* Just paste this shortcode 
[upg-list perrow="3" perpage="30" orderby="date" page="off" layout="list" album="test"] 
in your post or page to get the gallery pictures.

* Note: Here `test` is the slug(category) name of album.

= Create post image page =

* Create a page and give title as your wish. Keep below shortcode at description area.
[upg-post]



== Frequently Asked Questions ==
   
= 1. What type of images does it support? =

Supports the following types of image files: JPG, JPEG, PNG, GIF, Youtube URL

= 2. How thumbnails are created? =

Thumbnails and preview is based on main default settings of wordpress media manager.

= 3. Create page to post/upload image =
Create a page and give title as your wish. Keep below shortcode as [upg-post type=image] at description area. Link this page at your menu.

= 4. Show images from specific album/category =

 Paste shortcode as below to the page description and link that page to your menu.<br>
[upg-list perrow="3" perpage="30" orderby="date" page="off" layout="list" album="test"]
<br>
<b>test </b> is a album or category slug name.<br>Leave it blank to show all images. 

   

==  Screenshots ==

1. Responsive Image Gallery
2. Frontend Post Form for visitors
3. Admin Setting Options
4. Admin Side Image List
5. Lightbox Video
6. Gallery Flat Layout

== Upgrade Notice ==

Safe to update

== Changelog ==

= 0.0.14 = 
* More hooks and actions are added for developers.

= 1.0 =
* Added hooks for email notification

= 1.2 =
* Auto youtube post page is created at the time of installation
* Two default categories added in album
* Thumbnail fixes

