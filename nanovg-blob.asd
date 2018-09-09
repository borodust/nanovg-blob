(asdf:defsystem nanovg-blob
  :author "Pavel Korolev"
  :description "Foreign library collection of nanovg 2d drawing library"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :class :bodge-blob-system
  :depends-on (glad-blob)
  :libraries (((:darwin :x86-64 (:not :bodge-gl2)) "libnanovg.dylib.bodged" "x86_64/gl3/")
              ((:darwin :x86 (:not :bodge-gl2)) "libnanovg.dylib.bodged" "x86/gl3/")
              ((:unix (:not :darwin) :x86-64 (:not :bodge-gl2)) "libnanovg.so.bodged" "x86_64/gl3/")
              ((:unix (:not :darwin) :x86 (:not :bodge-gl2)) "libnanovg.so.bodged" "x86/gl3/")
              ((:windows :x86-64 (:not :bodge-gl2)) "libnanovg.dll.bodged" "x86_64/gl3/")
              ((:windows :x86 (:not :bodge-gl2)) "libnanovg.dll.bodged" "x86/gl3/")
              ;; GL2.1
              ((:darwin :x86-64 :bodge-gl2) "libnanovg.dylib.bodged" "x86_64/gl2/")
              ((:darwin :x86 :bodge-gl2) "libnanovg.dylib.bodged" "x86/gl2/")
              ((:unix (:not :darwin) :x86-64 :bodge-gl2) "libnanovg.so.bodged" "x86_64/gl2/")
              ((:unix (:not :darwin) :x86 :bodge-gl2) "libnanovg.so.bodged" "x86/gl2/")
              ((:windows :x86-64 :bodge-gl2) "libnanovg.dll.bodged" "x86_64/gl2/")
              ((:windows :x86 :bodge-gl2) "libnanovg.dll.bodged" "x86/gl2/"))
  :components ((:file "link")))
