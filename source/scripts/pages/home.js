module.exports = function (sandbox) {
  const _this = this;
  _this.bindEvents = () => {
    // Next slide button event
    _this.objects.$nextButton.on('click', (event) => {
      event.preventDefault();
      _this.nextSlide();
    });

    // Previous slide button event
    _this.objects.$backButton.on('click', (event) => {
      event.preventDefault();
      _this.backSlide();
    });
  };

  _this.renderSection1Slider = () => {
    _this.objects.$section1Slider.slick({
      dots: true,
      infinite: true,
      speed: 500,
      swipe: true,
      cssEase: 'ease-out',
      arrows: false,
      autoplay: true,
      autoplaySpeed: 3000,
      appendDots: _this.objects.$section1Slider,
    });
  };

  _this.nextSlide = () => {
    _this.objects.$section1Slider.slick('slickNext');
  };

  _this.backSlide = () => {
    _this.objects.$section1Slider.slick('slickPrev');
  };

  _this.render = () => {
    _this.renderSection1Slider();
  };

  return {
    init: (data = {}) => {
      _this.data = data;

      _this.DOMSelectors = {};
      _this.objects = {
        $section1Slider: $('#section_1__content__group_1__slider'),
        $nextButton: $('#section_1__content__group_1 .next'),
        $backButton: $('#section_1__content__group_1 .back'),
      };
      _this.templates = {};

      _this.bindEvents();
      _this.render();
    },
    destroy: () => {
    },
  };
};
