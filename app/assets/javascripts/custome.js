$(document).ready(function() {
	$("#exam_id").on('change', function(){
	  var exam_id = $("#exam_id").val();
	  var subject_id = $("#subject_id");
	  $.ajax({
	    type: 'get',
	    data: {id: this.value, exam_id: exam_id },
	    url: "/exams/get_subject",
	    dataType: 'json',
	    success: function(data){
	      subject_id.empty();
	      subject_id.attr("disabled", false);
	      if(data.length != 0){
	        var list = '';
	        for (var j = 0; j < data.length; j++){
	          list += "<option value='" + data[j].id + "'>" + data[j].subject_name + "</option>";
	        }
	        subject_id.html(list);
	      }else{
	        subject_id.empty().append('<option value=""> -No project to list- </option>');
	      }
	    },
	  });
	});

	$("#subject_id").on('change', function(){
	  var subject_id = $("#subject_id").val();
	  var chapter_id = $("#chapter_id");
	  $.ajax({
	    type: 'get',
	    data: {id: this.value, subject_id: subject_id },
	    url: "/exams/get_chapter",
	    dataType: 'json',
	    success: function(data){
	      chapter_id.empty();
	      chapter_id.attr("disabled", false);
	      if(data.length != 0){
	        var list = '';
	        for (var j = 0; j < data.length; j++){
	          list += "<option value='" + data[j].id + "'>" + data[j].chapter_name + "</option>";
	        }
	        chapter_id.html(list);
	      }else{
	        chapter_id.empty().append('<option value=""> -No project to list- </option>');
	      }
	    },
	  });
	});
});