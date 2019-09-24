module.exports = function (sandbox) {
  const _this = this;

  _this.bindEvents = () => {
  };

  _this.renderSlider = () => {
    _this.objects.$slider.slick({
      dots: false,
      infinite: true,
      speed: 500,
      swipe: true,
      cssEase: 'ease-out',
      arrows: false,
      slidesToShow: 6,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 3000,
    });
  };

  _this.render = () => {
    _this.renderSlider();
  };

  return {
    init: (data = {}) => {
      _this.data = data;

      _this.objects = {
        $slider: $('.partner-slider .slider'),
      };

      _this.bindEvents();
      _this.render();
    },
    destroy: () => {},
  };
};
