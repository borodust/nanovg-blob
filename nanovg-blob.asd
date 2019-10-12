(asdf:defsystem nanovg-blob
  :author "Pavel Korolev"
  :description "Foreign library collection of nanovg 2d drawing library"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :class :bodge-blob-system
  :depends-on (glad-blob)
  :libraries (((:darwin :x86-64 (:not :bodge-gl2)) "libnanovg.dylib.bodged" "gl3/x86_64/")
              ((:darwin :x86 (:not :bodge-gl2)) "libnanovg.dylib.bodged" "gl3/x86/")
              ((:unix (:not :darwin) :x86-64 (:not :bodge-gl2)) "libnanovg.so.bodged" "gl3/x86_64/")
              ((:unix (:not :darwin) :x86 (:not :bodge-gl2)) "libnanovg.so.bodged" "gl3/x86/")
              ((:windows :x86-64 (:not :bodge-gl2)) "libnanovg.dll.bodged" "gl3/x86_64/")
              ((:windows :x86 (:not :bodge-gl2)) "libnanovg.dll.bodged" "gl3/x86/")
              ;; GL2.1
              ((:darwin :x86-64 :bodge-gl2) "libnanovg.dylib.bodged" "gl2/x86_64/")
              ((:darwin :x86 :bodge-gl2) "libnanovg.dylib.bodged" "gl2/x86/")
              ((:unix (:not :darwin) :x86-64 :bodge-gl2) "libnanovg.so.bodged" "gl2/x86_64/")
              ((:unix (:not :darwin) :x86 :bodge-gl2) "libnanovg.so.bodged" "gl2/x86/")
              ((:windows :x86-64 :bodge-gl2) "libnanovg.dll.bodged" "gl2/x86_64/")
              ((:windows :x86 :bodge-gl2) "libnanovg.dll.bodged" "gl2/x86/"))
  :components ((:file "link")))
