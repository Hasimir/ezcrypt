<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><?=$meta_title;?></title>
		<meta name="description" content="EZCrypt - The original safer way to encrypt your pastes online!" />
		<meta name="keywords" content="ezcrypt, encryption, pastebin, paste, secure, aes" />
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<?if( $norobots !== false ) {?><meta name="robots" content="noarchive" />
		<meta name="googlebot" content="nosnippet" />
		<meta name="googlebot" content="noarchive" />
		<?}?><meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="pragma" content="no-cache" />
		<link rel="stylesheet" href="/css/styles.min.css" />
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<!--[if gte IE 9]>
		<style type="text/css">
			.gradient { filter: none !important; }
		</style>
		<![endif]-->
	
		<script type="text/javascript">
			var lib = '<?php echo ( !empty( $pastes ) ) ? $pastes->get_crypto() : 'CRYPTO_JS'; ?>';
			
			// holder object to store jquery commands until jquery is loaded up
			window.$ = ( function() {
				var q = [], f = function( cb ) {
					q.push( cb );
				};
				f.attachReady = function( $ ) { 
					$( function () {
						$.each( q, function( i, f ) {
							f.call( document );
						} );
						q.length = 0;
					} );
					return $;
				}
				return f;
			} )();
		</script>
		<script type="text/javascript" src="/inc/jslibs/LAB.min.js"></script>
		<script type="text/javascript" src="/inc/jslibs/core-0.4.min.js"></script>
	</head>
	<body>
		<!--
		<div id="overlay"><div id="popup">
			<div class="success">Paste created successfully!</div>
			<div style="height: 10px;"></div>
			<input type="text" readonly="readonly" value="" class="url" onclick="$( this ).select();" onfocus="$( this ).select();" />
			<div style="height: 5px;"></div>
			Please note that the above URL can only be used once, as it will be deleted after being displayed.
		</div></div>
		-->
		<div id="holder">
			<div id="header" class="gradient">
				<a href="/">EZCrypt</a> <span class="small">v0.4</span> - Giving you the power to encrypt your information
			</div>
			<div id="menu">
				<a href="/">Home</a>
				<span class="small">&nbsp;</span>
				<a href="/about">About</a>
				<span class="small">&nbsp;</span>
				<a href="mailto:contact@ezcrypt.it">Contact</a>
				<span class="small">&nbsp;</span>
				<a href="https://github.com/novaking/ezcrypt" target="_blank">Sourcecode</a>
				<span class="small">&nbsp;</span>
				<div style="position: absolute; right: 0px; top: 10px;"><a href="http://flattr.com/thing/647627/EZCrypt" target="_blank"><img src="/css/flattr-badge-large.png" alt="Flattr this" title="Flattr this" border="0" width="93" height="20" /></a></div>
			</div>
			<div id="main">