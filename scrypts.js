
function loadtabla( option, identificador, boton, tablename )
{
     k = "tabla.php?q="+option+"&ID="+identificador+"&del="+boton ;
            $(tablename).load(k);
    
}function ingreso( option,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10, tablename )
{
    alert(a2);
     k = "ingreso.php?tb="+option+"&1="+a1+"&2="+a2+"&3="+a3+"&4="+a4+"&5="+a5+"&6="+a6+"&7="+a7+"&8="+a8+"&9="+a9+"&10="+a10 ;
    alert(k); 
    echo (k);
    //$(tablename).load(k);;
    
}
function daingreso( option,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10){
switch  (option){  
        case "cliente": if (a1!=null||a2!=null||a3!=null||a4!=null||a5!=null||a6!=null||a7!=null||a8!=null){
                alert(a1);
        
                ingreso(option,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,"#table1");
            }else{alert("esto no esta bien llenado");}
        }      
}
function valida(e)
{
    tecla = (document.all) ? e.keyCode : e.which;
    if (tecla===8){
        return true;
    }
    patron =/[0-9k]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}
function carga(elRut){
        
     
    if(elRut === ""){
        alert ("debe ingresar un RUT");
        return false;
    }else{
        if(Rut (elRut)){
            
            largo = elRut.length;
            rut = elRut.substring(0, largo - 2);
            rut = rut.replace(".","");
            rut = rut.replace(".","");
            rut = rut.replace(".","");
            loadtabla ('1',rut,0,"#tableDynamic1");
            loadtabla ('2',rut,1,"#tableDynamic2");
            loadtabla ('3',rut,1,"#tableDynamic3");
            loadtabla ('4',rut,1,"#tableDynamic4");
            loadtabla ('5',rut,1,"#tableDynamic5");
            //loadtabla ('6',rut,1,"#tableDynamic6");
            //loadtabla ('7',rut,1,"#tableDynamic7");
        
        
            
            return false;
        }else{
            return false;
        }
    }    
}
function revisarDigito( dvr )
{	
	dv = dvr + ""	
	if ( dv != '0' && dv != '1' && dv != '2' && dv != '3' && dv != '4' && dv != '5' && dv != '6' && dv != '7' && dv != '8' && dv != '9' && dv != 'k'  && dv != 'K'&& dv != '-')	
	{		
		alert("Debe ingresar un digito verificador valido");		
		window.document.form1.rut.focus();		
		window.document.form1.rut.select();		
		return false;	
	}	
	return true;
}

function revisarDigito2( crut )
{	
		//alert("revisando digito2")
	largo = crut.length;	
	if ( largo < 2 )	
	{		
		alert("Debe ingresar el rut completo")		;
		window.document.form1.rut.focus();		
		window.document.form1.rut.select();		
		return false;	
	}
		//alert("largo>2")	
	if ( largo > 2 ){		
		rut = crut.substring(0, largo - 1);	
            }else{		
		rut = crut.charAt(0);
            }
	dv = crut.charAt(largo-1);	
	revisarDigito( dv );	

		//("revisando que nada sea null")
	if ( rut == null || dv == null ){
		return 0;	
        }    
	var dvr = '0'	
	suma = 0	
	mul  = 2	

	for (i= rut.length -1 ; i >= 0; i--)	
	{	
		suma = suma + rut.charAt(i) * mul		
		if (mul == 7)			
			mul = 2		
		else    			
			mul++	
	}	
	res = suma % 11	
	if (res==1){		
		dvr = 'k'	
            }if (res==0){		
		dvr = '0'	
            }else	
	{		
		dvi = 11-res		
		dvr = dvi + ""	
	}
        
		//alert("revisando digito verificador")
	if ( dvr != dv.toLowerCase() )	
	{		
                alert("EL rut es incorrecto")		
		window.document.form1.rut.focus();		
		window.document.form1.rut.select();		
		return false	
	}

	return true
        
		alert("EL rut es Correcto")	
}

function Rut(texto)
{	

	var tmpstr = "";	
	for ( i=0; i < texto.length ; i++ )		
		if ( texto.charAt(i) != ' ' && texto.charAt(i) != '.' && texto.charAt(i) != '-' )
			tmpstr = tmpstr + texto.charAt(i);	
	texto = tmpstr;	
	largo = texto.length;	

	if ( largo < 2 )	
	{		
		alert("Debe ingresar el rut completo")		
		window.document.form1.rut.focus();		
		window.document.form1.rut.select();		
		return false;	
	}	

	for (i=0; i < largo ; i++ )	
	{			
		if ( texto.charAt(i) !="0" && texto.charAt(i) != "1" && texto.charAt(i) !="2" && texto.charAt(i) != "3" && texto.charAt(i) != "4" && texto.charAt(i) !="5" && texto.charAt(i) != "6" && texto.charAt(i) != "7" && texto.charAt(i) !="8" && texto.charAt(i) != "9" && texto.charAt(i) !="k"  )
 		{			
			alert("El valor ingresado no corresponde a un R.U.T valido");			
			window.document.form1.rut.focus();			
			window.document.form1.rut.select();			
			return false;		
		}	
	}	

	var invertido = "";		
	for ( i=(largo-1),j=0; i>=0; i--,j++ )		
		invertido = invertido + texto.charAt(i);	
	var dtexto = "";	
	dtexto = dtexto + invertido.charAt(0);	
	dtexto = dtexto + '-';	
	cnt = 0;	

	for ( i=1,j=2; i<largo; i++,j++ )	
	{		
		//alert("i=[" + i + "] j=[" + j +"]" );		
		if ( cnt == 3 )		
		{			
			dtexto = dtexto + '.';			
			j++;			
			dtexto = dtexto + invertido.charAt(i);			
			cnt = 1;		
		}		
		else		
		{				
			dtexto = dtexto + invertido.charAt(i);			
			cnt++;		
		}	
	}	

	invertido = "";	
	for ( i=(dtexto.length-1),j=0; i>=0; i--,j++ )		
		invertido = invertido + dtexto.charAt(i);	

	window.document.form1.rut.value = invertido.toUpperCase()		

		//alert("revisando")
	if ( revisarDigito2(texto) ){	
		//alert("verdadero")	
		return true;	
                }
	return false;
}
function popup(url) { 
open(url,'','top=300,left=300,width=300,height=300,location = no') ; 
} 
//$("#tableDynamic").load("tabla.php?q="+option+"&rut="+identificador);
    //$("#tableDynamic").load("tabla.php?q=1&rut=14711939-9");