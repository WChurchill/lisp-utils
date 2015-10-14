;;;; utils.asd

(asdf:defsystem #:utilities
  :description "A collection of generally useful macros and functions."
  :author "Winston Carlile wjc140030@utdallas.edu"
  :license "MIT License"
  :serial t
  :components ((:file "package")
	       (:file "utils")
	       (:file "pathnames")
	       (:file "macro-utilities")
	       (:file "binary-data")))
