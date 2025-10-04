<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .custom-loader-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(255, 255, 255, 0.9);
        z-index: 9999;
    }

    .logo-spinner {
        position: relative;
        width: 150px;
        height: 150px;
        margin-bottom: 20px;
    }

    .logo {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 80px;
        height: 80px;
        object-fit: contain;
        z-index: 2;
    }

    .spinner {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border: 5px solid rgba(173, 173, 173, 0.2);
        border-top: 5px solid #6c757d; 
        border-radius: 50%;
        animation: spin 1.2s linear infinite;
        z-index: 1;
    }

    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }

    .dot-loading {
        display: flex;
        justify-content: center;
        padding-top: 10px;
    }

    .dot {
        width: 10px;
        height: 10px;
        margin: 0 5px;
        background-color: #6c757d;
        border-radius: 50%;
        opacity: 0;
        animation: bounce 1.2s infinite ease-in-out;
        animation-delay: calc(0.1s * var(--i));
    }

    @keyframes bounce {
        0%, 100% { 
            transform: scale(0);
            opacity: 0;
        }
        50% { 
            transform: scale(1);
            opacity: 1;
        }
    }
</style>

<div class="custom-loader-container" id="customLoader">
    <div class="logo-spinner">
        <div class="spinner"></div>
        <img src="${pageContext.request.contextPath}/assets/images/logo/logoLoading.png" alt="Loading Logo" class="logo">
    </div>

    <div class="dot-loading">
        <span class="dot" style="--i:1;"></span>
        <span class="dot" style="--i:2;"></span>
        <span class="dot" style="--i:3;"></span>
        <span class="dot" style="--i:4;"></span>
        <span class="dot" style="--i:5;"></span> </div>
</div>

<script>
    const startTime = Date.now();
    const minDisplayTime = 500; // Đã đổi thành 500ms (0.5 giây)

    window.addEventListener('load', function() {
        const loader = document.getElementById('customLoader');
        if (loader) {
            const elapsedTime = Date.now() - startTime;
            const remainingTime = minDisplayTime - elapsedTime;

            if (remainingTime > 0) {
                setTimeout(function() {
                    loader.style.opacity = '0';
                    setTimeout(() => { loader.style.display = 'none'; }, 500);
                }, remainingTime);
            } else {
                loader.style.opacity = '0';
                setTimeout(() => { loader.style.display = 'none'; }, 500);
            }
        }
    });
</script>