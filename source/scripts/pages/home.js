module.exports = function (sandbox) {
  const _this = this;
  _this.bindEvents = () => {
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

  _this.render = () => {
    _this.renderSection1Slider();
  };

  return {
    init: (data = {}) => {
      _this.data = data;

      _this.DOMSelectors = {};
      _this.objects = {
        $section1Slider: $('#section_1__content__group_1__slider'),
      };
      _this.templates = {};

      _this.bindEvents();
      _this.render();
    },
    destroy: () => {
    },
  };
};
