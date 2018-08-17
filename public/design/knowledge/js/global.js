// jQuery! :)

$(document).ready(function() {
	megaMonsterMenu('#globalmenu');
	initExpandContents('.showmore');
	analyticsTracking();
});

var
	trackedMenu=false,
	trackedSearch=false,
	trackedNewsletter=false,
	trackedNewsletterSubscribe=false,
	trackedAlive=false,
	trackedExpandContents=false,
	mmm = false;

function megaMonsterMenu(menuID) {
	$(menuID+" .toplevel, "+menuID+" .mega_menu_dropdown").hover(function() {
		if(mmm !== false) {
			window.clearTimeout(mmm);
		}
		
		$(menuID).addClass('open');
		try {
			if(trackedMenu==false) {
				trackedMenu=true;
				analyticsPush('Menu', 'Opened',true);
			}
		} catch (e) {
			// something went wrong
		}
	}, function() {
		closeMegaMenu(menuID);
	});
}

function analyticsPush(ga_category, ga_action, ga_opt_noninteraction) {
	category = 'default';
	action = 'unknown';
	opt_noninteraction = false;
	
	if(ga_category)				category = ga_category;
	if(ga_action) 				action = ga_action;
	if(ga_opt_noninteraction) 	opt_noninteraction = ga_opt_noninteraction;
	
	_gaq.push(['_trackEvent', category, action, false, false, opt_noninteraction]);
}

function closeMegaMenu(menuID) {
	window.clearTimeout(mmm);
	mmm = window.setTimeout(function() {
		$(menuID).removeClass('open');
	},200);
}

function initExpandContents(selector) {
	$(selector).bind('click',function(e) { e.preventDefault(); expandContents(selector); } );
}

function expandContents(selector) {
	relatedSelector = $(selector).attr('rel');
	
	if($(relatedSelector).hasClass('shortened')) {
		if(trackedExpandContents==false) {
			trackedSearch = true;
			analyticsPush('Intro', 'Expanded',false);
		}
		$(relatedSelector).removeClass('shortened');
		$(selector).find('.read-more').hide();
		$(selector).find('.read-less').show();
	} else {
		$(relatedSelector).addClass('shortened');
		$(selector).find('.read-more').show();
		$(selector).find('.read-less').hide();
	}
}

function analyticsTracking() {
	$("#topSearch").bind('focus',function() {
		if(trackedSearch==false) {
			trackedSearch = true;
			analyticsPush('Search', 'Focus',true);
		}
	});
	
	$("#newsletterbox").bind('focus',function() {
		if(trackedNewsletter==false) {
			trackedNewsletter = true;
			analyticsPush('NewsletterSubscribe', 'Focus',true);
		}
	});
	
	$("#subscription").bind('submit',function() {
		if(trackedNewsletterSubscribe==false) {
			trackedNewsletterSubscribe = true;
			analyticsPush('NewsletterSubscribe', 'Subscribed',false);
		}
	});
	
	window.setTimeout(function() {
		analyticsPush('Alive', '10sec',true);
	},10000);
	window.setTimeout(function() {
		analyticsPush('Alive', '30sec',true);
	},30000);
	window.setTimeout(function() {
		analyticsPush('Alive', '60sec',true);
	},60000);
	window.setTimeout(function() {
		analyticsPush('Alive', '120sec',true);
	},120000);
}

$(window).unload(function() {
	analyticsPush('Alive', 'Exit',true);
});
