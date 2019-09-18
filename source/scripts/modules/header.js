module.exports = function (sandbox) {
  const _this = this;

  _this.bindEvents = () => {
  };

  return {
    init: (data = {}) => {
      _this.data = data;

      _this.objects = {
      };

      _this.bindEvents();
    },
    destroy: () => {},
  };
};
