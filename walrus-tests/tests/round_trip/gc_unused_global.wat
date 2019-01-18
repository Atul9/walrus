;; Can remove an unused global.

(module
  (type (;0;) (func (result i32)))
  (global $unused (mut i32) (i32.const 666))
  (func $f (type 0) (result i32)
    i32.const 42)
  (export "f" (func $f)))

;; CHECK: (module
;; NEXT:    (type (;0;) (func (result i32)))
;; NEXT:    (func $f (type 0) (result i32)
;; NEXT:      i32.const 42)
;; NEXT:    (export "f" (func $f)))
