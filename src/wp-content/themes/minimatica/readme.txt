=== Minimatica ===
Contributors: Daniel Tara
Tags:white, light, two-columns, fixed-width, custom-menu,
editor-style, theme-options, threaded-comments, sticky-post,
microformats, translation-ready, photoblogging
Requires at least: 3.1
Tested up to: 3.2-beta2
Stable tag: 1.0.8

Description: A stylish and modern minimalist theme
with a beautiful image gallery slider and an optional blog view.
With support for post formats, audio and video playback,
ideal for showcasing photography portfolios or podcasting
but also great for your everyday blogging.

== Description ==

A stylish and modern minimalist theme
with a beautiful image gallery slider and an optional blog view.
With support for post formats, audio and video playback,
ideal for showcasing photography portfolios or podcasting
but also great for your everyday blogging.

== Installation ==

Manual installation:

1. Upload the `minimatica` folder to the `/wp-content/themes/` directory

Installation using "Add New Theme"

1. From your Admin UI (Dashboard), use the menu to select Themes -> Add New
2. Search for 'minimatica'
3. Click the 'Install' button to open the theme's repository listing
4. Click the 'Install' button

Activiation and Use

1. Activate the Theme through the 'Themes' menu in WordPress
2. See Appearance -> Theme Options to change theme specific options

== License ==

Unless otherwise specified, all the theme files, scripts and images
are licensed under GNU General Public Licemse version 2, see file license.txt.
The exceptions to this license are as follows:
* The Flash Audio Player is licensed under MIT/Expat License, see audio-player/license.txt
* The font Vegur is free for personal and commercial use
* The script colorbox.js is licensed under MIT
* The script html5.js is licensed under MIT
* The script kwicks.js is licensed under MIT
* The Flash Video Player is licensed under LGPL v3

== Theme Notes ==

=== Gallery and Blog View ===

The theme comes with 2 view modes: Gallery and Blog.
The Gallery mode is intended for photography showcasing.
It has a custom pagination of 4 posts per page and ignores sticky posts.
This is the default view for home page and categories.
The Blog mode displays posts in classical view, respects pagination and displays sticky posts.

=== Post Thumbnail Functionality ===

By default, Post Thumbnails will appear when posts are being viewed in gallery mode,
in blog mode and also in single posts. Post Thumbnails will not work for pages

=== Image Post Format ===

Posts with the image format will display the last attached image on top of the post.
The last attached image should not appear in the post content to avoid duplicate display.

=== Gallery Post Format ===

Posts with the gallery format will display a gallery of attached images, on 3 columns,
and also offers a lightbox for full screen preview.
Posts with the gallery format should not use the [gallery] shortcode
to avoid duplicate display of the same content.

=== Audio & Video Post Formats ===

Posts with the audio & video post format will display the attached media files
in a HTML5 <audio> tag with flash fallback.
If more than one media file is attached to the post,
then these will be used as fallback sources.

=== Aside & Link Post Formats ===

Posts with the aside & link post formats will be displayed as normal posts,
but can be shown in the Ephemera widget in the sidebar.

=== Widgets ===

The Theme includes a custom Widget, Ephemera,
that can be used to display a list of the aside & link posts.
The widget was copied from the Duster Theme:
http://wordpress.org/extend/themes/duster

== Frequently Asked Questions ==

= My media files won't play =

It may be that the server doesn't recognize the media types.
You'll have to register their MIME types.
Add this to your .htaccess file:

AddType audio/ogg .ogg
AddType audio/mpeg .mp3
AddType video/ogg .ogv
AddType video/webm .webm
AddType video/mp4 .mp4
AddType video/x-m4v .m4v

= I can't upload large files =

This is a limitation from your hosting provider.
Try adding the following to your .htaccess file:

php_value upload_max_filesize 128M
php_value max_execution_time 800
php_value post_max_size 128M
php_value max_input_time 800
php_value memory_limit 128M

128M is the maximum file size.
64M should be enough if you're uploading Video
and 16M if you're uploading Audio.

= I don't want to go through all this, isn't there an easier way that just works? =

The simplest way to accomplish this is to add just a FLV video or an MP3 audio.
They should be handled by the flash players and servers should recognize their type.
But you're missing on all the HTML5 goodies.

= I uploaded more media files, but I only see one =

Post formats are designed so only one media file is shown.
The other detected files are used as fallback sources for the first one.
If you would like to embed more media, a plugin may be more helpful.

== Known Issues ==

When in gallery mode and less than 3 items are visible,
the enlarged content may not fully expand because a fixed width is set
on the <li> item which is greater than the fixed width of its parent item.
As of now I do not know of a fix for this issue.

== Support ==

You can use this support forum, for any support questions:
http://www.onedesigns.com/support/forum.php?id=14

== Additional Notes ==

The theme is released for free under the terms of the GNU General Public License version 2
and some parts under their respective licenses.
In general words, feel free and encouraged to use, modify and redistribute this theme however you like.
You may remove any copyright references (unless required by third party components) and crediting is not necessary.
The theme is offered free of charge. If someone asked money for it, someone just tricked you.
The theme also doesn't display any public facing credit or sponsored links.
If you see any, they've been injected by somebody mean.
You may safely remove them or download the theme from the original location.

== Changelog ==

= 1.0.8 =
* Fixed line-height for 2nd level menu items
* Added new tags

= 1.0.7 =
* Added support for custom header and custom background
* Theme options retrieve default values if database options is not present

= 1.0.6 =
* Fixed undefined variable in gallery post format

= 1.0.5 =
* Reverted gallery stylesheet because the content bug has not been fixed. I don't think it can.

= 1.0.4 =
* Fixed non-image attachments opening in lightbox
* Added search form to pages with no content
* Fixed content not showing on galleries with less than 3 items

= 1.0.3 =
* Fixed custom posts query not showing correct number of items

= 1.0.2 =
* Added more HTML5 tags
* Changed comments style
* Removed "Comments are closed" message from pages with comments disabled
* Fixed Editor Style

= 1.0.1 =
* Improved documentation
* Removed CSS redundancies
* Fixed CSS bugs for gallery post format
* Display "Comments are closed" on posts with comments disabled
* Use core swfobject script
* Fixed widgets notices
* Added separate functions to regiser scripts and styles
* Optimized enqueuing of scripts by adding them only where necessary

= 1.0 =
* Initial Release