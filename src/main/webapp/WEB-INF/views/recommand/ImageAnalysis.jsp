<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	</div>
</header>
<style>
	/* 광고 영역 */
	.ad_one, .ad_two{
		background-color:red;
		width: 188.5px;
		height:377px;
		display: inline-block;
		position: fixed;
		top:150px;
		background-size: cover;
		background-position: center;
		background-image: url("<%=request.getContextPath()%>/resources/account/ad_1.PNG");
		animation: ad_one_ani 16s infinite;
	}
	.ad_one{
		left:30px;
	}
	.ad_two{
		right:30px;
	}
	@keyframes ad_one_ani {
		33%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_2.PNG")}
		66%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_3.PNG")}
		100%{background-image: url("<%=request.getContextPath()%>/resources/account/ad_1.PNG")}
	}
	
	.containerAnalysis{
		margin-left:60px;
		width:80%;
		height:1000px;
	}
	#actorInfo{
		background-color:red;
		width:50%;
		margin:auto;
	}
	#preview_image{
		display:block;
		margin:auto;
	}
	#test_image{
		margin:auto;
	}
	#btnCheck{
		display:inline-block;
	}
	.btnWrap{
		text-align: center;
	}
</style>

<!-- 광고 1 -->
<div class="ad_one">
	
</div>

<div class="container">
	<h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">이미지 분석 test 페이지</h1>
	<hr class="col-md-12" style="width:900px;margin-left:50px;"/>
	
   <div class="containerAnalysis">
	    <h1 style="margin:10px;font-family: 'Jua', sans-serif;margin-left:50px;color:#BEBEBE;">필모그라피가 궁금한 배우의 사진을 넣어주세요.</h1>
	    
	    
		<img id="preview_image" src="#"/>
		<input type="file" id="test_image" accept=".png,.jpg,.jpeg" multiple/>
		<div class="btnWrap">
			<button class="btn btn-warning" id="btnCheck" type="button" onclick="predict()">확인하기</button>
		</div>
		<h3 id="actorInfo"></h3>

		
		<!-- <div id="webcam-container"></div> -->
		<div id="label-container"></div>
		<!-- 
		<form action="http://192.168.0.41:10000/upload" method="post" enctype="multipart/form-data">
			제목 : <input type="text" name="title">
			이름 : <input type="text" name="name">
			파일이름 : <input type="file" name="upload">
		</form>
   		 -->
   </div>
</div>

<!-- 광고 2 -->
<div class="ad_two">
	
</div>



	<!-- JQuery CDN 추가 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@0.8/dist/teachablemachine-image.min.js"></script>
	<script type="text/javascript">
	    const URL = "./my_model/";

	    let model, webcam, labelContainer, maxPredictions;
	    
	    async function init() {
	        const modelURL = URL + "model.json";
	        const metadataURL = URL + "metadata.json";
	        model = await tmImage.load(modelURL, metadataURL);
	        console.log('모델 타입:',typeof(model))
	        maxPredictions = model.getTotalClasses();
	        console.log('클래스 수:',maxPredictions)
			
	        /*
	        // Convenience function to setup a webcam
	        const flip = true; // whether to flip the webcam
	        webcam = new tmImage.Webcam(200, 200, flip); // width, height, flip
	        await webcam.setup(); // request access to the webcam
	        await webcam.play();
	        window.requestAnimationFrame(loop);
	
	        // append elements to the DOM
	        document.getElementById("webcam-container").appendChild(webcam.canvas);
	        */
	        
	        labelContainer = document.getElementById("label-container");
	        for (let i = 0; i < maxPredictions; i++) { // and class labels
	            labelContainer.appendChild(document.createElement("div"));
	        }
	    }
		
	    
	    /*
	    async function loop() {
	        webcam.update(); // update the webcam frame
	        await predict();
	        window.requestAnimationFrame(loop);
	    }
		*/
		
	    // run the webcam image through the image model
	    async function predict() {
	        // predict can take in an image, video or canvas html element
	        //const prediction = await model.predict(webcam.canvas);
	        var image = document.getElementById('preview_image');
	        var prediction = await model.predict(image,false);
	        console.log('prediction',prediction);
	        
	      	//값추출을 위한 변수
        	var actorName = "";
        	var maxPercentage = 0;
	        
	        for (let i = 0; i < maxPredictions; i++) {
	        	
	        	//값추출을 위한 조건
	        	if(prediction[i].probability.toFixed(2)*100 > maxPercentage){
	        		maxPercentage = prediction[i].probability.toFixed(2)*100;
	        		actorName = prediction[i].className;
	        	}
	        	
	            const classPrediction =
	                prediction[i].className + ": " + prediction[i].probability.toFixed(2)*100+'%';
	            labelContainer.childNodes[i].innerHTML = classPrediction;
	        }
	        
	        console.log(maxPercentage + "의 확률로 " + actorName + "(으)로 확인되었습니다.");
	        //view에 뿌리기
	        actorInfo = document.getElementById("actorInfo");
	        actorInfo.innerHTML = maxPercentage + "의 확률로 " + actorName + "(으)로 확인되었습니다.";
	    }
		
		//페이지 로드시 모델 로드
	    init();
	    function previewImage(input){
	    	if(input.files && input.files[0]){
	    		console.log('input.files',input.files);
	    		console.log('input.files[0]',input.files[0]);
	    		
	    		var reader = new FileReader();
	    		//console.log(reader.readAsText(input.files[0],'UTF-8'));
	    		reader.readAsDataURL(input.files[0]); //이미지 파일을 URL로 읽기
	    		reader.onload = function(e){
	    			//읽기 동작이 완료 됐을 때 실행됨
	    			console.log('e.target:',e.target); //FileReader객체
	    			console.log('e.target.result:',e.target.result); //읽은 파일 내용 url
	    			$('#preview_image').prop("src",e.target.result); //미리보기 구현
	    		}
	    	}
	    }
	    
	    //이미지를 선택했을 때 위의 이미지 미리보기 함수 호출
	    $('#test_image').on('change',function(){
	    	previewImage(this);
	    })
	    
	</script>
