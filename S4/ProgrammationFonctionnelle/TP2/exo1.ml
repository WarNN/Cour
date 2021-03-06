			(*SEBILLE Florian*)
type 'a liste = vide | cons of  'a* 'a liste;;

let rec lignes = function canal ->
          try let une_ligne = input_line canal in
                cons(une_ligne, lignes canal)
          with End_of_file -> vide;;

let lire = function nom ->
       let canal = open_in nom in
          let resu = lignes canal in
               close_in canal; resu;;

let l = lire "nombre.txt";;


let rec somme_liste = function vide -> 0
                      | cons(tete,reste) -> int_of_string tete + somme_liste reste;;
