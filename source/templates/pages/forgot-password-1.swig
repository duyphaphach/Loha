{% extends '../layouts/base-2.swig' %}

{% block bodyClass %}page-forgot-password-1{% endblock %}

{% block main %}
<div id='main'>
  <div class="container">
    <div class="row" id="main__row">
      <div class="column" id="main__row__column_1">
        <p class="title" id="main__row__column_1__title">QUÊN MẬT KHẨU</p>
        <div class="text" id="main__row__column_1__text">
          hoặc <a class="link" href="/sign-up.html" id="main__row__column_1__text__link">Đăng ký</a>
        </div>
      </div>
      <div class="column" id="main__row__column_2">
        <form action="POST" class="form" id="main__row__column_2__form">
          <label class="email-label" for="main__row__column_2__form__email__input">Khôi phục mật khẩu</label>
          <div class="email" id="main__row__column_2__form__email">
              <input type="text" class="email-input" placeholder="Email" id="main__row__column_2__form__email__input" required>
              <p class="error-message" id="main__row__column_2__form__email__error_message">error message</p>
          </div>
          <a href="#" type="submit" class="submit link" id="main__row__column_2__form__submit">GỬI</a>
          <a href="#" class="cancel link" id="main__row__column_2__form__cancel">Bỏ qua</a>
        </form>
      </div>
    </div>
  </div>
</div>
{% endblock %}