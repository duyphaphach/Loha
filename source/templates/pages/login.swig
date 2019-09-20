{% extends '../layouts/base-1.swig' %}

{% block bodyClass %}page-login{% endblock %}

{% block main %}
<div id='main'>
  <div class="container">
    <div class="row" id="main__row">
      <div class="column" id="main__row__column_1">
        <p class="title" id="main__row__column_1__title">ĐĂNG NHẬP</p>
        <div class="text" id="main__row__column_1__text">
          hoặc <a class="link" href="#" id="main__row__column_1__text__link">Đăng ký</a>
        </div>
      </div>
      <div class="column" id="main__row__column_2">
        <form action="POST" class="form" id="main__row__column_2__form">
          <div class="email" id="main__row__column_2__form__email">
              <input type="text" class="email-input" placeholder="Email" required>
              <p class="error-message" id="main__row__column_2__form__email__error_message">error message</p>
          </div>
          <div class="password" id="main__row__column_2__form__password">
              <input type="password" class="password-input" placeholder="Mật khẩu" required>
              <i class="fa fa-eye" id="main__row__column_2__form__toggle_password"></i>
              <p class="error-message" id="main__row__column_2__form__password__error_message">error message</p>
          </div>

          <div class="actions" id="main__row__column_2__form__actions">
            Ghi nhớ
            <input type="checkbox" class="checkbox" checked="checked" value="" id="main__row__column_2__form__actions__checkbox">
            <label id="main__row__column_2__form__actions__label" for="main__row__column_2__form__actions__checkbox">
            </label>
            <a href="#" class="link" id="main__row__column_2__form__actions__link">Quên mật khẩu</a>
          </div>
          <a href="#" class="submit" id="main__row__column_2__form__submit">ĐĂNG NHẬP</a>
        </form>
      </div>
    </div>
  </div>
</div>
{% endblock %}