

  // ACCIONES JAVASCRIPT PHP PARA FORMULARIOS EN EL SISTEMA


   // SUBMIT DEL FORMULARIO LOGIN DEL SISTEMA - frmLogin
   
  $(function(){
   
	/*$('#frmLogin').submit(function(){
          $(location).attr('href', 'entrada.asp');
    
	}); */



$("#select_0").change(function () {
	  console.log($(this).val());
      $("#select_0 option:selected").each(function () {
		//$("#cboperiodo option:selected").each(function () {
		var elegido=$(this).val();
    	$.ajax({
        async:  true, 
        data: {elegido:elegido},
        url:  './asp/producto.cargarsubestado.asp',
        type: "post",
        dataType:"html",
        success: function(data){
           	$("#cboproducto").html(data);
			$("#cboproducto").attr('disabled',false);
		}
		
	  });
	 });
	  /*producto.cargarsubestado.asp*/
 });

 
 
 
 });

 
/*
cambiar propiedad, en este caso "color".
$("button").click(function(){
  var $x = $("div");
  $x.prop("color","FF0000");
  $x.append("The color property: " + $x.prop("color"));
  $x.removeProp("color");
});

-------------------------------
dar valor a un campo <input>
$("button").click(function(){
  $("input:text").val("Glenn Quagmire");
});

*/
			
			   
																																																		 
      




  
 