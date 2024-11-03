/**
 * 
 */
function toggleMenu() {
    const menu = document.getElementById('sideMenu');
    menu.style.display = menu.style.display === 'flex' ? 'none' : 'flex';
}

window.onclick = function(event) {
    const menu = document.getElementById('sideMenu');
    const menuIcon = document.querySelector('.menu-icon');
    
    if (event.target !== menu && event.target !== menuIcon) {
        menu.style.display = 'none';
    }
};

const menuItems = document.querySelectorAll('.menu-item');
menuItems.forEach(item => {
    item.addEventListener('click', () => {
        document.getElementById('sideMenu').style.display = 'none';
    });
});
