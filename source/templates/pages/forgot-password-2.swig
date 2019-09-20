{% extends '../layouts/base-2.swig' %}

{% block bodyClass %}page-forgot-password-2{% endblock %}

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
        <i class="fa fa-envelope"></i>
        <div class="content">
          <p class="text">Chúng tôi đã gửi thư khôi phục mật khẩu đến email</p>
          <p class="text">dokhanhhung95@gmail.com.</p>
          <p class="text">Bạn vui lòng kiểm tra, thực hiện theo hướng dẫn và đăng nhập lại!</p> 
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}