jQuery(document).ready(function() {

    jQuery(".contact-sidebar").click(function(){
        if(jQuery(".contact-sidebar").css("right") == "-216px") {
            jQuery(".contact-sidebar").animate({right: "0px"}, 200);
            console.log( "slide in" );
        } else {
            jQuery(".contact-sidebar").animate({right: "-216px"}, 200);
            console.log( "slide out" );
        }
        return false;
    });

	jQuery(".dogbox-sidebar").hover(function () {
		jQuery(this).stop().animate({
			right: "-1px"
		},
		200);
	},
	function () {
		jQuery(this).stop().animate({
			right: "-348px"
		},
		200);
	}).click(function () {
		window.location.href = contact_pagelink;
	});

    jQuery(".opener").click(function(event ) {
        event.preventDefault();

        jQuery(".openme" ).slideToggle( "slow", function() {

            jQuery(".opener").fadeOut( "slow", function() {
                
            });

        });
    });

});



// page init
jQuery(function(){
  //initTouchNav();
  initCarousel();
  //initMobileNav();
  //initSameHeight();
  //initDropDownClasses();
  //jQuery('input, textarea').placeholder();
});

function initCarousel() {


  jQuery('div.carousel').scrollGallery({
    mask: 'div.mask',
    slider: 'div.slideset',
    slides: 'div.slide',
    btnPrev: 'a.btn-prev',
    btnNext: 'a.btn-next',
    generatePagination: '.pagination',
    stretchSlideToMask: true,
    autoRotation: false,
    switchTime: 2000,
    animSpeed: 300
  });

  jQuery(".drop-down").hide();

  jQuery("a[href$='.pdf']").attr("target", "_blank");

  jQuery('div.gallery').scrollGallery({
    mask: 'div.mask',
    slider: 'div.slideset',
    slides: 'div.slide',
    btnPrev: 'a.btn-prev',
    btnNext: 'a.btn-next',
    generatePagination: '.pagination',
    autoRotation: false,
    switchTime: 3000,
    animSpeed: 500,
    step: 1
  });
  jQuery('div.slider').scrollGallery({
    mask: 'div.mask',
    slider: 'div.slideset',
    slides: 'div.slide',
    btnPrev: 'a.btn-prev',
    btnNext: 'a.btn-next',
    generatePagination: '.pagination',
    autoRotation: true,
    switchTime: 3000,
    animSpeed: 500,
    step: 1
  });
    jQuery('div.prodslider').scrollGallery({
        mask: 'div.mask',
        slider: 'div.slideset',
        slides: 'div.slide',
        btnPrev: 'a.btn-prev',
        btnNext: 'a.btn-next',
        generatePagination: '.pagination',
        autoRotation: true,
        switchTime: 3000,
        animSpeed: 500,
        step: 1
    });
}


/*
 * jQuery Carousel plugin
 */
(function($){
  function ScrollGallery(options) {
    this.options = $.extend({
      mask: 'div.mask',
      slider: '>*',
      slides: '>*',
      activeClass:'active',
      disabledClass:'disabled',
      btnPrev: 'a.btn-prev',
      btnNext: 'a.btn-next',
      generatePagination: false,
      pagerList: '<ul>',
      pagerListItem: '<li><a href="#"></a></li>',
      pagerListItemText: 'a',
      pagerLinks: '.pagination li',
      currentNumber: 'span.current-num',
      totalNumber: 'span.total-num',
      btnPlay: '.btn-play',
      btnPause: '.btn-pause',
      btnPlayPause: '.btn-play-pause',
      galleryReadyClass: 'gallery-js-ready',
      autorotationActiveClass: 'autorotation-active',
      autorotationDisabledClass: 'autorotation-disabled',
      stretchSlideToMask: false,
      circularRotation: true,
      disableWhileAnimating: false,
      autoRotation: false,
      pauseOnHover: isTouchDevice ? false : true,
      maskAutoSize: false,
      switchTime: 2000,
      animSpeed: 300,
      event:'click',
      swipeThreshold: 15,
      handleTouch: true,
      vertical: false,
      useTranslate3D: false,
      step: false
    }, options);
    this.init();
  }
  ScrollGallery.prototype = {
    init: function() {
      if(this.options.holder) {
        this.findElements();
        this.attachEvents();
        this.refreshPosition();
        this.refreshState(true);
        this.resumeRotation();
        this.makeCallback('onInit', this);
      }
    },
    findElements: function() {
      // define dimensions proporties
      this.fullSizeFunction = this.options.vertical ? 'outerHeight' : 'outerWidth';
      this.innerSizeFunction = this.options.vertical ? 'height' : 'width';
      this.slideSizeFunction = 'outerHeight';
      this.maskSizeProperty = 'height';
      this.animProperty = this.options.vertical ? 'marginTop' : 'marginLeft';

      // control elements
      this.gallery = $(this.options.holder).addClass(this.options.galleryReadyClass);
      this.mask = this.gallery.find(this.options.mask);
      this.slider = this.mask.find(this.options.slider);
      this.slides = this.slider.find(this.options.slides);
      this.btnPrev = this.gallery.find(this.options.btnPrev);
      this.btnNext = this.gallery.find(this.options.btnNext);
      this.currentStep = 0; this.stepsCount = 0;

      // get start index
      if(this.options.step === false) {
        var activeSlide = this.slides.filter('.'+this.options.activeClass);
        if(activeSlide.length) {
          this.currentStep = this.slides.index(activeSlide);
        }
      }

      // calculate offsets
      this.calculateOffsets();

      // create gallery pagination
      if(typeof this.options.generatePagination === 'string') {
        this.pagerLinks = $();
        this.buildPagination();
      } else {
        this.pagerLinks = this.gallery.find(this.options.pagerLinks);
        this.attachPaginationEvents();
      }

      // autorotation control buttons
      this.btnPlay = this.gallery.find(this.options.btnPlay);
      this.btnPause = this.gallery.find(this.options.btnPause);
      this.btnPlayPause = this.gallery.find(this.options.btnPlayPause);

      // misc elements
      this.curNum = this.gallery.find(this.options.currentNumber);
      this.allNum = this.gallery.find(this.options.totalNumber);
    },
    attachEvents: function() {
      // bind handlers scope
      var self = this;
      this.bindHandlers(['onWindowResize']);
      $(window).bind('load resize orientationchange', this.onWindowResize);

      // previous and next button handlers
      if(this.btnPrev.length) {
        this.prevSlideHandler = function(e) {
          e.preventDefault();
          self.prevSlide();
        };
        this.btnPrev.bind(this.options.event, this.prevSlideHandler);
      }
      if(this.btnNext.length) {
        this.nextSlideHandler = function(e) {
          e.preventDefault();
          self.nextSlide();
        };
        this.btnNext.bind(this.options.event, this.nextSlideHandler);
      }

      // pause on hover handling
      if(this.options.pauseOnHover && !isTouchDevice) {
        this.hoverHandler = function() {
          if(self.options.autoRotation) {
            self.galleryHover = true;
            self.pauseRotation();
          }
        };
        this.leaveHandler = function() {
          if(self.options.autoRotation) {
            self.galleryHover = false;
            self.resumeRotation();
          }
        };
        this.gallery.bind({mouseenter: this.hoverHandler, mouseleave: this.leaveHandler});
      }

      // autorotation buttons handler
      if(this.btnPlay.length) {
        this.btnPlayHandler = function(e) {
          e.preventDefault();
          self.startRotation();
        };
        this.btnPlay.bind(this.options.event, this.btnPlayHandler);
      }
      if(this.btnPause.length) {
        this.btnPauseHandler = function(e) {
          e.preventDefault();
          self.stopRotation();
        };
        this.btnPause.bind(this.options.event, this.btnPauseHandler);
      }
      if(this.btnPlayPause.length) {
        this.btnPlayPauseHandler = function(e) {
          e.preventDefault();
          if(!self.gallery.hasClass(self.options.autorotationActiveClass)) {
            self.startRotation();
          } else {
            self.stopRotation();
          }
        };
        this.btnPlayPause.bind(this.options.event, this.btnPlayPauseHandler);
      }

      // enable hardware acceleration
      if(isTouchDevice && this.options.useTranslate3D) {
        this.slider.css({'-webkit-transform': 'translate3d(0px, 0px, 0px)'});
      }

      // swipe event handling
      if(isTouchDevice && this.options.handleTouch && window.Hammer && this.mask.length) {
        this.swipeHandler = new Hammer.Manager(this.mask[0]);
        this.swipeHandler.add(new Hammer.Pan({
          direction: self.options.vertical ? Hammer.DIRECTION_VERTICAL : Hammer.DIRECTION_HORIZONTAL,
          threshold: self.options.swipeThreshold
        }));

        this.swipeHandler.on('panstart', function() {
          if(self.galleryAnimating) {
            self.swipeHandler.stop();
          } else {
            self.pauseRotation();
            self.originalOffset = parseFloat(self.slider.css(self.animProperty));
          }
        }).on('panmove', function(e) {
          var tmpOffset = self.originalOffset + e[self.options.vertical ? 'deltaY' : 'deltaX'];
          tmpOffset = Math.max(Math.min(0, tmpOffset), self.maxOffset);
          self.slider.css(self.animProperty, tmpOffset);
        }).on('panend', function(e) {
          self.resumeRotation();
          if(e.distance > self.options.swipeThreshold) {
            if(e.offsetDirection === Hammer.DIRECTION_RIGHT || e.offsetDirection === Hammer.DIRECTION_DOWN) {
              self.nextSlide();
            } else {
              self.prevSlide();
            }
          } else {
            self.switchSlide();
          }
        });
      }
    },
    onWindowResize: function() {
      if(!this.galleryAnimating) {
        this.calculateOffsets();
        this.refreshPosition();
        this.buildPagination();
        this.refreshState();
        this.resizeQueue = false;
      } else {
        this.resizeQueue = true;
      }
    },
    refreshPosition: function() {
      this.currentStep = Math.min(this.currentStep, this.stepsCount - 1);
      this.tmpProps = {};
      this.tmpProps[this.animProperty] = this.getStepOffset();
      this.slider.stop().css(this.tmpProps);
    },
    calculateOffsets: function() {
      var self = this, tmpOffset, tmpStep;
      if(this.options.stretchSlideToMask) {
        var tmpObj = {};
        tmpObj[this.innerSizeFunction] = this.mask[this.innerSizeFunction]();
        this.slides.css(tmpObj);
      }

      this.maskSize = this.mask[this.innerSizeFunction]();
      this.sumSize = this.getSumSize();

      this.maxOffset = this.maskSize - this.sumSize;

      // vertical gallery with single size step custom behavior
      if(this.options.vertical && this.options.maskAutoSize) {
        this.options.step = 1;
        this.stepsCount = this.slides.length;
        this.stepOffsets = [0];
        tmpOffset = 0;
        for(var i = 0; i < this.slides.length; i++) {
          tmpOffset -= $(this.slides[i])[this.fullSizeFunction](true);
          this.stepOffsets.push(tmpOffset);
        }
        this.maxOffset = tmpOffset;
        return;
      }

      // scroll by slide size
      if(typeof this.options.step === 'number' && this.options.step > 0) {
        this.slideDimensions = [];
        this.slides.each($.proxy(function(ind, obj){
          self.slideDimensions.push( $(obj)[self.fullSizeFunction](true) );
        },this));

        // calculate steps count
        this.stepOffsets = [0];
        this.stepsCount = 1;
        tmpOffset = tmpStep = 0;
        while(tmpOffset > this.maxOffset) {
          tmpOffset -= this.getSlideSize(tmpStep, tmpStep + this.options.step);
          tmpStep += this.options.step;
          this.stepOffsets.push(Math.max(tmpOffset, this.maxOffset));
          this.stepsCount++;
        }
      }
      // scroll by mask size
      else {
        // define step size
        this.stepSize = this.maskSize;

        // calculate steps count
        this.stepsCount = 1;
        tmpOffset = 0;
        while(tmpOffset > this.maxOffset) {
          tmpOffset -= this.stepSize;
          this.stepsCount++;
        }
      }
    },
    getSumSize: function() {
      var sum = 0;
      this.slides.each($.proxy(function(ind, obj){
        sum += $(obj)[this.fullSizeFunction](true);
      },this));
      this.slider.css(this.innerSizeFunction, sum);
      return sum;
    },
    getStepOffset: function(step) {
      step = step || this.currentStep;
      if(typeof this.options.step === 'number') {
        return this.stepOffsets[this.currentStep];
      } else {
        return Math.min(0, Math.max(-this.currentStep * this.stepSize, this.maxOffset));
      }
    },
    getSlideSize: function(i1, i2) {
      var sum = 0;
      for(var i = i1; i < Math.min(i2, this.slideDimensions.length); i++) {
        sum += this.slideDimensions[i];
      }
      return sum;
    },
    buildPagination: function() {
      if(typeof this.options.generatePagination === 'string') {
        if(!this.pagerHolder) {
          this.pagerHolder = this.gallery.find(this.options.generatePagination);
        }
        if(this.pagerHolder.length && this.oldStepsCount != this.stepsCount) {
          this.oldStepsCount = this.stepsCount;
          this.pagerHolder.empty();
          this.pagerList = $(this.options.pagerList).appendTo(this.pagerHolder);
          for(var i = 0; i < this.stepsCount; i++) {
            $(this.options.pagerListItem).appendTo(this.pagerList).find(this.options.pagerListItemText).text(i+1);
          }
          this.pagerLinks = this.pagerList.children();
          this.attachPaginationEvents();
        }
      }
    },
    attachPaginationEvents: function() {
      var self = this;
      this.pagerLinksHandler = function(e) {
        e.preventDefault();
        self.numSlide(self.pagerLinks.index(e.currentTarget));
      };
      this.pagerLinks.bind(this.options.event, this.pagerLinksHandler);
    },
    prevSlide: function() {
      if(!(this.options.disableWhileAnimating && this.galleryAnimating)) {
        if(this.currentStep > 0) {
          this.currentStep--;
          this.switchSlide();
        } else if(this.options.circularRotation) {
          this.currentStep = this.stepsCount - 1;
          this.switchSlide();
        }
      }
    },
    nextSlide: function(fromAutoRotation) {
      if(!(this.options.disableWhileAnimating && this.galleryAnimating)) {
        if(this.currentStep < this.stepsCount - 1) {
          this.currentStep++;
          this.switchSlide();
        } else if(this.options.circularRotation || fromAutoRotation === true) {
          this.currentStep = 0;
          this.switchSlide();
        }
      }
    },
    numSlide: function(c) {
      if(this.currentStep != c) {
        this.currentStep = c;
        this.switchSlide();
      }
    },
    switchSlide: function() {
      var self = this;
      this.galleryAnimating = true;
      this.tmpProps = {};
      this.tmpProps[this.animProperty] = this.getStepOffset();
      this.slider.stop().animate(this.tmpProps, {duration: this.options.animSpeed, complete: function(){
        // animation complete
        self.galleryAnimating = false;
        if(self.resizeQueue) {
          self.onWindowResize();
        }

        // onchange callback
        self.makeCallback('onChange', self);
        self.autoRotate();
      }});
      this.refreshState();

      // onchange callback
      this.makeCallback('onBeforeChange', this);
    },
    refreshState: function(initial) {
      if(this.options.step === 1 || this.stepsCount === this.slides.length) {
        this.slides.removeClass(this.options.activeClass).eq(this.currentStep).addClass(this.options.activeClass);
      }
      this.pagerLinks.removeClass(this.options.activeClass).eq(this.currentStep).addClass(this.options.activeClass);
      this.curNum.html(this.currentStep+1);
      this.allNum.html(this.stepsCount);

      // initial refresh
      if(this.options.maskAutoSize && typeof this.options.step === 'number') {
        this.tmpProps = {};
        this.tmpProps[this.maskSizeProperty] = this.slides.eq(Math.min(this.currentStep,this.slides.length-1))[this.slideSizeFunction](true);
        this.mask.stop()[initial ? 'css' : 'animate'](this.tmpProps);
      }

      // disabled state
      if(!this.options.circularRotation) {
        this.btnPrev.add(this.btnNext).removeClass(this.options.disabledClass);
        if(this.currentStep === 0) this.btnPrev.addClass(this.options.disabledClass);
        if(this.currentStep === this.stepsCount - 1) this.btnNext.addClass(this.options.disabledClass);
      }

      // add class if not enough slides
      this.gallery.toggleClass('not-enough-slides', this.sumSize <= this.maskSize);
    },
    startRotation: function() {
      this.options.autoRotation = true;
      this.galleryHover = false;
      this.autoRotationStopped = false;
      this.resumeRotation();
    },
    stopRotation: function() {
      this.galleryHover = true;
      this.autoRotationStopped = true;
      this.pauseRotation();
    },
    pauseRotation: function() {
      this.gallery.addClass(this.options.autorotationDisabledClass);
      this.gallery.removeClass(this.options.autorotationActiveClass);
      clearTimeout(this.timer);
    },
    resumeRotation: function() {
      if(!this.autoRotationStopped) {
        this.gallery.addClass(this.options.autorotationActiveClass);
        this.gallery.removeClass(this.options.autorotationDisabledClass);
        this.autoRotate();
      }
    },
    autoRotate: function() {
      var self = this;
      clearTimeout(this.timer);
      if(this.options.autoRotation && !this.galleryHover && !this.autoRotationStopped) {
        this.timer = setTimeout(function(){
          self.nextSlide(true);
        }, this.options.switchTime);
      } else {
        this.pauseRotation();
      }
    },
    bindHandlers: function(handlersList) {
      var self = this;
      $.each(handlersList, function(index, handler) {
        var origHandler = self[handler];
        self[handler] = function() {
          return origHandler.apply(self, arguments);
        };
      });
    },
    makeCallback: function(name) {
      if(typeof this.options[name] === 'function') {
        var args = Array.prototype.slice.call(arguments);
        args.shift();
        this.options[name].apply(this, args);
      }
    },
    destroy: function() {
      // destroy handler
      $(window).unbind('load resize orientationchange', this.onWindowResize);
      this.btnPrev.unbind(this.options.event, this.prevSlideHandler);
      this.btnNext.unbind(this.options.event, this.nextSlideHandler);
      this.pagerLinks.unbind(this.options.event, this.pagerLinksHandler);
      this.gallery.unbind('mouseenter', this.hoverHandler);
      this.gallery.unbind('mouseleave', this.leaveHandler);

      // autorotation buttons handlers
      this.stopRotation();
      this.btnPlay.unbind(this.options.event, this.btnPlayHandler);
      this.btnPause.unbind(this.options.event, this.btnPauseHandler);
      this.btnPlayPause.unbind(this.options.event, this.btnPlayPauseHandler);

      // destroy swipe handler
      if(this.swipeHandler) {
        this.swipeHandler.destroy();
      }

      // remove inline styles, classes and pagination
      var unneededClasses = [this.options.galleryReadyClass, this.options.autorotationActiveClass, this.options.autorotationDisabledClass];
      this.gallery.removeClass(unneededClasses.join(' '));
      this.slider.add(this.slides).removeAttr('style');
      if(typeof this.options.generatePagination === 'string') {
        this.pagerHolder.empty();
      }
    }
  };

  // detect device type
  var isTouchDevice = /Windows Phone/.test(navigator.userAgent) || ('ontouchstart' in window) || window.DocumentTouch && document instanceof DocumentTouch;

  // jquery plugin
  $.fn.scrollGallery = function(opt){
    return this.each(function(){
      $(this).data('ScrollGallery', new ScrollGallery($.extend(opt,{holder:this})));
    });
  };
}(jQuery));

/* Cycle2 core engine */
;(function($) {
"use strict";

var version = '2.1.6';

$.fn.cycle = function( options ) {
    // fix mistakes with the ready state
    var o;
    if ( this.length === 0 && !$.isReady ) {
        o = { s: this.selector, c: this.context };
        $.fn.cycle.log('requeuing slideshow (dom not ready)');
        $(function() {
            $( o.s, o.c ).cycle(options);
        });
        return this;
    }

    return this.each(function() {
        var data, opts, shortName, val;
        var container = $(this);
        var log = $.fn.cycle.log;

        if ( container.data('cycle.opts') )
            return; // already initialized

        if ( container.data('cycle-log') === false || 
            ( options && options.log === false ) ||
            ( opts && opts.log === false) ) {
            log = $.noop;
        }

        log('--c2 init--');
        data = container.data();
        for (var p in data) {
            // allow props to be accessed sans 'cycle' prefix and log the overrides
            if (data.hasOwnProperty(p) && /^cycle[A-Z]+/.test(p) ) {
                val = data[p];
                shortName = p.match(/^cycle(.*)/)[1].replace(/^[A-Z]/, lowerCase);
                log(shortName+':', val, '('+typeof val +')');
                data[shortName] = val;
            }
        }

        opts = $.extend( {}, $.fn.cycle.defaults, data, options || {});

        opts.timeoutId = 0;
        opts.paused = opts.paused || false; // #57
        opts.container = container;
        opts._maxZ = opts.maxZ;

        opts.API = $.extend ( { _container: container }, $.fn.cycle.API );
        opts.API.log = log;
        opts.API.trigger = function( eventName, args ) {
            opts.container.trigger( eventName, args );
            return opts.API;
        };

        container.data( 'cycle.opts', opts );
        container.data( 'cycle.API', opts.API );

        // opportunity for plugins to modify opts and API
        opts.API.trigger('cycle-bootstrap', [ opts, opts.API ]);

        opts.API.addInitialSlides();
        opts.API.preInitSlideshow();

        if ( opts.slides.length )
            opts.API.initSlideshow();
    });
};

$.fn.cycle.API = {
    opts: function() {
        return this._container.data( 'cycle.opts' );
    },
    addInitialSlides: function() {
        var opts = this.opts();
        var slides = opts.slides;
        opts.slideCount = 0;
        opts.slides = $(); // empty set
        
        // add slides that already exist
        slides = slides.jquery ? slides : opts.container.find( slides );

        if ( opts.random ) {
            slides.sort(function() {return Math.random() - 0.5;});
        }

        opts.API.add( slides );
    },

    preInitSlideshow: function() {
        var opts = this.opts();
        opts.API.trigger('cycle-pre-initialize', [ opts ]);
        var tx = $.fn.cycle.transitions[opts.fx];
        if (tx && $.isFunction(tx.preInit))
            tx.preInit( opts );
        opts._preInitialized = true;
    },

    postInitSlideshow: function() {
        var opts = this.opts();
        opts.API.trigger('cycle-post-initialize', [ opts ]);
        var tx = $.fn.cycle.transitions[opts.fx];
        if (tx && $.isFunction(tx.postInit))
            tx.postInit( opts );
    },

    initSlideshow: function() {
        var opts = this.opts();
        var pauseObj = opts.container;
        var slideOpts;
        opts.API.calcFirstSlide();

        if ( opts.container.css('position') == 'static' )
            opts.container.css('position', 'relative');

        $(opts.slides[opts.currSlide]).css({
            opacity: 1,

            display: 'block',
            visibility: 'visible'
        });
        opts.API.stackSlides( opts.slides[opts.currSlide], opts.slides[opts.nextSlide], !opts.reverse );

        if ( opts.pauseOnHover ) {
            // allow pauseOnHover to specify an element
            if ( opts.pauseOnHover !== true )
                pauseObj = $( opts.pauseOnHover );

            pauseObj.hover(
                function(){ opts.API.pause( true ); }, 
                function(){ opts.API.resume( true ); }
            );
        }

        // stage initial transition
        if ( opts.timeout ) {
            slideOpts = opts.API.getSlideOpts( opts.currSlide );
            opts.API.queueTransition( slideOpts, slideOpts.timeout + opts.delay );
        }

        opts._initialized = true;
        opts.API.updateView( true );
        opts.API.trigger('cycle-initialized', [ opts ]);
        opts.API.postInitSlideshow();
    },

    pause: function( hover ) {
        var opts = this.opts(),
            slideOpts = opts.API.getSlideOpts(),
            alreadyPaused = opts.hoverPaused || opts.paused;

        if ( hover )
            opts.hoverPaused = true; 
        else
            opts.paused = true;

        if ( ! alreadyPaused ) {
            opts.container.addClass('cycle-paused');
            opts.API.trigger('cycle-paused', [ opts ]).log('cycle-paused');

            if ( slideOpts.timeout ) {
                clearTimeout( opts.timeoutId );
                opts.timeoutId = 0;
                
                // determine how much time is left for the current slide
                opts._remainingTimeout -= ( $.now() - opts._lastQueue );
                if ( opts._remainingTimeout < 0 || isNaN(opts._remainingTimeout) )
                    opts._remainingTimeout = undefined;
            }
        }
    },

    resume: function( hover ) {
        var opts = this.opts(),
            alreadyResumed = !opts.hoverPaused && !opts.paused,
            remaining;

        if ( hover )
            opts.hoverPaused = false; 
        else
            opts.paused = false;

    
        if ( ! alreadyResumed ) {
            opts.container.removeClass('cycle-paused');
            // #gh-230; if an animation is in progress then don't queue a new transition; it will
            // happen naturally
            if ( opts.slides.filter(':animated').length === 0 )
                opts.API.queueTransition( opts.API.getSlideOpts(), opts._remainingTimeout );
            opts.API.trigger('cycle-resumed', [ opts, opts._remainingTimeout ] ).log('cycle-resumed');
        }
    },

    add: function( slides, prepend ) {
        var opts = this.opts();
        var oldSlideCount = opts.slideCount;
        var startSlideshow = false;
        var len;

        if ( $.type(slides) == 'string')
            slides = $.trim( slides );

        $( slides ).each(function(i) {
            var slideOpts;
            var slide = $(this);

            if ( prepend )
                opts.container.prepend( slide );
            else
                opts.container.append( slide );

            opts.slideCount++;
            slideOpts = opts.API.buildSlideOpts( slide );

            if ( prepend )
                opts.slides = $( slide ).add( opts.slides );
            else
                opts.slides = opts.slides.add( slide );

            opts.API.initSlide( slideOpts, slide, --opts._maxZ );

            slide.data('cycle.opts', slideOpts);
            opts.API.trigger('cycle-slide-added', [ opts, slideOpts, slide ]);
        });

        opts.API.updateView( true );

        startSlideshow = opts._preInitialized && (oldSlideCount < 2 && opts.slideCount >= 1);
        if ( startSlideshow ) {
            if ( !opts._initialized )
                opts.API.initSlideshow();
            else if ( opts.timeout ) {
                len = opts.slides.length;
                opts.nextSlide = opts.reverse ? len - 1 : 1;
                if ( !opts.timeoutId ) {
                    opts.API.queueTransition( opts );
                }
            }
        }
    },

    calcFirstSlide: function() {
        var opts = this.opts();
        var firstSlideIndex;
        firstSlideIndex = parseInt( opts.startingSlide || 0, 10 );
        if (firstSlideIndex >= opts.slides.length || firstSlideIndex < 0)
            firstSlideIndex = 0;

        opts.currSlide = firstSlideIndex;
        if ( opts.reverse ) {
            opts.nextSlide = firstSlideIndex - 1;
            if (opts.nextSlide < 0)
                opts.nextSlide = opts.slides.length - 1;
        }
        else {
            opts.nextSlide = firstSlideIndex + 1;
            if (opts.nextSlide == opts.slides.length)
                opts.nextSlide = 0;
        }
    },

    calcNextSlide: function() {
        var opts = this.opts();
        var roll;
        if ( opts.reverse ) {
            roll = (opts.nextSlide - 1) < 0;
            opts.nextSlide = roll ? opts.slideCount - 1 : opts.nextSlide-1;
            opts.currSlide = roll ? 0 : opts.nextSlide+1;
        }
        else {
            roll = (opts.nextSlide + 1) == opts.slides.length;
            opts.nextSlide = roll ? 0 : opts.nextSlide+1;
            opts.currSlide = roll ? opts.slides.length-1 : opts.nextSlide-1;
        }
    },

    calcTx: function( slideOpts, manual ) {
        var opts = slideOpts;
        var tx;

        if ( opts._tempFx )
            tx = $.fn.cycle.transitions[opts._tempFx];
        else if ( manual && opts.manualFx )
            tx = $.fn.cycle.transitions[opts.manualFx];

        if ( !tx )
            tx = $.fn.cycle.transitions[opts.fx];

        opts._tempFx = null;
        this.opts()._tempFx = null;

        if (!tx) {
            tx = $.fn.cycle.transitions.fade;
            opts.API.log('Transition "' + opts.fx + '" not found.  Using fade.');
        }
        return tx;
    },

    prepareTx: function( manual, fwd ) {
        var opts = this.opts();
        var after, curr, next, slideOpts, tx;

        if ( opts.slideCount < 2 ) {
            opts.timeoutId = 0;
            return;
        }
        if ( manual && ( !opts.busy || opts.manualTrump ) ) {
            opts.API.stopTransition();
            opts.busy = false;
            clearTimeout(opts.timeoutId);
            opts.timeoutId = 0;
        }
        if ( opts.busy )
            return;
        if ( opts.timeoutId === 0 && !manual )
            return;

        curr = opts.slides[opts.currSlide];
        next = opts.slides[opts.nextSlide];
        slideOpts = opts.API.getSlideOpts( opts.nextSlide );
        tx = opts.API.calcTx( slideOpts, manual );

        opts._tx = tx;

        if ( manual && slideOpts.manualSpeed !== undefined )
            slideOpts.speed = slideOpts.manualSpeed;

        // if ( opts.nextSlide === opts.currSlide )
        //     opts.API.calcNextSlide();

        // ensure that:
        //      1. advancing to a different slide
        //      2. this is either a manual event (prev/next, pager, cmd) or 
        //              a timer event and slideshow is not paused
        if ( opts.nextSlide != opts.currSlide && 
            (manual || (!opts.paused && !opts.hoverPaused && opts.timeout) )) { // #62

            opts.API.trigger('cycle-before', [ slideOpts, curr, next, fwd ]);
            if ( tx.before )
                tx.before( slideOpts, curr, next, fwd );

            after = function() {
                opts.busy = false;
                // #76; bail if slideshow has been destroyed
                if (! opts.container.data( 'cycle.opts' ) )
                    return;

                if (tx.after)
                    tx.after( slideOpts, curr, next, fwd );
                opts.API.trigger('cycle-after', [ slideOpts, curr, next, fwd ]);
                opts.API.queueTransition( slideOpts);
                opts.API.updateView( true );
            };

            opts.busy = true;
            if (tx.transition)
                tx.transition(slideOpts, curr, next, fwd, after);
            else
                opts.API.doTransition( slideOpts, curr, next, fwd, after);

            opts.API.calcNextSlide();
            opts.API.updateView();
        } else {
            opts.API.queueTransition( slideOpts );
        }
    },

    // perform the actual animation
    doTransition: function( slideOpts, currEl, nextEl, fwd, callback) {
        var opts = slideOpts;
        var curr = $(currEl), next = $(nextEl);
        var fn = function() {
            // make sure animIn has something so that callback doesn't trigger immediately
            next.animate(opts.animIn || { opacity: 1}, opts.speed, opts.easeIn || opts.easing, callback);
        };

        next.css(opts.cssBefore || {});
        curr.animate(opts.animOut || {}, opts.speed, opts.easeOut || opts.easing, function() {
            curr.css(opts.cssAfter || {});
            if (!opts.sync) {
                fn();
            }
        });
        if (opts.sync) {
            fn();
        }
    },

    queueTransition: function( slideOpts, specificTimeout ) {
        var opts = this.opts();
        var timeout = specificTimeout !== undefined ? specificTimeout : slideOpts.timeout;
        if (opts.nextSlide === 0 && --opts.loop === 0) {
            opts.API.log('terminating; loop=0');
            opts.timeout = 0;
            if ( timeout ) {
                setTimeout(function() {
                    opts.API.trigger('cycle-finished', [ opts ]);
                }, timeout);
            }
            else {
                opts.API.trigger('cycle-finished', [ opts ]);
            }
            // reset nextSlide
            opts.nextSlide = opts.currSlide;
            return;
        }
        if ( opts.continueAuto !== undefined ) {
            if ( opts.continueAuto === false || 
                ($.isFunction(opts.continueAuto) && opts.continueAuto() === false )) {
                opts.API.log('terminating automatic transitions');
                opts.timeout = 0;
                if ( opts.timeoutId )
                    clearTimeout(opts.timeoutId);
                return;
            }
        }
        if ( timeout ) {
            opts._lastQueue = $.now();
            if ( specificTimeout === undefined )
                opts._remainingTimeout = slideOpts.timeout;

            if ( !opts.paused && ! opts.hoverPaused ) {
                opts.timeoutId = setTimeout(function() { 
                    opts.API.prepareTx( false, !opts.reverse ); 
                }, timeout );
            }
        }
    },

    stopTransition: function() {
        var opts = this.opts();
        if ( opts.slides.filter(':animated').length ) {
            opts.slides.stop(false, true);
            opts.API.trigger('cycle-transition-stopped', [ opts ]);
        }

        if ( opts._tx && opts._tx.stopTransition )
            opts._tx.stopTransition( opts );
    },

    // advance slide forward or back
    advanceSlide: function( val ) {
        var opts = this.opts();
        clearTimeout(opts.timeoutId);
        opts.timeoutId = 0;
        opts.nextSlide = opts.currSlide + val;
        
        if (opts.nextSlide < 0)
            opts.nextSlide = opts.slides.length - 1;
        else if (opts.nextSlide >= opts.slides.length)
            opts.nextSlide = 0;

        opts.API.prepareTx( true,  val >= 0 );
        return false;
    },

    buildSlideOpts: function( slide ) {
        var opts = this.opts();
        var val, shortName;
        var slideOpts = slide.data() || {};
        for (var p in slideOpts) {
            // allow props to be accessed sans 'cycle' prefix and log the overrides
            if (slideOpts.hasOwnProperty(p) && /^cycle[A-Z]+/.test(p) ) {
                val = slideOpts[p];
                shortName = p.match(/^cycle(.*)/)[1].replace(/^[A-Z]/, lowerCase);
                opts.API.log('['+(opts.slideCount-1)+']', shortName+':', val, '('+typeof val +')');
                slideOpts[shortName] = val;
            }
        }

        slideOpts = $.extend( {}, $.fn.cycle.defaults, opts, slideOpts );
        slideOpts.slideNum = opts.slideCount;

        try {
            // these props should always be read from the master state object
            delete slideOpts.API;
            delete slideOpts.slideCount;
            delete slideOpts.currSlide;
            delete slideOpts.nextSlide;
            delete slideOpts.slides;
        } catch(e) {
            // no op
        }
        return slideOpts;
    },

    getSlideOpts: function( index ) {
        var opts = this.opts();
        if ( index === undefined )
            index = opts.currSlide;

        var slide = opts.slides[index];
        var slideOpts = $(slide).data('cycle.opts');
        return $.extend( {}, opts, slideOpts );
    },
    
    initSlide: function( slideOpts, slide, suggestedZindex ) {
        var opts = this.opts();
        slide.css( slideOpts.slideCss || {} );
        if ( suggestedZindex > 0 )
            slide.css( 'zIndex', suggestedZindex );

        // ensure that speed settings are sane
        if ( isNaN( slideOpts.speed ) )
            slideOpts.speed = $.fx.speeds[slideOpts.speed] || $.fx.speeds._default;
        if ( !slideOpts.sync )
            slideOpts.speed = slideOpts.speed / 2;

        slide.addClass( opts.slideClass );
    },

    updateView: function( isAfter, isDuring, forceEvent ) {
        var opts = this.opts();
        if ( !opts._initialized )
            return;
        var slideOpts = opts.API.getSlideOpts();
        var currSlide = opts.slides[ opts.currSlide ];

        if ( ! isAfter && isDuring !== true ) {
            opts.API.trigger('cycle-update-view-before', [ opts, slideOpts, currSlide ]);
            if ( opts.updateView < 0 )
                return;
        }

        if ( opts.slideActiveClass ) {
            opts.slides.removeClass( opts.slideActiveClass )
                .eq( opts.currSlide ).addClass( opts.slideActiveClass );
        }

        if ( isAfter && opts.hideNonActive )
            opts.slides.filter( ':not(.' + opts.slideActiveClass + ')' ).css('visibility', 'hidden');

        if ( opts.updateView === 0 ) {
            setTimeout(function() {
                opts.API.trigger('cycle-update-view', [ opts, slideOpts, currSlide, isAfter ]);
            }, slideOpts.speed / (opts.sync ? 2 : 1) );
        }

        if ( opts.updateView !== 0 )
            opts.API.trigger('cycle-update-view', [ opts, slideOpts, currSlide, isAfter ]);
        
        if ( isAfter )
            opts.API.trigger('cycle-update-view-after', [ opts, slideOpts, currSlide ]);
    },

    getComponent: function( name ) {
        var opts = this.opts();
        var selector = opts[name];
        if (typeof selector === 'string') {
            // if selector is a child, sibling combinator, adjancent selector then use find, otherwise query full dom
            return (/^\s*[\>|\+|~]/).test( selector ) ? opts.container.find( selector ) : $( selector );
        }
        if (selector.jquery)
            return selector;
        
        return $(selector);
    },

    stackSlides: function( curr, next, fwd ) {
        var opts = this.opts();
        if ( !curr ) {
            curr = opts.slides[opts.currSlide];
            next = opts.slides[opts.nextSlide];
            fwd = !opts.reverse;
        }

        // reset the zIndex for the common case:
        // curr slide on top,  next slide beneath, and the rest in order to be shown
        $(curr).css('zIndex', opts.maxZ);

        var i;
        var z = opts.maxZ - 2;
        var len = opts.slideCount;
        if (fwd) {
            for ( i = opts.currSlide + 1; i < len; i++ )
                $( opts.slides[i] ).css( 'zIndex', z-- );
            for ( i = 0; i < opts.currSlide; i++ )
                $( opts.slides[i] ).css( 'zIndex', z-- );
        }
        else {
            for ( i = opts.currSlide - 1; i >= 0; i-- )
                $( opts.slides[i] ).css( 'zIndex', z-- );
            for ( i = len - 1; i > opts.currSlide; i-- )
                $( opts.slides[i] ).css( 'zIndex', z-- );
        }

        $(next).css('zIndex', opts.maxZ - 1);
    },

    getSlideIndex: function( el ) {
        return this.opts().slides.index( el );
    }

}; // API

// default logger
$.fn.cycle.log = function log() {
    /*global console:true */
    if (window.console && console.log)
        console.log('[cycle2] ' + Array.prototype.join.call(arguments, ' ') );
};

$.fn.cycle.version = function() { return 'Cycle2: ' + version; };

// helper functions

function lowerCase(s) {
    return (s || '').toLowerCase();
}

// expose transition object
$.fn.cycle.transitions = {
    custom: {
    },
    none: {
        before: function( opts, curr, next, fwd ) {
            opts.API.stackSlides( next, curr, fwd );
            opts.cssBefore = { opacity: 1, visibility: 'visible', display: 'block' };
        }
    },
    fade: {
        before: function( opts, curr, next, fwd ) {
            var css = opts.API.getSlideOpts( opts.nextSlide ).slideCss || {};
            opts.API.stackSlides( curr, next, fwd );
            opts.cssBefore = $.extend(css, { opacity: 0, visibility: 'visible', display: 'block' });
            opts.animIn = { opacity: 1 };
            opts.animOut = { opacity: 0 };
        }
    },
    fadeout: {
        before: function( opts , curr, next, fwd ) {
            var css = opts.API.getSlideOpts( opts.nextSlide ).slideCss || {};
            opts.API.stackSlides( curr, next, fwd );
            opts.cssBefore = $.extend(css, { opacity: 1, visibility: 'visible', display: 'block' });
            opts.animOut = { opacity: 0 };
        }
    },
    scrollHorz: {
        before: function( opts, curr, next, fwd ) {
            opts.API.stackSlides( curr, next, fwd );
            var w = opts.container.css('overflow','hidden').width();
            opts.cssBefore = { left: fwd ? w : - w, top: 0, opacity: 1, visibility: 'visible', display: 'block' };
            opts.cssAfter = { zIndex: opts._maxZ - 2, left: 0 };
            opts.animIn = { left: 0 };
            opts.animOut = { left: fwd ? -w : w };
        }
    }
};

// @see: http://jquery.malsup.com/cycle2/api
$.fn.cycle.defaults = {
    allowWrap:        true,
    autoSelector:     '.cycle-slideshow[data-cycle-auto-init!=false]',
    delay:            0,
    easing:           null,
    fx:              'fade',
    hideNonActive:    true,
    loop:             0,
    manualFx:         undefined,
    manualSpeed:      undefined,
    manualTrump:      true,
    maxZ:             100,
    pauseOnHover:     false,
    reverse:          false,
    slideActiveClass: 'cycle-slide-active',
    slideClass:       'cycle-slide',
    slideCss:         { position: 'absolute', top: 0, left: 0 },
    slides:          '> img',
    speed:            500,
    startingSlide:    0,
    sync:             true,
    timeout:          4000,
    updateView:       0
};

// automatically find and run slideshows
$(document).ready(function() {
    $( $.fn.cycle.defaults.autoSelector ).cycle();
});

})(jQuery);

/*! Cycle2 autoheight plugin; Copyright (c) M.Alsup, 2012; version: 20130913 */
(function($) {
"use strict";

$.extend($.fn.cycle.defaults, {
    autoHeight: 0, // setting this option to false disables autoHeight logic
    autoHeightSpeed: 250,
    autoHeightEasing: null
});    

$(document).on( 'cycle-initialized', function( e, opts ) {
    var autoHeight = opts.autoHeight;
    var t = $.type( autoHeight );
    var resizeThrottle = null;
    var ratio;

    if ( t !== 'string' && t !== 'number' )
        return;

    // bind events
    opts.container.on( 'cycle-slide-added cycle-slide-removed', initAutoHeight );
    opts.container.on( 'cycle-destroyed', onDestroy );

    if ( autoHeight == 'container' ) {
        opts.container.on( 'cycle-before', onBefore );
    }
    else if ( t === 'string' && /\d+\:\d+/.test( autoHeight ) ) { 
        // use ratio
        ratio = autoHeight.match(/(\d+)\:(\d+)/);
        ratio = ratio[1] / ratio[2];
        opts._autoHeightRatio = ratio;
    }

    // if autoHeight is a number then we don't need to recalculate the sentinel
    // index on resize
    if ( t !== 'number' ) {
        // bind unique resize handler per slideshow (so it can be 'off-ed' in onDestroy)
        opts._autoHeightOnResize = function () {
            clearTimeout( resizeThrottle );
            resizeThrottle = setTimeout( onResize, 50 );
        };

        $(window).on( 'resize orientationchange', opts._autoHeightOnResize );
    }

    setTimeout( onResize, 30 );

    function onResize() {
        initAutoHeight( e, opts );
    }
});

function initAutoHeight( e, opts ) {
    var clone, height, sentinelIndex;
    var autoHeight = opts.autoHeight;

    if ( autoHeight == 'container' ) {
        height = $( opts.slides[ opts.currSlide ] ).outerHeight();
        opts.container.height( height );
    }
    else if ( opts._autoHeightRatio ) { 
        opts.container.height( opts.container.width() / opts._autoHeightRatio );
    }
    else if ( autoHeight === 'calc' || ( $.type( autoHeight ) == 'number' && autoHeight >= 0 ) ) {
        if ( autoHeight === 'calc' )
            sentinelIndex = calcSentinelIndex( e, opts );
        else if ( autoHeight >= opts.slides.length )
            sentinelIndex = 0;
        else 
            sentinelIndex = autoHeight;

        // only recreate sentinel if index is different
        if ( sentinelIndex == opts._sentinelIndex )
            return;

        opts._sentinelIndex = sentinelIndex;
        if ( opts._sentinel )
            opts._sentinel.remove();

        // clone existing slide as sentinel
        clone = $( opts.slides[ sentinelIndex ].cloneNode(true) );
        
        // #50; remove special attributes from cloned content
        clone.removeAttr( 'id name rel' ).find( '[id],[name],[rel]' ).removeAttr( 'id name rel' );

        clone.css({
            position: 'static',
            visibility: 'hidden',
            display: 'block'
        }).prependTo( opts.container ).addClass('cycle-sentinel cycle-slide').removeClass('cycle-slide-active');
        clone.find( '*' ).css( 'visibility', 'hidden' );

        opts._sentinel = clone;
    }
}    

function calcSentinelIndex( e, opts ) {
    var index = 0, max = -1;

    // calculate tallest slide index
    opts.slides.each(function(i) {
        var h = $(this).height();
        if ( h > max ) {
            max = h;
            index = i;
        }
    });
    return index;
}

function onBefore( e, opts, outgoing, incoming, forward ) {
    var h = $(incoming).outerHeight();
    opts.container.animate( { height: h }, opts.autoHeightSpeed, opts.autoHeightEasing );
}

function onDestroy( e, opts ) {
    if ( opts._autoHeightOnResize ) {
        $(window).off( 'resize orientationchange', opts._autoHeightOnResize );
        opts._autoHeightOnResize = null;
    }
    opts.container.off( 'cycle-slide-added cycle-slide-removed', initAutoHeight );
    opts.container.off( 'cycle-destroyed', onDestroy );
    opts.container.off( 'cycle-before', onBefore );

    if ( opts._sentinel ) {
        opts._sentinel.remove();
        opts._sentinel = null;
    }
}

})(jQuery);


