(in-package :cl-user)

(defpackage :com.gigamonkeys.macro-utilities
  (:use :common-lisp)
  (:export :with-gensyms
	   :once-only))

(defpackage :unit-tester
  (:use :com.gigamonkeys.macro-utilities
	:cl)
  (:export :deftest :check))

(defpackage :com.gigamonkeys.pathnames
  (:use :common-lisp)
  (:export :list-directory
	   :file-exists-p
	   :directory-pathname-p
	   :file-pathname-p
	   :pathname-as-directory
	   :pathname-as-file
	   :walk-directory
	   :directory-p
	   :file-p))

(defpackage :com.gigamonkeys.binary-data
  (:use :common-lisp :com.gigamonkeys.macro-utilities)
  (:export :define-binary-class
	   :define-tagged-binary-class
	   :define-binary-type
	   :read-value
	   :write-value
	   :*in-progress-objects*
	   :parent-of-type
	   :current-binary-object
	   :+null+))

(defpackage :my-utils
  (:use :common-lisp)
  (:export :with-gensyms
	   :once-only
	   :xor
	   :alpha-p
	   :number-char-p
	   :split-string
	   :all-substrings
	   :find-substrings))










