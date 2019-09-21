{% extends '../layouts/base-2.swig' %}

{% block bodyClass %}page-signup{% endblock %}

{% block main %}
<div id='main'>
  <div class="container">
    <div class="row" id="main__row">
      <div class="column" id="main__row__column_1">
        <p class="title" id="main__row__column_1__title">ĐĂNG KÝ</p>
        <div class="text" id="main__row__column_1__text">
          hoặc <a class="link" href="#" id="main__row__column_1__text__link">Đăng nhập</a>
        </div>
      </div>
      <div class="column" id="main__row__column_2">
        <form action="POST" class="form" id="main__row__column_2__form">
          <div class="username" id="main__row__column_2__form__username">
              <input type="text" class="username-input" placeholder="Họ">
              <input type="text" class="username-input" placeholder="Tên">
              <p class="error-message" id="main__row__column_2__form__username__error_message">error message</p>
          </div>
          <div class="email" id="main__row__column_2__form__email">
              <input type="text" class="email-input" placeholder="Email" required>
              <p class="error-message" id="main__row__column_2__form__email__error_message">error message</p>
          </div>
          <div class="password" id="main__row__column_2__form__password">
              <input type="password" class="password-input" placeholder="Mật khẩu" required>
              <i class="fa fa-eye" id="main__row__column_2__form__toggle_password"></i>
              <p class="error-message" id="main__row__column_2__form__password__error_message">error message</p>
          </div>
          <a href="#" class="submit" id="main__row__column_2__form__submit">ĐĂNG KÝ</a>
          <p class="policy" id="main__row__column_2__form__policy">Bằng việc bấm vào nút đăng ký, tôi đồng ý với chính sách của cửa hàng.</p>
        </form>
      </div>
    </div>
  </div>
</div>
{% endblock %}