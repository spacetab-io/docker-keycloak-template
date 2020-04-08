const showCodeLink = document.querySelector('.js-show-qr-code');
const showImageLink = document.querySelector('.js-show-qr-image');
const closeCopy = document.querySelector('.js-close-copy');
const closeModal = document.querySelector('.js-close-qr-modal');
const codeInput = document.querySelector('.js-qr-code-input');
const codeCopy = document.querySelector('.js-qr-hash');
const imageCont = document.querySelector('.js-image-cont');
const codeCont = document.querySelector('.js-code-cont');
const qrModal = document.querySelector('.js-qr-modal');
const copyModal = document.querySelector('.js-copy-modal');

function isMobile() {
    return document.body.clientWidth <= 540;
}

codeCopy.addEventListener('click', function () {
    codeInput.select();
    codeInput.setSelectionRange(0, 99999);
    document.execCommand('copy');
    codeInput.setSelectionRange(0, 0);
    copyModal.style.display = 'flex';
});

closeCopy.addEventListener('click', function () {
    copyModal.style.display = 'none';
});

closeModal.addEventListener('click', function () {
    qrModal.style.display = 'none';
});

showCodeLink.addEventListener('click', function () {
    imageCont.style.display = 'none';
    codeCont.style.display = 'block';
});

showImageLink.addEventListener('click', function () {
    if (isMobile()) {
        qrModal.style.display = 'flex';
    } else {
        codeCont.style.display = 'none';
        imageCont.style.display = 'block';
    }
});
