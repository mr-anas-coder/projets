function somme()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);
  
    document.getElementById("resultat").value=c;
}

function soustraction()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);
  
    document.getElementById("resultat").value=c;
}

function multiplication()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);
  
    document.getElementById("resultat").value=c;
}

function division()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);
  
    document.getElementById("resultat").value=c;
}

function parite()
{
    var x = document.getElementById("t1").value
	if (x % 2 ==0){
    	document.getElementById("parite").value = " Paire "
	}
	else{
    	document.getElementById("parite").value = " Impaire "
	}
}

function permuter() {
    let n1 = document.getElementById("t1").value;
    let n2 = document.getElementById("t2").value;

    let temp;

    temp = n1;
    n1 = n2;
    n2 = temp;

    document.getElementById("t1").value = n1;
    document.getElementById("t2").value = n2;
}


function effacer() { 
    document.getElementById("t1").value = ""; 
    document.getElementById("t2").value = ""; 
    document.getElementById("resultat").value = "";
} 