// Copyright (C) 2020 - UES - Andrea Melissa Monterrosa Morales
//
// Materia: MEP115           Carnet: MM18057
//
// Date of creation: Aug 26, 2020
//
// Prints " Head " or " Tail " depending on the simulation .
// Returns 1 for " Head " , 0 for " Tail "
function face = tossacoin ( )
face = floor ( 2 * rand () );
if ( face == 1 ) then
mprintf ( " Head \n" )
else
mprintf ( " Tail \n" )
end
endfunction
