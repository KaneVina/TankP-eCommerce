<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    /* 1. CONTAINER CHÍNH - Giữ nguyên */
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
        backdrop-filter: blur(5px); 
        -webkit-backdrop-filter: blur(5px);
        transition: opacity 0.5s ease-out; 
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

    /* 2. SPINNER - Đã đổi màu viền nền (border) */
    .spinner {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        /* Đã đổi màu viền nền từ xám sang màu xanh chủ đạo (pha loãng) */
        border: 5px solid rgba(0, 136, 204, 0.2); 
        /* Giữ nguyên màu viền quay (border-top) */
        border-top: 5px solid #0088CC;  
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

    /* 3. DOTS - Giữ nguyên màu chấm */
    .dot {
        width: 10px;
        height: 10px;
        margin: 0 5px;
        background-color: #0088CC;
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
        <span class="dot" style="--i:5;"></span> s
    </div>
</div>

<script>
    const startTime = Date.now();
    const minDisplayTime = 500; 

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