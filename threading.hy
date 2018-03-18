
(->> 2
	(+ 2)
	(print))

(-> 3
	(* 2)
	(print))

(-> {"message" "hello world"}
	(.keys)
	(print))
