{% extends '../layouts/base-2.swig' %}

{% block bodyClass %}page-product-list{% endblock %}

{% block main %}
<div id='main'>
  <div class="container">
    <div id="main__banner" class="banner">
      <img class="banner-image" src='../../assets/images/pages/product-list/banner.png' alt="" class="src">
    </div>
    <div id="breadcrumb">
      <div class="container">
        <ul class="list">
          <li class="item"><a href="#">Trang chủ</a></li>
          <li class="item"><a href="#">Sản phẩm</a></li>
          <li class="item active">Lọc sản phẩm</li>
        </ul>
      </div>
    </div>
    <div class="row" id="main__row">
      {% include '../modules/filter-panel.swig' %}
      <div class="content" id="main__row__content">
        <div class="section-1">
          <span class="filter-result">
              Hiển thị: 1 - 9 trong tổng số 140 sản phẩm
          </span>
          <div class="sort-box">
            <a class="button dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
              Bán chạy nhất
              <span class="caret"></span>
            </a>
            <ul class="menu dropdown-menu" aria-labelledby="dropdownMenu1">
              <li><a href="#">Đặt mua nhiều</a></li>
              <li><a href="#">Bán chạy nhất</a></li>
              <li><a href="#">Tên từ A->Z</a></li>
              <li><a href="#">Tên từ Z->A</a></li>
              <li><a href="#">Giá rẻ nhất</a></li>
              <li><a href="#">Giá cao nhất</a></li>
            </ul>
          </div>
        </div>
        <div class="section-2">
          {% for i in [0,1,2,3] %}
          {% include '../modules/product-list.swig' %}
          {% endfor %}
        </div>
        <div class="section-3">
          {% include '../modules/pagination.swig' %}
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}