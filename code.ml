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


let get_1_0 (a0) = a0;;
let get_2_0 (a0, a1) = a0;;
let get_2_1 (a0, a1) = a1;;
let get_3_0 (a0, a1, a2) = a0;;
let get_3_1 (a0, a1, a2) = a1;;
let get_3_2 (a0, a1, a2) = a2;;
let get_4_0 (a0, a1, a2, a3) = a0;;
let get_4_1 (a0, a1, a2, a3) = a1;;
let get_4_2 (a0, a1, a2, a3) = a2;;
let get_4_3 (a0, a1, a2, a3) = a3;;
let get_5_0 (a0, a1, a2, a3, a4) = a0;;
let get_5_1 (a0, a1, a2, a3, a4) = a1;;
let get_5_2 (a0, a1, a2, a3, a4) = a2;;
let get_5_3 (a0, a1, a2, a3, a4) = a3;;
let get_5_4 (a0, a1, a2, a3, a4) = a4;;
let get_6_0 (a0, a1, a2, a3, a4, a5) = a0;;
let get_6_1 (a0, a1, a2, a3, a4, a5) = a1;;
let get_6_2 (a0, a1, a2, a3, a4, a5) = a2;;
let get_6_3 (a0, a1, a2, a3, a4, a5) = a3;;
let get_6_4 (a0, a1, a2, a3, a4, a5) = a4;;
let get_6_5 (a0, a1, a2, a3, a4, a5) = a5;;
let get_7_0 (a0, a1, a2, a3, a4, a5, a6) = a0;;
let get_7_1 (a0, a1, a2, a3, a4, a5, a6) = a1;;
let get_7_2 (a0, a1, a2, a3, a4, a5, a6) = a2;;
let get_7_3 (a0, a1, a2, a3, a4, a5, a6) = a3;;
let get_7_4 (a0, a1, a2, a3, a4, a5, a6) = a4;;
let get_7_5 (a0, a1, a2, a3, a4, a5, a6) = a5;;
let get_7_6 (a0, a1, a2, a3, a4, a5, a6) = a6;;
let get_8_0 (a0, a1, a2, a3, a4, a5, a6, a7) = a0;;
let get_8_1 (a0, a1, a2, a3, a4, a5, a6, a7) = a1;;
let get_8_2 (a0, a1, a2, a3, a4, a5, a6, a7) = a2;;
let get_8_3 (a0, a1, a2, a3, a4, a5, a6, a7) = a3;;
let get_8_4 (a0, a1, a2, a3, a4, a5, a6, a7) = a4;;
let get_8_5 (a0, a1, a2, a3, a4, a5, a6, a7) = a5;;
let get_8_6 (a0, a1, a2, a3, a4, a5, a6, a7) = a6;;
let get_8_7 (a0, a1, a2, a3, a4, a5, a6, a7) = a7;;
let get_9_0 (a0, a1, a2, a3, a4, a5, a6, a7, a8) = a0;;
let get_9_1 (a0, a1, a2, a3, a4, a5, a6, a7, a8) = a1;;
let get_9_2 (a0, a1, a2, a3, a4, a5, a6, a7, a8) = a2;;
let get_9_3 (a0, a1, a2, a3, a4, a5, a6, a7, a8) = a3;;
let get_9_4 (a0, a1, a2, a3, a4, a5, a6, a7, a8) = a4;;
let get_9_5 (a0, a1, a2, a3, a4, a5, a6, a7, a8) = a5;;
let get_9_6 (a0, a1, a2, a3, a4, a5, a6, a7, a8) = a6;;
let get_9_7 (a0, a1, a2, a3, a4, a5, a6, a7, a8) = a7;;
let get_9_8 (a0, a1, a2, a3, a4, a5, a6, a7, a8) = a8;;

(*
python:
print "".join( map(lambda j: "".join(map(lambda i: "let get_{2}_{1} ({0}) = a{1};;\n".format(", ".join(map(lambda x:'a'+str(x), range(j)) ), i, j ), range(j))), range(10)));
*)


let set_1_0 (a0) e = (e);;
let set_2_0 (a0, a1) e = (e, a1);;
let set_2_1 (a0, a1) e = (a0, e);;
let set_3_0 (a0, a1, a2) e = (e, a1, a2);;
let set_3_1 (a0, a1, a2) e = (a0, e, a2);;
let set_3_2 (a0, a1, a2) e = (a0, a1, e);;
let set_4_0 (a0, a1, a2, a3) e = (e, a1, a2, a3);;
let set_4_1 (a0, a1, a2, a3) e = (a0, e, a2, a3);;
let set_4_2 (a0, a1, a2, a3) e = (a0, a1, e, a3);;
let set_4_3 (a0, a1, a2, a3) e = (a0, a1, a2, e);;
let set_5_0 (a0, a1, a2, a3, a4) e = (e, a1, a2, a3, a4);;
let set_5_1 (a0, a1, a2, a3, a4) e = (a0, e, a2, a3, a4);;
let set_5_2 (a0, a1, a2, a3, a4) e = (a0, a1, e, a3, a4);;
let set_5_3 (a0, a1, a2, a3, a4) e = (a0, a1, a2, e, a4);;
let set_5_4 (a0, a1, a2, a3, a4) e = (a0, a1, a2, a3, e);;
let set_6_0 (a0, a1, a2, a3, a4, a5) e = (e, a1, a2, a3, a4, a5);;
let set_6_1 (a0, a1, a2, a3, a4, a5) e = (a0, e, a2, a3, a4, a5);;
let set_6_2 (a0, a1, a2, a3, a4, a5) e = (a0, a1, e, a3, a4, a5);;
let set_6_3 (a0, a1, a2, a3, a4, a5) e = (a0, a1, a2, e, a4, a5);;
let set_6_4 (a0, a1, a2, a3, a4, a5) e = (a0, a1, a2, a3, e, a5);;
let set_6_5 (a0, a1, a2, a3, a4, a5) e = (a0, a1, a2, a3, a4, e);;
let set_7_0 (a0, a1, a2, a3, a4, a5, a6) e = (e, a1, a2, a3, a4, a5, a6);;
let set_7_1 (a0, a1, a2, a3, a4, a5, a6) e = (a0, e, a2, a3, a4, a5, a6);;
let set_7_2 (a0, a1, a2, a3, a4, a5, a6) e = (a0, a1, e, a3, a4, a5, a6);;
let set_7_3 (a0, a1, a2, a3, a4, a5, a6) e = (a0, a1, a2, e, a4, a5, a6);;
let set_7_4 (a0, a1, a2, a3, a4, a5, a6) e = (a0, a1, a2, a3, e, a5, a6);;
let set_7_5 (a0, a1, a2, a3, a4, a5, a6) e = (a0, a1, a2, a3, a4, e, a6);;
let set_7_6 (a0, a1, a2, a3, a4, a5, a6) e = (a0, a1, a2, a3, a4, a5, e);;
let set_8_0 (a0, a1, a2, a3, a4, a5, a6, a7) e = (e, a1, a2, a3, a4, a5, a6, a7);;
let set_8_1 (a0, a1, a2, a3, a4, a5, a6, a7) e = (a0, e, a2, a3, a4, a5, a6, a7);;
let set_8_2 (a0, a1, a2, a3, a4, a5, a6, a7) e = (a0, a1, e, a3, a4, a5, a6, a7);;
let set_8_3 (a0, a1, a2, a3, a4, a5, a6, a7) e = (a0, a1, a2, e, a4, a5, a6, a7);;
let set_8_4 (a0, a1, a2, a3, a4, a5, a6, a7) e = (a0, a1, a2, a3, e, a5, a6, a7);;
let set_8_5 (a0, a1, a2, a3, a4, a5, a6, a7) e = (a0, a1, a2, a3, a4, e, a6, a7);;
let set_8_6 (a0, a1, a2, a3, a4, a5, a6, a7) e = (a0, a1, a2, a3, a4, a5, e, a7);;
let set_8_7 (a0, a1, a2, a3, a4, a5, a6, a7) e = (a0, a1, a2, a3, a4, a5, a6, e);;
let set_9_0 (a0, a1, a2, a3, a4, a5, a6, a7, a8) e = (e, a1, a2, a3, a4, a5, a6, a7, a8);;
let set_9_1 (a0, a1, a2, a3, a4, a5, a6, a7, a8) e = (a0, e, a2, a3, a4, a5, a6, a7, a8);;
let set_9_2 (a0, a1, a2, a3, a4, a5, a6, a7, a8) e = (a0, a1, e, a3, a4, a5, a6, a7, a8);;
let set_9_3 (a0, a1, a2, a3, a4, a5, a6, a7, a8) e = (a0, a1, a2, e, a4, a5, a6, a7, a8);;
let set_9_4 (a0, a1, a2, a3, a4, a5, a6, a7, a8) e = (a0, a1, a2, a3, e, a5, a6, a7, a8);;
let set_9_5 (a0, a1, a2, a3, a4, a5, a6, a7, a8) e = (a0, a1, a2, a3, a4, e, a6, a7, a8);;
let set_9_6 (a0, a1, a2, a3, a4, a5, a6, a7, a8) e = (a0, a1, a2, a3, a4, a5, e, a7, a8);;
let set_9_7 (a0, a1, a2, a3, a4, a5, a6, a7, a8) e = (a0, a1, a2, a3, a4, a5, a6, e, a8);;
let set_9_8 (a0, a1, a2, a3, a4, a5, a6, a7, a8) e = (a0, a1, a2, a3, a4, a5, a6, a7, e);;


(*
python:
print "".join( map(lambda j: "".join(map(lambda i: "let set_{3}_{2} ({0}) e = ({1});;\n".format( *tuple(map(lambda ltype: ", ".join(map(lambda x:'a'+str(x) if x!=i or ltype == 'l' else "e", range(j))), ['l', 'r'])+[i, j])  ), range(j))), range(10)));
 *)


(*
print "".join(map(lambda i: (lambda x: "|({0}) -> [{0}];\n".format(x) ) (  ", ".join(map(lambda x:'a'+str(x), range(i)) )  ) , range(20)))
 *)


let addchild tree nodeid e = let treelen = length tree in  (treelen, [], "", e)::(map (function x -> let (nid, clist, vname, ex) = x in if nid == nodeid then (nid, treelen::clist, vname, ex) else x) tree);;

let rec alzexp e f2 f1 f0  = match e with
	T -> f0(T);
	| F -> f0(F);
	| V s -> f0(V s);
	| O (e1, e2) -> f2((alzexp e1 f2 f1 f0), (alzexp e2 f2 f1 f0), "O");
	| A (e1, e2) -> f2((alzexp e1 f2 f1 f0), (alzexp e2 f2 f1 f0), "A");
	| I (e1, e2) -> f2((alzexp e1 f2 f1 f0), (alzexp e2 f2 f1 f0), "I");
	| D (e1, e2) -> f2((alzexp e1 f2 f1 f0), (alzexp e2 f2 f1 f0), "D");
	| N (e1) -> f1((alzexp e1 f2 f1 f0) );;


let setexp e f = alzexp e (function (x,y,s) -> if (s = "O") then O(x,y) else if (s = "A" ) then A(x,y) else if(s = "I") then I(x,y) else if(s = "D") then D(x,y) else F ) (function x -> N (x)) f;;
let fromexp e f2 f1 f0 = alzexp e (function (x,y,s) -> f2(x,y) ) f1 f0;;


let inlist x e = (filter (function y -> y==e) x) != [];;
let union x y = fold_left (function l -> function y -> if inlist l y then l else y::l ) y x;;

let fv e  = alzexp e (function (x,y,s) -> x@y) (function x -> x) (function x -> match x with V s -> [s]; | _ -> [] );;
let assign e vname value = setexp e (function x -> match x with V vname1 -> if (vname1 = vname) then value else x | _ -> x ) ;;

let eval e = alzexp e ( function (x,y,s) -> if(s == "A") then if (x = T && y = T) then T else F else if (s == "O") then if ( x = F && y = F) then F else T else if ( s = "I") then if (x = T && y = F ) then F else T else if ( s = "D" ) then if ( x = y) then T else F else F ) (function x -> if ( x = T ) then F else T ) (function x -> x);;


let fold = fold_left;;

let set l f value = get_2_1(fold_right (function b -> function (a1, a2) -> (a1-1, (if f(a1, b) then value else b)::a2 ) ) l ( (length l)-1, []));;

let seti l i value = set l (function (index, v) -> (index == i) ) value;;

let getnode tree nodeid = hd( filter (function ((nid, clist, vname, ex)) -> nid == nodeid ) tree);;
let setnode tree nodeid value = set tree (function (i, x) -> (get_4_0(x)==nodeid) ) value;;



let a = A ( I( V "x1", V "x2"), O( V "x1", V "x3" ) );;

let tree = [(0, [], "", F)];;
let tree = addchild tree 0 a;;
(* 
	Node ID, Child (id of child node) List, Var name, Expression
 *)


let expendchild tree nodeid vname = let e = get_4_3(getnode tree nodeid) in let tree = (addchild (addchild tree nodeid (assign e vname T)) nodeid (assign e vname F)) in (setnode tree nodeid (set_4_2 (getnode tree nodeid) vname)) ;;


fv( assign (assign (assign a "x2" T) "x3" F) "x1" T );;




(* 
------------------------------------------------------------------------------- THIS IS DUSTBIN, BELOW THIS --------------------------------------------------------------------------------
 *)

(* 
let rec fromexp e f2 f1 f0 = match e with
	T -> f0(T);
	| F -> f0(F);
	| V s -> f0(V s);
	| O (e1, e2) -> f2((fromexp e1 f2 f1 f0), (fromexp e2 f2 f1 f0));
	| A (e1, e2) -> f2((fromexp e1 f2 f1 f0), (fromexp e2 f2 f1 f0));
	| I (e1, e2) -> f2((fromexp e1 f2 f1 f0), (fromexp e2 f2 f1 f0));
	| D (e1, e2) -> f2((fromexp e1 f2 f1 f0), (fromexp e2 f2 f1 f0));
	| N (e1) -> f1((fromexp e1 f2 f1 f0) );;


let rec setexp e f = match e with
	T -> f(T);
	| F -> f(F);
	| V s -> f(V s);
	| O (e1, e2) -> O( (setexp e1 f), (setexp e2 f));
	| A (e1, e2) -> A( (setexp e1 f), (setexp e2 f));
	| I (e1, e2) -> I( (setexp e1 f), (setexp e2 f));
	| D (e1, e2) -> D( (setexp e1 f), (setexp e2 f));
	| N (e1) -> N((setexp e1 f) );;

 *)
