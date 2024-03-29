<%@page import="com.portfolio.web.entity.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
   <h2><strong id="title">${project.title}</strong></h2>
</div>
<div class="project-box">        
    <div class="project-img" >
    	<span id="project-images" style="display:none;" >${project.images}</span>
        <p class="controller">
            <!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 --> 
            <span class="prev">&lang;</span> 
        </p>
        <img class="animate-box" data-animate-effect="fadeInLeft" category="${project.category}" id="project-img" name="1" max="7" src="${firstImage}" />
        <p class="controller">
        <!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 --> 
        <span class="next">&rang;</span>
        </p>
        
    </div>
    <div class="project-discript animate-box" data-animate-effect="fadeInRight">
        ${project.content}
    </div>
    <button class="close-button"onclick="closeOverlay()"> X </button>
</div>
<!-- slide -->
<script src="js/slider.js"></script>