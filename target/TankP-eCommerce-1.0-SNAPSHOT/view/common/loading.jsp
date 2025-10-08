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

    /* 2. SPINNER - Chuyển sang màu đen, màu chạy là #0088CC */
    .spinner {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border: 5px solid rgba(0, 0, 0, 0.1); 
        border-top: 5px solid #000000;  
        border-radius: 50%;
        animation: spin 1.2s linear infinite, spinner-color 1.2s ease-in-out infinite; 
        z-index: 1;
    }

    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }
    
    /* Animation chuyển màu cho vòng tròn */
    @keyframes spinner-color {
        0% { border-top-color: #000000; }
        50% { border-top-color: #0088CC; } 
        100% { border-top-color: #000000; }
    }

    .dot-loading {
        display: flex;
        justify-content: center;
        padding-top: 10px;
    }

    /* 3. DOTS - Màu tĩnh đen, màu chạy là #0088CC */
    .dot {
        width: 10px;
        height: 10px;
        margin: 0 5px;
        background-color: #000000; 
        border-radius: 50%;
        opacity: 0;
        animation: bounce 1.2s infinite ease-in-out, dot-color 1.2s infinite ease-in-out; 
        animation-delay: calc(0.1s * var(--i)); 
    }

    /* Animation chuyển màu cho các chấm */
    @keyframes dot-color {
        0%, 100% { background-color: #000000; }
        50% { background-color: #0088CC; }
    }

    @keyframes bounce {
        0%, 100% { 
            transform: scale(0);
            opacity: 0.5;
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
        <img src="${pageContext.request.contextPath}/assets/images/logo/logoload.png" alt="Loading Logo" class="logo">
    </div>

    <div class="dot-loading">
        <span class="dot" style="--i:1;"></span>
        <span class="dot" style="--i:2;"></span>
        <span class="dot" style="--i:3;"></span>
        <span class="dot" style="--i:4;"></span>
        <span class="dot" style="--i:5;"></span> 
    </div>
</div>

<script>
    const startTime = Date.now();
    const minDisplayTime = 800; 

    window.addEventListener('load', function() {
        const loader = document.getElementById('customLoader');
        if (loader) {
            const elapsedTime = Date.now() - startTime;
            const remainingTime = minDisplayTime - elapsedTime;

            if (remainingTime > 0) {
                setTimeout(function() {
                    loader.style.opacity = '0';
                    setTimeout(() => { loader.style.display = 'none'; }, 800);
                }, remainingTime);
            } else {
                loader.style.opacity = '0';
                setTimeout(() => { loader.style.display = 'none'; }, 800);
            }
        }
    });
</script>