open List;;
type expr = T | F | O of expr*expr | A of expr*expr | N of expr | I of expr*expr | D of expr*expr | V of string;;
(*
T: True
F: False
A: And
O: Or
N: Not
I: Implication
D: Double Implication
V: Variable
*)

let get l f= 
	(* 
		return l[i] where f(i, l[i]) is true in index of list. ( Do it once)
	 *)
	let rec get_help l f i= 
		if l == [] then 
			(hd l) (* We need to Match the type :p *)
		else if (f i (hd l)) then 
			(hd l)
		else 
			(get_help (tl l) f (i+1))
	in
		get_help l f 0;;

let geti l i = get l (function x -> function y -> x==i);;

let set l f e = map (function x -> ) l;
	(* 
		l[i] = e where f(i, l[i]) is true for all index of list. ( Do it once)
	 *)
	let rec set_help l f i e= 
		if l == [] then 
			l
		else if (f i (hd l)) then 
			e::(tl l)
		else 
			hd(l)::(set_help (tl l) f (i+1) e)
	in
		set_help l f 0 e;;

let seti l i e  = set l (function x -> function y -> x==i) e;;
(* Do:	l[i] = e
	return updated list
 *)

(* let addchild tree nodeid e = let treelen = length tree in let tree = (treelen, [], "", e)::tree in set tree (function x (_, clist, _, _)->  ) 
 *)


let a = A ( I( V "x1", V "x2"), O( V "x1", V "x3" ) );;


let tree = addchild [(0, [], "", F)] a;;
(* 
	Node ID, Child (id of child node) List, Var name, Expression
 *)





(* let fv e = match e with
	 *)