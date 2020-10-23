window.$ = $
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
// rails-ujsとは、Railsが提供するJavaScriptヘルパー
require("@rails/ujs").start()
// turbolinksは、ページ遷移をAjax化して高速に読み込む為の仕組み
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')
require('javascripts/users_book_tab.js')
require('app/views/likes/create.js.erb')
require('app/views/likes/destoy.js.erb')

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
