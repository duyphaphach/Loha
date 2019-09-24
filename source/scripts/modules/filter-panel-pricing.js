module.exports = function (sandbox) {
  const _this = this;

  _this.bindEvents = () => {
  };

  return {
    init: (data = {}) => {
      _this.data = data;
      $('#filter_panel__panel_info_3__range_slider__input').ionRangeSlider({
        skin: 'round',
        type: 'double',
        min: 50000,
        max: 10000000,
        from: 50000,
        to: 4000000,
        postfix: 'đ',
        prettify_separator: '.',
        values_separator: 10000,
      });

      _this.objects = {
      };

      _this.bindEvents();
    },
    destroy: () => {},
  };
};
