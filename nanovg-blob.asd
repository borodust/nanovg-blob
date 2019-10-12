(asdf:defsystem nanovg-blob
  :author "Pavel Korolev"
  :description "Foreign library collection of nanovg 2d drawing library"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :class :bodge-blob-system
  :depends-on (glad-blob)
  :libraries (((:darwin :x86-64 (:not :bodge-gl2))
               "libnanovg.dylib.gl3.bodged" "x86_64/")
              ((:darwin :x86 (:not :bodge-gl2))
               "libnanovg.dylib.gl3.bodged" "x86/")
              ((:unix (:not :darwin) :x86-64 (:not :bodge-gl2))
               "libnanovg.so.gl3.bodged" "x86_64/")
              ((:unix (:not :darwin) :x86 (:not :bodge-gl2))
               "libnanovg.so.gl3.bodged" "x86/")
              ((:windows :x86-64 (:not :bodge-gl2))
               "libnanovg.dll.gl3.bodged" "x86_64/")
              ((:windows :x86 (:not :bodge-gl2))
               "libnanovg.dll.gl3.bodged" "x86/")
              ;; GL2.1
              ((:darwin :x86-64 :bodge-gl2)
               "libnanovg.dylib.gl2.bodged" "x86_64/")
              ((:darwin :x86 :bodge-gl2)
               "libnanovg.dylib.gl2.bodged" "x86/")
              ((:unix (:not :darwin) :x86-64 :bodge-gl2)
               "libnanovg.so.gl2.bodged" "x86_64/")
              ((:unix (:not :darwin) :x86 :bodge-gl2)
               "libnanovg.so.gl2.bodged" "x86/")
              ((:windows :x86-64 :bodge-gl2)
               "libnanovg.dll.gl2.bodged" "x86_64/")
              ((:windows :x86 :bodge-gl2)
               "libnanovg.dll.gl2.bodged" "x86/"))
  :components ((:file "link")))
