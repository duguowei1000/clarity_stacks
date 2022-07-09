
;; first
;; <add a description here>

;; constants
(define-constant ERR_INVALID_STRING u0)
;;

;; data maps and vars
(define-data-var billboard-message (string-utf8 500) u"Hello World~~")
;;

;; private functions
(define-read-only (get-message) 
    (var-get billboard-message)
    )

;;

;; public functions
(define-public (set-message (message (string-utf8 500))) 
    (if (var-set billboard-message message)
    (ok true)
    (err ERR_INVALID_STRING)
    )
)
;;
