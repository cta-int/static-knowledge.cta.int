
	
<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	
                            
<title>Knowledge for development</title>
<!--<title>ClimateChangeCorp.com / International / S&amp;T organisations / CTA and S&amp;T / Dossiers / Home - Knowledge</title>-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script><meta name="author" content="CTA"/><meta name="description" content="This independent news website explores how companies around the world affect climate change and the environment. The site offers a daily news feed specific to climate change as well as features and opinions from the world’s leading climate change experts. We are affiliated with Ethical Corporation, an independent publisher and conference organiser specialising in business ethics."/><meta name="keywords" content=" science, technology, agriculture, ACP, development, rural development, rural, Africa, Pacific, Caribbean, S&amp;T, policy dialogue, agricultural development, scientific, research and development, technology, policy, science and technology for the development"/>    

<link rel="Home" href="/en" title="Knowledge front page"/>
<link rel="Index" href="/en"/>
<link rel="Search" href="/en/content/search" title="Search Knowledge"/>
<link rel="Shortcut icon" href="/design/knowledge/images/favicon.ico" type="image/x-icon"/>
<link rel="Alternate" href="/en/layout/set/print/Dossiers/CTA-and-S-T/S-T-organisations/International/ClimateChangeCorp.com" media="print" title="Printable version"/>
<link rel="stylesheet" type="text/css" href="/design/base/stylesheets/core.css"/>
<link rel="stylesheet" type="text/css" href="/design/knowledge/stylesheets/knowledge.css"/>
<link rel="stylesheet" type="text/css" href="/design/knowledge/stylesheets/global.css"/>
<link rel="stylesheet" type="text/css" href="/design/knowledge/stylesheets/mega_menu.css"/>
<link rel="stylesheet" type="text/css" href="/design/knowledge/stylesheets/addthis_widget.css" media="screen"/>
<link rel="shortcut icon" href="/design/knowledge/images/favicon.ico"/>
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
	<a href="/en">
		<span class="header-image-eng-GB">Knowledge for Development</span>
	</a>
	<div class="site-nav">
		<ul>
			<li><a href="/en/About/Contact-Us">Contact</a> | </li>
			<li><a href="/en/About/About">About</a> | </li>
							<li><a href="/en/user/login">Login</a> | </li>
						
			
			<li style="color: white;"><a href="/en/About/Content-syndication-on-this-website">RSS</a> | </li>
							<li style="color: white;"><a class="menu_item" href="/fr/">Fran&ccedil;ais</a></li>
						
		</ul>
	</div> 
	<div class="site-search">
		<form action="/en/content/search" method="get">
		<label for="topSearch">Search</label>
		<input id="topSearch" class="text" type="text" name="SearchText"/>
		<input src="/design/knowledge/images/btn_search.gif" class="search-button" type="image" name="OkButton" alt=" Ok "/>
		</form>
	</div> 
</div> 
								
<div id="globalmenu" class="globalmenu" style="">

	<div class="toplevel">
		<ul>
					<li class="first">
				<a href="/en/Dossiers/CTA-and-S-T">
					<span class="">CTA and S&amp;T</span>
				</a>
			</li>
			
					<li class="">
				<a href="/en/Dossiers/S-T-Policy">
					<span class="">S&amp;T Policy</span>
				</a>
			</li>
			
					<li class="">
				<a href="/en/Dossiers/S-T-Issues">
					<span class="">S&amp;T Issues</span>
				</a>
			</li>
			
					<li class="last">
				<a href="/en/Dossiers/Commodities">
					<span class="">Commodities</span>
				</a>
			</li>
			
		
		</ul>
	</div>
	
	<div class="mega_menu_dropdown">
					
		
																																																																																																																																						
		
				
 
				
	
					<ul class=" 0">
				
									<li>
												<a href="/en/Blogs">
							<span class="">Blogs</span>
						</a>
					</li>
								
								
																																																																																																																											
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/ACP-policy-briefs">
						<span class="">ACP policy briefs</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/ACP-young-professionals-and-women">
						<span class="">ACP young professionals and women</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/ASTI-case-study-reports">
						<span class="">ASTI case study reports</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/CTA-S-T-programme">
						<span class="">CTA S&amp;T programme</span>
					</a>
				
																																																																																												
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/Developments">
						<span class="">Developments</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/Selected-events">
						<span class="">Events</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/Fellowships-grants-calls">
						<span class="">Fellowships, grants &amp; calls</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/Selected-jobs-opportunities">
						<span class="">Job opportunities</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/K4D-e-Newsletters">
						<span class="">K4D e-Newsletters</span>
					</a>
				
															
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/Selected-publications">
						<span class="">Publications</span>
					</a>
				
																										
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/CTA-and-S-T/S-T-organisations">
						<span class="">S&amp;T organisations</span>
					</a>
				
																																																																																																																																							
										
					<dl>
												
						<dt><a href="/en/Dossiers/CTA-and-S-T/S-T-organisations/Africa">Africa</a></dt><dd>A selection of S&amp;T organisations in Africa.</dd>
						
												
						<dt><a href="/en/maps/items">Google Maps</a></dt><dd></dd>
						
												
						<dt><a href="/en/Dossiers/CTA-and-S-T/S-T-organisations/International">International</a></dt><dd>A selection of international S&amp;T organizations.</dd>
						
												
						<dt><a href="/en/Dossiers/CTA-and-S-T/S-T-organisations/The-Caribbean">The Caribbean</a></dt><dd>A selection of S&amp;T organisations in the Caribbean.</dd>
						
												
						<dt><a href="/en/Dossiers/CTA-and-S-T/S-T-organisations/The-Pacific">The Pacific</a></dt><dd>A selection of S&amp;T organisations in the Pacific.</dd>
						
											</dl>
														
				</li>
	
							
			</ul>
						
					
		
																																																																																																																																																		
		
				
 
				
	
					<ul class=" 1">
				
								
								
																																																																																																																																				
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/ACP-agricultural-S-T-dialogue">
						<span class="">ACP S&amp;T dialogue</span>
					</a>
				
																																																																																																																																			
										
					<dl>
												
						<dt><a href="/en/Dossiers/S-T-Policy/ACP-agricultural-S-T-dialogue/Demanding-Innovation">Demanding Innovation</a></dt><dd>Researchers in ACP countries are facing a growing range of challenges. They are required to respond effectively to the demands of policy makers, private sector investors and donor agencies, farmers and other stakeholders in the agri-food chain. They are being asked to deliver research outputs that will improve agricultural productivity, food quality and food safety, in order to increase their countries competitiveness in global markets, and contribute to food security, poverty alleviation and sustainable development. At the same time, researchers must be socially and ethically responsible and contribute to the advancement of science and technology. As the demands for accountability increase and the levels of funding diminish, researchers need to prioritize and strategize their responses.</dd>
						
												
						<dt><a href="/en/Dossiers/S-T-Policy/ACP-agricultural-S-T-dialogue/Differentiated-S-T-strategies-for-improving-productivity-of-ACP-farming-systems">Differentiated S&amp;T strategies for improving productivity of ACP farming systems</a></dt><dd>ACP farming systems are very diverse and the scientific community must be able to provide adequate responses to meet the varied needs of small subsistence farmers who make up the majority of the ACP farming community while simultaneously addressing the needs of the medium to large-scale farming enterprises to compete on price, quality, responsiveness to changing consumer demands and reliability in supply in all markets. Therein lies the challenge as there is no one-size fits all approach that will enable researchers to respond to the needs of small scale farmers who are primarily concerned with sustainable livelihoods or medium to large-scale farms who wish to remain competitive and take advantage of any opportunities despite deteriorating environmental conditions and trade and economic restrictions. Within the last few years, the ACP region has seen a resurgence of emphasis on family farms which are being valued not only for their contribution to maintaining social order but to environmental sustainability. This dossier provides guidance and lessons learned on the need for the ACP region to apply a differentiated strategic approach for using science to enhance the performance of ACP agricultural sector.</dd>
						
												
						<dt><a href="/en/Dossiers/S-T-Policy/ACP-agricultural-S-T-dialogue/Early-dialogues-on-S-T-policy">Early dialogues on S&amp;T policy</a></dt><dd>Some of the most relevant briefs, notes and documents related to the pre-2007 ACP Agricultural S&amp;T policy discussions.</dd>
						
											</dl>
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/EU-agricultural-S-T-dialogue">
						<span class="">EU S&amp;T dialogue</span>
					</a>
				
																																																
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/Ethics">
						<span class="">Ethics</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/Financing-ARD">
						<span class="">Financing ARD</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/Foresighting">
						<span class="">Foresighting</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/ICKM-MIS-ICT">
						<span class="">ICKM / MIS / ICT</span>
					</a>
				
																																																																																			
										
					<dl>
												
						<dt><a href="/en/Dossiers/S-T-Policy/ICKM-MIS-ICT/ICT-for-transforming-research-for-agricultural-and-rural-development">ICT for transforming research for agricultural and rural development</a></dt><dd>...</dd>
						
											</dl>
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/Innovation-systems">
						<span class="">Innovation systems</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/Intellectual-property">
						<span class="">Intellectual property</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/Measuring-the-impact-of-agricultural-research">
						<span class="">Measuring the impact of agricultural research</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/Participatory-approaches-in-ARD">
						<span class="">Participatory R&amp;D</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/Research-collaboration-in-a-globalised-world">
						<span class="">Research collaboration</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Policy/Reshaping-tertiary-agricultural-education">
						<span class="">Tertiary agricultural education</span>
					</a>
				
																																																											
														
				</li>
	
							
			</ul>
						
					
		
																																																																																																																																																																																																														
		
				
 
				
	
					<ul class=" 2">
				
								
								
																																																																																																																																																																																	
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Agroforestry">
						<span class="">Agroforestry</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Biodiversity">
						<span class="">Biodiversity</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Biotechnology">
						<span class="">Biotechnology</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Climate-change">
						<span class="">Climate change</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Dryland-agriculture">
						<span class="">Dryland agriculture</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Food-safety">
						<span class="">Food safety</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Food-security">
						<span class="">Food security</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Indigenous-knowledge-systems">
						<span class="">Indigenous knowledge systems</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Innovations-in-tropical-food-processing">
						<span class="">Innovations in tropical food processing </span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Nanotechnology">
						<span class="">Nanotechnology</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Improving-nutrition-outcomes">
						<span class="">Nutrition</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Phosphorus-depletion">
						<span class="">Phosphorus</span>
					</a>
				
																																																
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Reducing-Postharvest-Losses-A-Challenge-for-the-Scientific-Community">
						<span class="">Postharvest losses</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Remote-sensing-and-GIS">
						<span class="">Remote sensing / GIS</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Seed-systems">
						<span class="">Seed systems</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Soil-health">
						<span class="">Soil health </span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/S-T-Issues/Water">
						<span class="">Water</span>
					</a>
				
																																																											
														
				</li>
	
							
			</ul>
						
					
		
																																																																																																																																																		
		
				
 
				
	
					<ul class="last 3">
				
								
								
																																																																																																																																				
				<li>
					
					<a href="/en/Dossiers/Commodities/Biofuels">
						<span class="">Biofuels</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Cassava">
						<span class="">Cassava</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Dairy">
						<span class="">Dairy</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Fisheries">
						<span class="">Fisheries</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Fruits">
						<span class="">Fruits</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Herbs-and-medicinal-plants">
						<span class="">Herbs and medicinal plants</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Livestock">
						<span class="">Livestock</span>
					</a>
				
																																																																																			
										
					<dl>
												
						<dt><a href="/en/Dossiers/Commodities/Livestock/Enhancing-competitiveness-in-the-ACP-poultry-value-chain">Enhancing competitiveness in the ACP poultry value chain</a></dt><dd>







 




  
  

	
		
	  
	
	
	
	
  	






	 
  





	The poultry value chain in Africa, Caribbean and the Pacific (ACP) countries involves both large-scale integrated enterprises and small-scale production systems. The former have benefited from capital investments, access to information and scientific research, whereas the latter remain isolated despite their significance. Family poultry comprises approximately 80% of the world's total poultry stock and plays a key role in many households in ACP countries for food and nutrition security, livelihoods and conservation of indigenous breeds. An analysis of the family poultry value chain, including its poor productivity and low financial and technical inputs, shows that it contrasts markedly with conditions in large-scale commercial poultry enterprises. Governments and researchers would be well advised to thoroughly review the family poultry value chains to identify priorities for science and innovation that can contribute to improved efficiency for the provision of eggs, live birds, fresh-chilled, frozen and other value-added poultry products.&nbsp;This summary is provided by CABI and CTA, July 2012.</dd>
						
											</dl>
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Other-commodities">
						<span class="">Other commodities</span>
					</a>
				
																																																																																																											
										
					<dl>
												
						<dt><a href="/en/Dossiers/Commodities/Other-commodities/Bananas">Bananas</a></dt><dd>The ACP Group of States need to adjust the approach to agricultural production, marketing and distribution to be able to compete in national, regional and international markets. Traditional commodities such as banana are no longer assured of guaranteed prices and ready access to international markets. How then should the ACP region respond? Commodities, traditionally considered as food security crops are now being looked at in a different light. Can scientists assist the countries in making informed decisions to improve efficiency, cost effectiveness, quality and competitiveness?</dd>
						
												
						<dt><a href="/en/Dossiers/Commodities/Other-commodities/Coffee">Coffee</a></dt><dd>The ACP Group of States need to adjust the approach to agricultural production, marketing and distribution to be able to compete in national, regional and international markets. Traditional commodities such as coffee are no longer assured of guaranteed prices and ready access to international markets. How then should the ACP region respond? Commodities, traditionally considered as food security crops are now being looked at in a different light. Can scientists assist the countries in making informed decisions to improve efficiency, cost effectiveness, quality and competitiveness?</dd>
						
											</dl>
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Rethinking-the-rice-value-chain">
						<span class="">Rice value chain</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Enhancing-the-sorghum-value-chain">
						<span class="">Sorghum</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Sugarcane">
						<span class="">Sugarcane</span>
					</a>
				
																																																											
														
				</li>
	
												
				<li>
					
					<a href="/en/Dossiers/Commodities/Vegetables">
						<span class="">Vegetables</span>
					</a>
				
																																																											
														
				</li>
	
							
			</ul>
						
		
	</div> <!-- end mega_menu_dropdown -->
</div> <!-- end globalmenu -->

	
	<div id="base-content">
		<div class="breadcrumb">You are in:
												<a class="path_link" href="/en">Home</a>
																<span class="path_delimiter">&gt;</span>
													<a class="path_link" href="/en/Dossiers">Dossiers</a>
																<span class="path_delimiter">&gt;</span>
													<a class="path_link" href="/en/Dossiers/CTA-and-S-T">CTA and S&amp;T</a>
																<span class="path_delimiter">&gt;</span>
													<a class="path_link" href="/en/Dossiers/CTA-and-S-T/S-T-organisations">S&amp;T organisations</a>
																<span class="path_delimiter">&gt;</span>
													<a class="path_link" href="/en/Dossiers/CTA-and-S-T/S-T-organisations/International">International</a>
																<span class="path_delimiter">&gt;</span>
													<span class="path_current">ClimateChangeCorp.com</span>
													</div> 

		<div id="content-columns">
			<div id="column-left">

								<div id="content-intro" class="roundedbordersbottom">
					
					<div class="content-image">
																
																			<img src="/var/knowledge/storage/images/media/images/generic-backup-images/water-accounts-storage/344228-1-eng-GB/water-accounts-storage_contentfront.gif"/>
																</div>
	
					<div class="content-intro-text">
						<h1>ClimateChangeCorp.com</h1>
													<p class="author"><strong>Author:</strong>
								</p>
																								
													<p class="date"><strong>Date:</strong>
							24/08/2007</p>
																									<p class="intro">Introduction:</p>
							<p>This independent news website explores how companies around the world affect climate change and the environment. The site offers a daily news feed specific to climate change as well as features and opinions from the world’s leading climate change experts. We are affiliated with Ethical Corporation, an independent publisher and conference organiser specialising in business ethics.</p>
						
													<a href="http://www.climatechangecorp.com/content.asp?ContentID=4790" target="_blank">&raquo; Visit this site</a>
						
						
						<br/>&nbsp;
					</div> 
					<br class="cl">
				</div> 
				 
			
				<div id="content-item">
											<div class="box-content">
							<a class="storylist" href="/en/layout/set/print/content/view/full/5246">Print</a>
																				</div> 
						<br class="cl">
		
					 
	
				</div> 
			
				<div id="main-content" class="content view">					




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
					<input type="radio" name="list" value="knowledge-en" checked /><small>&nbsp;English&nbsp;</small><input type="radio" name="list" value="knowledge-fr"/><small>&nbsp;Fran&ccedil;ais</small>
					<input type="hidden" name="confirm" value="one"/>
					<input type="hidden" name="url" value="http://knowledge.cta.int/en/content/view/full/10094"/>
				</div>
			</form>

			<p>
			<a href="/en/Dossiers/CTA-and-S-T/K4D-e-Newsletters">
				&raquo;
				<strong>
								Download latest
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
				<a href="/en/About/Contact-Us">
					<img src="/design/knowledge/images/email-icon-small.png" alt=""/>
					<strong>
						Contact us
					</strong>
				</a>
			</div>
			
			
			<div class="interact">
				<a href="http://twitter.com/knowledge4dev" target="_blank">
					<img src="/design/knowledge/images/t_logo.png" alt=""/>
					<strong>
						Twitter
					</strong>
				</a>
			</div>
			
			<div class="interact">
				<a href="http://www.facebook.com/pages/Knowledge-for-Development/69728755793" target="_blank">
					<img src="/design/knowledge/images/f_logo.png" alt=""/>
					<strong>
						Facebook
					</strong>
				</a>
			</div>

			<div class="interact">
				<a href="/en/About/Content-syndication-on-this-website">
					<img src="/design/knowledge/images/rss-icon-small.png" alt=""/>
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
							<form class="loginform" method="post" action="/en/user/login">
	<label for="id1" class="inline-fixed">Username</label>
	<input class="halfbox" type="text" size="10" name="Login" id="id1" value=""/>
	<br/>
	
	<label for="id2" class="inline-fixed">Password</label>
	<input class="halfbox" type="password" size="10" name="Password" id="id2" value=""/>
	<br/>
	<br/>
	
	<input class="stdbutton" type="submit" name="LoginButton" value="Login"/>
	<input class="stdbutton" type="submit" name="RegisterButton" value="Register as new user"/>
	
	</form>
<br/>						
			
		</div>
	</div>
	
	
	<div class="box highlight">
		<div class="box-header">
			<h3><a href="/en/Blogs/Judith-s-blog">Judith’s blog</a></h3>
		</div>
		<div class="box-content">
						<ul>
							<li>
										<a href="/en/Blogs/Judith-s-blog/Judith-s-pick-March-2015">
											<i>Blog post:</i> Judith's pick - March 2015
						<span class="tagline">(12/03/2015)</span>
					</a>
				</li>
							<li>
										<a href="/en/Blogs/Judith-s-blog/Judith-s-pick-Early-February-2015">
											<i>Blog post:</i> Judith's pick - Early February 2015
						<span class="tagline">(05/02/2015)</span>
					</a>
				</li>
							<li>
										<a href="/en/Blogs/Judith-s-blog/Good-governance-local-ownership-Future-prospects-for-science-and-innovation-and-agriculture-led-development">
											<i>Blog post:</i> Good governance & local ownership - Future prospects for science and innovation and agriculture-led development
						<span class="tagline">(02/02/2015)</span>
					</a>
				</li>
						</ul>
					</div>
	</div> 
	
	<div class="box">
								<div class="box-header">
			<h3><a href="/en/About/Content-syndication-on-this-website"><img src="/design/knowledge/images/rss-icon-small.png" alt=""/> Latest updates</a></h3>
		</div>
		<div class="box-content">
										<ul>
									<li><a href="/en/Dossiers/Is-the-innovation-systems-approach-the-answer-to-inclusive-development">Is the innovation systems approach the answer to inclusive development?</a></li>
									<li><a href="/en/Dossiers/CTA-and-S-T/CTA-S-T-programme/Commissioned-articles-2016/CTA-Top-20-Innovations-that-Benefit-Smallholder-Farmers">CTA Top 20 Innovations that Benefit Smallholder Farmers</a></li>
									<li><a href="/en/Dossiers/S-T-Policy/Participatory-approaches-in-ARD/Feature-articles/Enhancing-private-sector-engagement-in-agricultural-research-and-development-in-eastern-Africa">Enhancing private sector engagement in agricultural research and development in eastern Africa</a></li>
									<li><a href="/en/Dossiers/S-T-Policy/Intellectual-property/Feature-articles/Intellectual-property-rights-in-plant-breeding-and-the-impact-on-agricultural-innovation">Intellectual property rights in plant breeding and the impact on agricultural innovation</a></li>
									<li><a href="/en/Dossiers/Commodities/Livestock/Feature-articles/The-ethics-of-animal-production-and-sustainability">The ethics of animal production and sustainability</a></li>
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
		<a href="http://www.addthis.com/bookmark.php" onMouseOver="return addthis_open(this, '', '[URL]', '[TITLE]')" onMouseOut="addthis_close()" onClick="return addthis_sendto()"><img src="http://s9.addthis.com/button1-bm.gif" width="125" height="16" alt=""/></a><script type="text/javascript" src="http://s7.addthis.com/js/152/addthis_widget.js"></script>
		<!-- ADDTHIS BUTTON END -->
	</div>
</div> 
			
			
		</div> 
		
		<br class="cl">
	</div> 
	<div id="base-footer">
	<div class="footer-text">
		<a href="/en/about/Legal_Notice" class="footer">Legal Notice</a> | Copyright &copy; 2003-2018<a class="footer" href="http://www.cta.int/" target="_blank"> CTA</a>, Wageningen, Netherlands.
	
	</div>
	<div class="footer-icons">
		<a href="http://acpsec.org"><img alt="ACP" src="/design/knowledge/images/icon_acp.gif"></a>
		<a href="http://europa.eu"><img alt="EU" src="/design/knowledge/images/icon_eu.gif"></a>
	</div>
</div> </div> 
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"44f10573e2","applicationID":"20071670","transactionName":"Z1RXbUICXUJZBkBQXF4eYEtZTFpfXABMF0NYQQ==","queueTime":0,"applicationTime":712,"atts":"SxNUGwoYTkw=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
