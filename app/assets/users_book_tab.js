$(function(){
  let tabs = $(".book-menu-tab");
  $(".book-menu-tab").on("click", function(){
    $(".active").removeClass("active");
    $(this).addClass("active");
    const index = tabs.index(this);
    $(".user-books-area").removeClass("show").eq(index).addClass("show");
  )
})
})