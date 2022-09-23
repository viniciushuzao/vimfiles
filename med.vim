" biblioteca com calculos medicos
" 202209191117
"
"call Finclude("io.vim")

function FcalcImc() "nao esta funcionando
	let peso = Finput('Peso: ')
	let altura = Finput('Altura: ')
	let imc = peso / altura * altura
    call append(0, imc)
endfunction
