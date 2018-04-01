(import random)

(defn d6 []
	(.randint random 1 6))

(print (d6))

(defn my-repeatedly []
	(while True
		(yield (d6))))

(print (list (take 2 (my-repeatedly))))

(print (list (take 2 (repeatedly d6))))
