// Mobile navigation: slide the off-canvas menu in and out.
// Below 992px, .navbar-collapse sits off-screen (see _hugo-ror.scss);
// shifting `right` by 300px brings it into view.
document.addEventListener('DOMContentLoaded', function () {
  var menu = document.querySelector('.navbar-collapse')
  if (!menu) return

  document.querySelectorAll('.navbar-toggler').forEach(function (toggler) {
    toggler.addEventListener('click', function () {
      var open = getComputedStyle(menu).right !== '300px'
      menu.style.right = open ? '300px' : '0'
      toggler.setAttribute('aria-expanded', String(open))
    })
  })
})
