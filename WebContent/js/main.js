    //------------------------------- adver 시작 -----------------------
	function moveSlider(index){
        // 이미지 슬라이더 이동
        var willMoveLeft = -(index * 250);
        $('.slider_panel').animate({left:willMoveLeft}, 'normal');
        
        // control_button에 active 클래스 부여 및 제거
        $('.control_button[data-index='+index+']').addClass('active');
        $('.control_button[data-index!='+index+']').removeClass('active');
    };
    
    $(document).ready(function(){ 
        $('.control_button').each(function(index){
            $(this).attr('data-index', index);
        }).click(function(){
            var index = $(this).attr('data-index');
            moveSlider(index);
        });
    });  
    //------------------------------- adver 끝 -----------------------
    
