(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15
  'replace-this-line
  (define (indexer s index)
    
    (if (null? s)
      nil
      (cons (list index (car s)) (indexer (cdr s) (+ index 1)))
    )
    
  )
  (indexer s 0)
)
  ; END PROBLEM 15

;; Problem 16

;; Merge two lists LIST1 and LIST2 according to ORDERED? and return
;; the merged lists.
(define (merge ordered? list1 list2)
  ; BEGIN PROBLEM 16
  'replace-this-line
  (cond ((or (null? list1)(null? list2)) 
    (append list1 list2))
  ((ordered? (car list1)(car list2)) 
    (cons (car list1) (cons (car list2) (merge ordered? (cdr list1)(cdr list2)))))
  (else 
    (cons (car list2) (cons (car list1) (merge ordered? (cdr list1)(cdr list2)))))
  )
  )
  ; END PROBLEM 16

