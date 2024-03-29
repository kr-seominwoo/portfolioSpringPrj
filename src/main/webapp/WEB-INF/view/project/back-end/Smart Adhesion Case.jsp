<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
   <h2><strong>${project.title}</strong></h2>
</div>
<div class="project-box">        
    <div class="project-img" >
        <p class="controller">
            <!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 --> 
            <span class="prev">&lang;</span> 
        </p>
        <img class="animate-box" data-animate-effect="fadeInLeft" id="project-img" name="1" max="7" src="images/img-1.jpg" />
        <p class="controller">
        <!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 --> 
        <span class="next">&rang;</span>
        </p>
        
    </div>
    <div class="project-discript animate-box" data-animate-effect="fadeInRight">
        ${project.content}
<!--         <p> <strong># 프로젝트 요약</strong> <br>
            나도 전자 제품을 잘 사고 팔고 싶어! 그런데 전제 제품을 잘 알지 못하는 나는 어떻게 해야만 잘 거래할 수 있을까?<br>
            Rev:it은 현재 존재하는 다양한 리셀 플랫폼에서, 전자 제품 중고 거래에서 발생하는 다양한 불편한 점들을 파악하여 이를 개선시키기 위한 솔루션으로 기획된 IT 전용 리셀 플랫폼입니다.<br>
                
            Rev:it의 목표는 다음과 같습니다.<br>
            - 구매 및 판매가 간단하고 쉬워야한다.<br>
            - IT에 대해 잘 모르는 사람도 빠르게 정보를 확인하고 합리적인 가격에 거래가 이루어질 수 있어야 한다.<br>
            <br>
            # 기술 스택<br>
            Next.js / Flutter / Flask / uWsgi / NginX / MongoDB / AWS ECR, EC2, S3, CF, API GATEWAY / Github Action (CI / CD) / Docker<br>
            <br>
            # 팀원<br>
            백엔드 2명 / 프론트 3명 / 디자이너 1명<br>
            저는 본 프로젝트에서, 백엔드 포지션으로 전체적인 시스템 설계 및 구현을 담당하고 있습니다.<br>
            <br>
            # 후기<br>
            이번 프로젝트는, DevOps를 처음으로 시도하는 프로젝트인 만큼 기대가 큽니다!<br>
            좋은 후기로 곧 만나 뵙겠습니다. 👋🏻</p><br>
        <div class="project-footer">  
            <strong>Share</strong>          
            <a href="https://github.com/TotheMoon12"><i class="fa-brands fa-github"></i></a>
        </div> -->
    </div>
    <button class="close-button"onclick="closeOverlay()"> X </button>
</div>
<!-- slide -->
<script src="js/slider.js"></script>