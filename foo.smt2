(define-fun-rec length ((ls (List Int))) Int
   (if ((_ is nil) ls) 0 (+ 1 (length (tail ls)))))

(define-fun-rec all-two ((ls (List Int))) Bool 
   (if ((_ is nil) ls)
       true
       (and (<= (head ls) 2) (all-two (tail ls)))))

(define-fun-rec sum ((ls (List Int))) Int 
   (if ((_ is nil) ls)
       0
       (+ (head ls) (sum (tail ls)))))

(declare-const list1 (List Int))
(declare-const x (Int))
;(assert ( (length list1) (length list2)))
(assert (all-two list1))
(assert (>= (sum list1) 200))
(assert (= x (length list1)))
(check-sat)
(get-model)
(get-info :all-statistics)

