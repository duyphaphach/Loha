{% extends '../layouts/base-2.swig' %}

{% block bodyClass %}page-product-list{% endblock %}

{% block main %}
<div id='main'>
  <div class="section-1" id="main__section_1">
    <div class="container">
        <div class="row" id="main__section_1__row">
          <div class="sidebar-menu" id="main__section_1__row__sidebar_menu">
            <div class="filter-panel" id="main__section_1__row__sidebar_menu__filter_panel_1">
              <div class="title">
                <span class="text">DANH MỤC SẢN PHẨM</span>
                <i class="fa fa-angle-down"></i>
              </div>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_1__meta">
                Linh kiện tự động hóa
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_1__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_1__meta_1__label" for="main__section_1__row__sidebar_menu__filter_panel_1__meta_1__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_2">
                Linh kiện siết
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_2__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_1__meta_2__label" for="main__section_1__row__sidebar_menu__filter_panel_1__meta_2__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_3">
                Thiết bị phun cắt
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_3__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_1__meta_3__label" for="main__section_1__row__sidebar_menu__filter_panel_1__meta_3__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_4">
                Thiết bị cắt
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_4__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_1__meta_4__label" for="main__section_1__row__sidebar_menu__filter_panel_1__meta_4__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_5">
                Thiết bị thủy lực
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_5__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_1__meta_5__label" for="main__section_1__row__sidebar_menu__filter_panel_1__meta_5__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_6">
                Dụng cụ dùng điện
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_6__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_1__meta_6__label" for="main__section_1__row__sidebar_menu__filter_panel_1__meta_6__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_7">
                Thiết bị hàn
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_7__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_1__meta_7__label" for="main__section_1__row__sidebar_menu__filter_panel_1__meta_7__checkbox">
                </label>
              </a>
            </div>

            <div class="filter-panel" id="main__section_1__row__sidebar_menu__filter_panel_2">
              <div class="title">
                <span class="text">NHÀ CUNG CẤP</span>
                <i class="fa fa-angle-down"></i>
              </div>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_2__meta">
                A&D
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_2__meta_1__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_2__meta_1__label" for="main__section_1__row__sidebar_menu__filter_panel_2__meta_1__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_2__meta_2">
                MISUMI
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_2__meta_2__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_2__meta_2__label" for="main__section_1__row__sidebar_menu__filter_panel_2__meta_2__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_2__meta_3">
                NSK MICRO
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_2__meta_3__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_2__meta_3__label" for="main__section_1__row__sidebar_menu__filter_panel_2__meta_3__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_1__meta_4">
                FUJI TECH
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_2__meta_4__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_2__meta_4__label" for="main__section_1__row__sidebar_menu__filter_panel_2__meta_4__checkbox">
                </label>
              </a>
              <a class="meta" id="main__section_1__row__sidebar_menu__filter_panel_2__meta_5">
                FUKUHARA
                <input type="checkbox" class="checkbox" value="" id="main__section_1__row__sidebar_menu__filter_panel_2__meta_5__checkbox">
                <label id="main__section_1__row__sidebar_menu__filter_panel_2__meta_5__label" for="main__section_1__row__sidebar_menu__filter_panel_2__meta_5__checkbox">
                </label>
              </a>
            </div>

            <div class="filter-panel" id="main__section_1__row__sidebar_menu__filter_panel_3">
                <div class="title">
                  <span class="text">GIÁ SẢN PHẨM</span>
                  <i class="fa fa-angle-down"></i>
                </div>
                <p class="text">Vui lòng chọn khoảng giá</p>
                <div class="range-slider" id="main__section_1__row__sidebar_menu__filter_panel_3__range_slider">
                  <input type="text" id="main__section_1__row__sidebar_menu__filter_panel_3__range_slider__input" name="my_range" value="" />
                </div>
                <p class="price">Từ 50.000₫ - 4.000.000₫</p>
                <a href="#" class="button">LỌC</a>
              </div>
          </div>

    
          <div class="content" id="main__section_1__row__content">
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
</div>
{% endblock %}