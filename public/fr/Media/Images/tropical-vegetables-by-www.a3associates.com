
	
<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	
                
<title>Knowledge for development</title>
<!--<title>tropical vegetables by www.a3associates.com / Images / Media - Knowledge</title>-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script><meta name="author" content="CTA" /><meta name="description" content="" /><meta name="keywords" content=" connaissances, savoir, acp, rural, d&amp;eacute;veloppement, agriculture, recherche scientifique, recherche, science, technologie, sciences et technologies, biotechnologie, biodiversit&amp;eacute;, S&amp;T, STI, Afrique, Cara&amp;iuml;bes, Pacifique, , &amp;eacute;ducation, laboratoire, champs, culture, agroforesterie, milieu rural, alimentation, post-r&amp;eacute;colte, technique agricole, indig&amp;egrave;ne, petite exploitation, pauvret&amp;eacute;, s&amp;eacute;cheresse, plantation, bio-ing&amp;eacute;nierie, OGM, CTA" />    

<link rel="Home" href="/fr" title="Page de garde Knowledge" />
<link rel="Index" href="/fr" />
<link rel="Search" href="/fr/content/search" title="Recherche Knowledge" />
<link rel="Shortcut icon" href="/design/knowledge/images/favicon.ico" type="image/x-icon" />
<link rel="Alternate" href="/fr/layout/set/print/Media/Images/tropical-vegetables-by-www.a3associates.com" media="print" title="Version imprimable" />
<link rel="stylesheet" type="text/css" href="/design/base/stylesheets/core.css" />
<link rel="stylesheet" type="text/css" href="/design/knowledge/stylesheets/knowledge.css" />
<link rel="stylesheet" type="text/css" href="/design/knowledge/stylesheets/global.css" />
<link rel="stylesheet" type="text/css" href="/design/knowledge/stylesheets/mega_menu.css" />
<link rel="stylesheet" type="text/css" href="/design/knowledge/stylesheets/addthis_widget.css" media="screen" />
<link rel="shortcut icon" href="/design/knowledge/images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="/design/knowledge/stylesheets/lightbox.css"/>
<!--[if IE 6]> <link rel="stylesheet" type="text/css" media="screen" href="includes/style/ie6.css" /> <![endif]-->
<!--[if IE 7]> <link rel="stylesheet" type="text/css" media="screen" href="includes/style/ie7.css" /> <![endif]-->

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="/design/knowledge/js/global.js"></script>
<script type="text/javascript" src="/design/knowledge/js/modernizr.js"></script>
<script language="javascript" src="/design/knowledge/js/lightbox.js"></script>
<script src="https://valsplat.nl/clients/2852/invite.js"></script>

<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-827424-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

</head>
<body class="default">

<div id="base"><div id="base-header">
	<a href="http://www.cta.int">
		<div class="logo">
			<h3>CTA</h3>
		</div>
	</a>
	<a href="/fr">
		<span class="header-image-fre-FR">Knowledge for Development</span>
	</a>
	<div class="site-nav">
		<ul>
			<li><a href="/fr/A-Propos/Nous-contacter">Contact</a> | </li>
			<li><a href="/fr/A-Propos/A-propos">About</a> | </li>
							<li><a href="/fr/user/login">Login</a> | </li>
						
			
			<li style="color: white;"><a href="/fr/A-Propos/A-propos-de-RSS">RSS</a> | </li>
							<li style="color: white;"><a class="menu_item" href="/en/Media/Images/tropical-vegetables-by-www.a3associates.com">English</a></li>
						
		</ul>
	</div> 
	<div class="site-search">
		<form action="/fr/content/search" method="get">
		<label for="topSearch">Search</label>
		<input id="topSearch" class="text" type="text" name="SearchText" />
		<input src="/design/knowledge/images/btn_search.gif" class="search-button" type="image" name="OkButton" alt=" Ok " />
		</form>
	</div> 
</div> 
								
<div id="globalmenu" class="globalmenu" style="">

	<div class="toplevel">
		<ul>
					<li class="first">
				<a href="/fr/Dossiers/Les-S-T-au-CTA">
					<span class="">Les S&amp;T au CTA</span>
				</a>
			</li>
			
					<li class="">
				<a href="/fr/Dossiers/S-T-et-politiques-agricoles">
					<span class="">S&amp;T et politiques agricoles</span>
				</a>
			</li>
			
					<li class="">
				<a href="/fr/Dossiers/S-T-et-defis-agricoles">
					<span class="">S&amp;T et défis agricoles</span>
				</a>
			</li>
			
					<li class="last">
				<a href="/fr/Dossiers/Produits-de-base">
					<span class="">Produits de base</span>
				</a>
			</li>
			
		
		</ul>
	</div>
	
	<div class="mega_menu_dropdown">
					
		
																																																																																																																																						
		
				
 
				
	
					<ul class=" 0">
				
									<li>
												<a href="/fr/Blogs">
							<span class="">Blogs</span>
						</a>
					</li>
								
								
																																																																																																																											
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Jeunesse-genre-et-les-S-T-dans-les-pays-ACP">
						<span class="">ACP - Jeunesse, Genre et S&amp;T</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/ACP-et-S-T-Documents-d-orientation">
						<span class="">ACP et S&amp;T - Documents d´orientation</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Bourses-et-appels">
						<span class="">Bourses et appels</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Developpements">
						<span class="">Développements</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Etudes-de-cas-STIA">
						<span class="">Etudes de cas STIA</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Evenements">
						<span class="">Evénements</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Infolettres-K4D">
						<span class="">Infolettres K4D</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Offres-d-emploi">
						<span class="">Offres d'emploi</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Annuaire-des-organismes">
						<span class="">Organismes S&amp;T</span>
					</a>
				
																																																																																																																																							
										
					<dl>
												
						<dt><a href="/fr/Dossiers/Les-S-T-au-CTA/Annuaire-des-organismes/Afrique">Afrique</a></dt><dd>Une selection des organisations de la S&amp;T en Afrique.</dd>
						
												
						<dt><a href="/fr/Dossiers/Les-S-T-au-CTA/Annuaire-des-organismes/Caraibes">Caraïbes</a></dt><dd> Une selection des organisations de la S&amp;T dans les Caraïbes.</dd>
						
												
						<dt><a href="/fr/maps/items">Google Maps</a></dt><dd></dd>
						
												
						<dt><a href="/fr/Dossiers/Les-S-T-au-CTA/Annuaire-des-organismes/Monde">Monde</a></dt><dd> Une selection des organisations internationales de la S&amp;T.</dd>
						
												
						<dt><a href="/fr/Dossiers/Les-S-T-au-CTA/Annuaire-des-organismes/Pacifique">Pacifique</a></dt><dd>Une selection des organisations de la S&amp;T dans la region pacifique.</dd>
						
											</dl>
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Le-programme-S-T-au-CTA">
						<span class="">Programme S&amp;T du CTA</span>
					</a>
				
																																																																																												
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Les-S-T-au-CTA/Publications">
						<span class="">Publications</span>
					</a>
				
																										
														
				</li>
	
							
			</ul>
						
					
		
																																																																																																																																																		
		
				
 
				
	
					<ul class=" 1">
				
								
								
																																																																																																																																				
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/Collaboration-en-matiere-de-recherche-dans-un-monde-globalise">
						<span class="">Collaboration en matière de recherche</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/ACP-et-dialogue-S-T-agricoles">
						<span class="">Dialogue S&amp;T agricoles - ACP</span>
					</a>
				
																																																																																																																																			
										
					<dl>
												
						<dt><a href="/fr/Dossiers/S-T-et-politiques-agricoles/ACP-et-dialogue-S-T-agricoles/Appels-a-innover">Appels à innover</a></dt><dd>Les chercheurs sont continuellement confrontés au défi de répondre plus efficacement aux demandes formulées par les dirigeants, les investisseurs du secteur privé, les fondations de donateurs, les agriculteurs, les personnes intéressées ainsi que d'autres acteurs impliqués dans la chaîne agroalimentaire. Ils doivent fournir des résultats de recherche susceptibles d'améliorer la productivité, la qualité alimentaire et la sécurité alimentaire, dans le but d'atteindre un niveau concurrentiel dans les marchés mondiaux et de contribuer au développement durable tout en luttant contre la pauvreté. Ils doivent, en même temps, être responsables d'un point de vue social et éthique, et contribuer à l'avancement de la science et de la technologie. Comme les exigences de responsabilité augmentent et que les financements diminuent, il est nécessaire d'attribuer des priorités et des stratégies aux réponses.</dd>
						
												
						<dt><a href="/fr/Dossiers/S-T-et-politiques-agricoles/ACP-et-dialogue-S-T-agricoles/Diversification-des-systemes-de-production">Diversification des systèmes de production</a></dt><dd>&nbsp;







 




  
  

	
		
	  
	
	
	
	
  	






	 
  





	Les systèmes de production agricole ACP sont très divers ; la communauté scientifique doit être capable de fournir des réponses adaptées aux différents besoins des petits exploitants qui constituent l’ossature de l’agriculture ACP. Elle doit en même temps répondre aux besoins des grandes et des moyennes exploitations qui doivent s’imposer sur tous les marchés en termes de prix, de qualité, de réactivité aux changements de la demande des consommateurs et de fiabilité de l’approvisionnement. C’est là que se trouve le défi : il n’y a en effet pas de panacée, pas d’approche universelle qui permettrait aux chercheurs de répondre aux besoins des petits agriculteurs – dont le premier souci reste la pérennité des besoins de subsistance – et en même temps des plus gros qui souhaitent, pour leur part, rester compétitifs et saisir toutes les opportunités en dépit du danger des dégradations à l’environnement et des contraintes commerciales et économiques. Durant ces dernières années, la région ACP a connu un regain d’intérêt pour les exploitations familiales : on reconnaît désormais leur valeur, aussi bien pour le maintien du tissu social qu’en ce qui concerne la conservation de l’environnement. Ce dossier fournit des points de repère et des leçons tirées de l’expérience en ce qui concerne la façon dont la région ACP doit appliquer une approche stratégique différenciée pour que la science soit mise au service de la performance du secteur agricole ACP.</dd>
						
												
						<dt><a href="/fr/Dossiers/S-T-et-politiques-agricoles/ACP-et-dialogue-S-T-agricoles/Premiers-dialogues-sur-les-politiques-S-T-et-l-agriculture">Premiers dialogues sur les politiques S&amp;T et l'agriculture</a></dt><dd>Ce dossier contient du matériel, des liens et des documents pertinents sur les discussions liées à la recherche agricole dans les pays ACP avant 2007.&nbsp;</dd>
						
											</dl>
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/Dialogue-l-UE-et-les-S-T-agricoles">
						<span class="">Dialogue S&amp;T agricoles - UE</span>
					</a>
				
																																																
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/Enseignement-superieur-et-recherche-agricole">
						<span class="">Enseignement supérieur et recherche agricole</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/Financement-et-investissement-pour-la-recherche">
						<span class="">Financement de la recherche</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/Mesurer-l-impact-de-la-recherche-agricole">
						<span class="">Mesurer l´impact de la recherche agricole</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/La-propriete-intellectuelle">
						<span class="">Propriété intellectuelle</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/La-prospective">
						<span class="">Prospective</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/Demarches-participatives-et-recherche-agricole">
						<span class="">R&amp;D participatifs</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/La-science-et-l-ethique">
						<span class="">Science et éthique</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/Les-systemes-de-gestion-d-information-et-les-TIC">
						<span class="">Système d'information et TIC</span>
					</a>
				
																																																																																			
										
					<dl>
												
						<dt><a href="/fr/Dossiers/S-T-et-politiques-agricoles/Les-systemes-de-gestion-d-information-et-les-TIC/Les-TIC-au-service-de-la-recherche-pour-l-agriculture-et-le-developpement-rural">Les TIC au service de la recherche pour l'agriculture et le développement rural</a></dt><dd>...</dd>
						
											</dl>
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-politiques-agricoles/Les-systemes-d-innovation">
						<span class="">Systèmes d’innovation</span>
					</a>
				
																																																											
														
				</li>
	
							
			</ul>
						
					
		
																																																																																																																																																																																																														
		
				
 
				
	
					<ul class=" 2">
				
								
								
																																																																																																																																																																																	
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Agroforesterie">
						<span class="">Agroforesterie</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Biodiversite-agricole">
						<span class="">Biodiversité agricole</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Biotechnologie">
						<span class="">Biotechnologie</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Resilience-aux-changements-climatiques">
						<span class="">Climat et résilience</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Securite-sanitaire-des-aliments">
						<span class="">Contrôle sanitaire</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Agriculture-sur-les-terres-arides">
						<span class="">Désertification</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/L-eau-pour-l-agriculture">
						<span class="">L'eau pour l'agriculture</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Nanotechnologies">
						<span class="">Nanotechnologies</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Ameliorer-la-nutrition">
						<span class="">Nutrition</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Prevention-des-pertes-apres-recoltes">
						<span class="">Pertes après récolte</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/L-epuisement-du-phosphore">
						<span class="">Phosphore</span>
					</a>
				
																																																
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/La-protection-des-sols">
						<span class="">Protection des sols</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Savoirs-agricoles-traditionels-et-locaux">
						<span class="">Savoirs traditionels</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Systemes-de-semences">
						<span class="">Systèmes de semences</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Securite-alimentaire">
						<span class="">Sécurité alimentaire </span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Innovations-dans-la-transformation-des-aliments-tropicaux">
						<span class="">Transformation des aliments tropicaux</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/S-T-et-defis-agricoles/Teledetection-et-SIG">
						<span class="">Télédétection et SIG</span>
					</a>
				
																																																											
														
				</li>
	
							
			</ul>
						
					
		
																																																																																																																																																		
		
				
 
				
	
					<ul class="last 3">
				
								
								
																																																																																																																																				
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Autres-produits-de-base">
						<span class="">Autres produits de base</span>
					</a>
				
																																																																																																											
										
					<dl>
												
						<dt><a href="/fr/Dossiers/Produits-de-base/Autres-produits-de-base/Bananes">Bananes</a></dt><dd>Le Groupe des États ACP doit adapter sa démarche de production, de commercialisation et de distribution agricole pour répondre aux exigences de la compétition nationale, régionale et internationale. Les produits de base traditionnels tels que la banane ne peuvent plus bénéficier de prix garantis ni d’un accès immédiat aux marchés internationaux. Quelle doit donc être la réponse de la région ACP ? Les produits vivriers considérés traditionnellement comme garants de la sécurité alimentaire sont maintenant étudiés sous un nouveau jour. Les chercheurs peuvent-ils aider les pays à prendre des décisions avisées permettant d’améliorer l’efficacité, la rentabilité, la qualité et la compétitivité ?</dd>
						
												
						<dt><a href="/fr/Dossiers/Produits-de-base/Autres-produits-de-base/Cafe">Café</a></dt><dd>Le Groupe des États ACP doit adapter sa démarche de production, de commercialisation et de distribution agricole pour répondre aux exigences de la compétition nationale, régionale et internationale. Les produits de base traditionnels tels que le café ne peuvent plus bénéficier de prix garantis ni d’un accès immédiat aux marchés internationaux. Quelle doit donc être la réponse de la région ACP ? Les produits vivriers considérés traditionnellement comme garants de la sécurité alimentaire sont maintenant étudiés sous un nouveau jour. Les chercheurs peuvent-ils aider les pays à prendre des décisions avisées permettant d’améliorer l’efficacité, la rentabilité, la qualité et la compétitivité ?</dd>
						
											</dl>
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Biocarburants">
						<span class="">Biocarburants</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Betail">
						<span class="">Bétail</span>
					</a>
				
																																																																																			
										
					<dl>
												
						<dt><a href="/fr/Dossiers/Produits-de-base/Betail/Ameliorer-la-competitivite-dans-la-chaine-de-valeur-avicole-ACP">Améliorer la compétitivité dans la chaîne de valeur avicole ACP</a></dt><dd>







 




  
  

	
		
	  
	
	
	
	
  	






	 
  





	La chaîne de valeur avicole dans les pays ACP (Afrique, Caraïbes, Pacifique) implique à la fois les grandes entreprises intégrées et de petits systèmes de production. Les premières ont bénéficié d’investissements importants, d’un accès à l’information et à la recherche scientifique, tandis que les seconds restent isolés en dépit de leur importance. L’aviculture familiale représente environ 80 % du cheptel avicole mondial et joue un rôle déterminant pour de nombreux foyers dans les pays ACP, assurant sécurité alimentaire et nutritionnelle, des moyens de subsistance, ainsi que la conservation des espèces indigènes. Une analyse de la chaîne de valeur de l’aviculture familiale, intégrant sa productivité médiocre et la faiblesse des apports financiers et techniques, révèle un contraste marqué avec les conditions dont bénéficient les grandes entreprises avicoles commerciales. Les gouvernements et les chercheurs auraient intérêt à examiner en détail les chaînes de valeur de l’élevage familial de volailles afin d’identifier les priorités en matière de science et d’innovation qui pourraient contribuer à améliorer l’efficacité de l’approvisionnement en oufs, en oiseaux sur pied, réfrigérés, congelés et autres produits de la volaille à valeur ajoutée.Ce résumé est proposé par le CABI et le CTA, juillet 2012.</dd>
						
											</dl>
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Canne-a-sucre">
						<span class="">Canne à sucre</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Fruits">
						<span class="">Fruits</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Une-autre-approche-de-la-chaine-de-valeur-du-riz">
						<span class="">La chaîne de valeur du riz</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Legumes">
						<span class="">Légumes</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Manioc">
						<span class="">Manioc</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Produits-laitiers">
						<span class="">Produits laitiers</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Peches">
						<span class="">Pêches</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Ameliorer-la-chaine-de-valeur-du-sorgho">
						<span class="">Sorgho</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/fr/Dossiers/Produits-de-base/Epices-et-plantes-medicinales">
						<span class="">Épices et plantes médicinales</span>
					</a>
				
																																																											
														
				</li>
	
							
			</ul>
						
		
	</div> <!-- end mega_menu_dropdown -->
</div> <!-- end globalmenu -->

	
	<div id="base-content">
		<div class="breadcrumb">You are in:
												<a class="path_link" href="/fr/Media">Media</a>
																<span class="path_delimiter">&gt;</span>
													<a class="path_link" href="/fr/Media/Images">Images</a>
																<span class="path_delimiter">&gt;</span>
													<span class="path_current">tropical vegetables b...</span>
													</div> 

		<div id="content-columns">
			<div id="column-left">

								<div id="content-intro" class="roundedbordersbottom">
					
					<div class="content-image" >
										
						

    
                <div class="imageleft">
    
    
                                                                                                                                     <a href="/var/knowledge/storage/images/media/images/tropical-vegetables-by-www.a3associates.com/463131-1-eng-GB/tropical-vegetables-by-www.a3associates.com.jpg" rel="lightbox[]" >        <img src="/var/knowledge/storage/images/media/images/tropical-vegetables-by-www.a3associates.com/463131-1-eng-GB/tropical-vegetables-by-www.a3associates.com_contentfront.jpg" width="185" height="139"  style="border: 0px  ;" alt="tropical vegetables by www.a3associates.com" title="tropical vegetables by www.a3associates.com" />
        </a>
    
    
            </div>
    
    																					</div>
	
					<div class="content-intro-text">
						<h1></h1>
													<p class="author"><strong>Author:</strong>
								</p>
																								
																		
						
						
						<br/>&nbsp;
					</div> 
					<br class="cl">
				</div> 
				 
			
				<div id="content-item">
											<div class="box-content">
							<a class="storylist" href="/fr/layout/set/print/content/view/full/16497">Print</a>
																				</div> 
						<br class="cl">
		
					 
	
				</div> 
			
				<div id="main-content" class="content view">					


       <span class="title">tropical vegetables by www.a3associates.com</span>

	    <p>

    
        
    
                                                                                                                                     <a href="/var/knowledge/storage/images/media/images/tropical-vegetables-by-www.a3associates.com/463131-1-eng-GB/tropical-vegetables-by-www.a3associates.com.jpg" rel="lightbox[]" >        <img src="/var/knowledge/storage/images/media/images/tropical-vegetables-by-www.a3associates.com/463131-1-eng-GB/tropical-vegetables-by-www.a3associates.com_large.jpg" width="300" height="225"  style="border: 0px  ;" alt="tropical vegetables by www.a3associates.com" title="tropical vegetables by www.a3associates.com" />
        </a>
    
    
    
    </p>
        
        		         
        	
	
              
                           
                &laquo;&nbsp;<a href="/fr/Media/Images/Pinang-areca-catechu-l.-by-Agus-Sudarsono-on-titan-medicalplant.blogspot" title="Pinang (areca catechu l.) by Agus Sudarsono on titan-medicalplant.blogspot">Previous image</a> |
		               <a href="/fr/Media/Images">Back to Gallery</a>
             |
                
            
                       
                    <a href="/fr/Media/Images/Tropical-Fruits-by-www.sweetadditions.net" title="Tropical-Fruits-by-www.sweetadditions.net">Next image</a>&nbsp;&raquo;
           
                       

            

           
        </div>
        
      
    </div>
</div>
					<br class="clear">
				</div> 
			</div>
			
				
<div id="column-right">
	
	
	
	<div class="box">
		<div class="box-header">
			<h3>E-mail Newsletter</h3>
		</div>
		<div class="box-content">

			<form id="subscription" action="http://lists.cta.int:81/subscribe/subscribe.tml" method="get" target="_blank">
				<div class="content-view-children">
					<div style="vertical-align:top;"><input id="newsletterbox" class="searchbox" type="text" size="13" name="email" value="E-mail Address" onClick="this.value='';"/> <input class="okbutton" type="submit" name="OkButton" value="  Ok  "></div>
					<input type="radio" name="list" value="knowledge-en" checked/><small>&nbsp;English&nbsp;</small><input type="radio" name="list" value="knowledge-fr"/><small>&nbsp;Fran&ccedil;ais</small>
					<input type="hidden" name="confirm" value="one"/>
					<input type="hidden" name="url" value="http://knowledge.cta.int/fr/content/view/full/10094"/>
				</div>
			</form>

			<p>
			<a href="/fr/Dossiers/Les-S-T-au-CTA/Infolettres-K4D">
				&raquo;
				<strong>
								Téléchargez l'infolettre
								</strong>
			</a>
			</p>
		</div>

	</div> 
	

	

	
	<div class="box">
		<div class="box-header">
			<h3>Interact with us</h3>
		</div>
		<div class="box-content">

			<div class="interact">
				<a href="/fr/A-Propos/Nous-contacter">
					<img src="/design/knowledge/images/email-icon-small.png" alt="" />
					<strong>
						Contact us
					</strong>
				</a>
			</div>
			
			
			<div class="interact">
				<a href="http://twitter.com/knowledge4dev" target="_blank">
					<img src="/design/knowledge/images/t_logo.png" alt="" />
					<strong>
						Twitter
					</strong>
				</a>
			</div>
			
			<div class="interact">
				<a href="http://www.facebook.com/pages/Knowledge-for-Development/69728755793" target="_blank">
					<img src="/design/knowledge/images/f_logo.png" alt="" />
					<strong>
						Facebook
					</strong>
				</a>
			</div>

			<div class="interact">
				<a href="/fr/A-Propos/A-propos-de-RSS">
					<img src="/design/knowledge/images/rss-icon-small.png" alt="" />
					<strong>
						RSS Feeds
					</strong>
				</a>
			</div>
		</div>
	</div> 

		<div class="box">
		<div class="box-header">
			<h3>Members</h3>
		</div>
		<div class="box-content">
							<form class="loginform" method="post" action="/fr/user/login">
	<label for="id1" class="inline-fixed">Username</label>
	<input class="halfbox" type="text" size="10" name="Login" id="id1" value="" />
	<br />
	
	<label for="id2" class="inline-fixed">Password</label>
	<input class="halfbox" type="password" size="10" name="Password" id="id2" value="" />
	<br />
	<br />
	
	<input class="stdbutton" type="submit" name="LoginButton" value="Login" />
	<input class="stdbutton" type="submit" name="RegisterButton" value="Register as new user" />
	
	</form>
<br />						
			
		</div>
	</div>
	
	
	<div class="box highlight">
		<div class="box-header">
			<h3><a href="/fr/Blogs/Judith-s-blog">Judith’s blog</a></h3>
		</div>
		<div class="box-content">
						<ul>
							<li>
										<a href="/fr/Blogs/Judith-s-blog/Judith-s-pick-mars-2015">
											<i>Blog post:</i> Judith's pick - mars 2015
						<span class="tagline">(12/03/2015)</span>
					</a>
				</li>
							<li>
										<a href="/fr/Blogs/Judith-s-blog/Judith-s-pick-Early-February-2015">
											<i>Blog post:</i> Judith's pick - Early February 2015
						<span class="tagline">(05/02/2015)</span>
					</a>
				</li>
							<li>
										<a href="/fr/Blogs/Judith-s-blog/Good-governance-local-ownership-Future-prospects-for-science-and-innovation-and-agriculture-led-development">
											<i>Blog post:</i> Good governance & local ownership - Future prospects for science and innovation and agriculture-led development
						<span class="tagline">(02/02/2015)</span>
					</a>
				</li>
						</ul>
					</div>
	</div> 
	
	<div class="box">
																																	<div class="box-header">
			<h3><a href="/fr/A-Propos/A-propos-de-RSS"><img src="/design/knowledge/images/rss-icon-small.png" alt="" /> Latest updates</a></h3>
		</div>
		<div class="box-content">
										<ul>
									<li><a href="/fr/Dossiers/Les-S-T-au-CTA/Le-programme-S-T-au-CTA/Articles-commandes-2016/CTA-Top-20-Innovations-that-Benefit-Smallholder-Farmers">CTA Top 20 Innovations that Benefit Smallholder Farmers</a></li>
									<li><a href="/fr/Dossiers/Les-S-T-au-CTA/Le-programme-S-T-au-CTA/Articles-commandes-2016/Thon-peche-cotiere-beche-de-mer-et-developpement-de-l-aquaculture-dans-le-Pacifique-occidental-et-central-defis-actuels-et-besoins-futurs">Thon, pêche côtière, bêche-de-mer et développement de l’aquaculture dans le Pacifique occidental et central : défis actuels et besoins futurs</a></li>
									<li><a href="/fr/Dossiers/Les-S-T-au-CTA/Infolettres-K4D/Mars-Avril-2015-Infolettre-K4D">Mars/Avril 2015 Infolettre K4D </a></li>
									<li><a href="/fr/Dossiers/Les-S-T-au-CTA/Developpements/How-to-redefine-innovation-and-development-An-African-perspective">How to redefine innovation and development: An African perspective</a></li>
									<li><a href="/fr/Dossiers/Les-S-T-au-CTA/Developpements/The-Ocean-and-the-Human-Family-World-Oceans-Day-2015">The Ocean and the Human Family - World Oceans Day 2015 </a></li>
								</ul>
					</div>

				</div>
	

<div class="banner-box">
	<div class="box">
		<div class="box-header">
			<h3>Tweets by @Knowledge4Dev</h3>
		</div>
		<div class="box-content">
			<a class="twitter-timeline" href="https://twitter.com/Knowledge4Dev" data-widget-id="337108456609832960">Tweets by @Knowledge4Dev</a>
			<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>
	</div>
</div></div> 
								<br class="cl">
				<div class="item last">
	<div class="addthis">
				<!-- ADDTHIS BUTTON BEGIN -->
		<script type="text/javascript">
		addthis_pub = 'knowledge_cta';
		</script>
		<a href="http://www.addthis.com/bookmark.php" onMouseOver="return addthis_open(this, '', '[URL]', '[TITLE]')" onMouseOut="addthis_close()" onClick="return addthis_sendto()"><img src="http://s9.addthis.com/button1-bm.gif" width="125" height="16" alt="" /></a><script type="text/javascript" src="http://s7.addthis.com/js/152/addthis_widget.js"></script>
		<!-- ADDTHIS BUTTON END -->
	</div>
</div> 
			
			
		</div> 
		
		<br class="cl">
	</div> 
	<div id="base-footer">
	<div class="footer-text">
		<a href="/fr/about/Legal_Notice" class="footer">Legal Notice</a> | Copyright &copy; 2003-2018<a class="footer" href="http://www.cta.int/" target="_blank"> CTA</a>, Wageningen, Netherlands.
	
	</div>
	<div class="footer-icons">
		<a href="http://acpsec.org"><img alt="ACP" src="/design/knowledge/images/icon_acp.gif"></a>
		<a href="http://europa.eu"><img alt="EU" src="/design/knowledge/images/icon_eu.gif"></a>
	</div>
</div> </div> 
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"44f10573e2","applicationID":"20071670","transactionName":"Z1RXbUICXUJZBkBQXF4eYEtZTFpfXABMF0NYQQ==","queueTime":0,"applicationTime":768,"atts":"SxNUGwoYTkw=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>