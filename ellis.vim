let g:airline#themes#ellis#palette = {}

let s:N1 = [ '#ffffff' , '#4b616e' , 255 , 27  ]
let s:N2 = [ '#ffffff' , '#424b59' , 18  , 45  ]
let s:N3 = [ '#ffffff' , '#383544' , 27  , 59  ]
let g:airline#themes#ellis#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)


let s:I1 = [ '#ffffff' , '#993a3e' , 255 , 29  ]
let s:I2 = [ '#ffffff' , '#bd5157' , 22  , 42  ]
let s:I3 = [ '#DAA169' , '#383544' , 23  , 156 ]
let g:airline#themes#ellis#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)



let s:V1 = [ '#ffffff' , '#4b616e' , 255 , 202 ]
let s:V2 = [ '#ffffff' , '#ffffff' , 52  , 214 ]
let s:V3 = [ '#ffffff' , '#ffffff' , 166 , 228 ]
let g:airline#themes#ellis#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)


let s:IA1 = [ '#8f8191' , '#4b616e' , 242 , 249 , '' ]
let s:IA2 = [ '#8f8191' , '#424b59' , 245 , 252 , '' ]
let s:IA3 = [ '#8f8191' , '#393544' , 248 , 255 , '' ]
let g:airline#themes#ellis#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

let s:WI = [ '#282c34', '#999999', 255, 255 ]
let g:airline#themes#ellis#palette.normal.airline_warning = [ s:WI[0], s:WI[1], s:WI[2], s:WI[3] ]
