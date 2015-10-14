(defmacro with-gensyms ((&rest names) &body body)
  "Assigns a generated name for each symbol in names."
  `(let ,(loop for n in names collect `(,n (gensym)))
     ,@body))

(defmacro once-only ((&rest names) &body body)
  "Evaluates each symbol once and assigns a generated name to each result."
  (let ((gensyms (loop for n in names collect (gensym))))
    `(let (,@ (loop for g in gensyms collect `(,g (gensym))))
       `(let (,,@ (loop for g in gensyms for n in names collect ``(,,g ,,n)))
	  ,(let (,@(loop for n in names for g in gensyms collect `(,n ,g)))
		,@body)))))
