(SETQ l1 '(T HJ JH K L (K)))
(SETQ l2 '(6 7 5 4 (8 9 0) (4 6)))
(SETQ l3 '(K 2 T F G H))

;==========;
;  TASK 1  ;
;==========;
; Expected result: (T 6 K)
(FORMAT T "Task 1:")

(PRINT ((LAMBDA (list1 list2 list3)
	(LIST (CAR list1) (CAR list2) (CAR list3)))
  		l1 l2 l3))


;==========;
;  TASK 2  ;
;==========;
; Expected result: (HJ (4 6) T)
(FORMAT T "~2%Task 2:")

;;; Combine 2, 6 and 3 elements from lists
(DEFUN Combine263 (list1 list2 list3) 
	(LIST (SECOND list1) (SIXTH list2) (THIRD list3)))

(PRINT (Combine263 l1 l2 l3))


;==========;
;  TASK 3  ;
;==========;
(FORMAT T "~2%Task 3:")

;;; Calculate expression in lst
;;; if result is even then print res > 0
;;; otherwise print lst
(DEFUN func (lst)
	(IF (= (MOD (EVAL lst) 2) 0)
		(PRINT (> (EVAL lst) 0))
		(PRINT lst)))

(func '(+ 2 4))