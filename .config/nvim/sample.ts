let firstname: string = "Ondřej";
let surname: string = "Tuček";

function greet(fullname: string) {
	console.log(`Hello ${fullname}`);
}

greet(firstname + surname);

/*
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
 * */
