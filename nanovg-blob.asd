(asdf:defsystem nanovg-blob
  :author "Pavel Korolev"
  :description "Foreign library collection of nanovg 2d drawing library"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :class :bodge-blob-system
  :depends-on (glad-blob)
  :libraries (((:darwin :x86-64) "libnanovg.dylib.bodged" "x86_64/")
              ((:darwin :x86) "libnanovg.dylib.bodged" "x86/")
              ((:unix (:not :darwin) :x86-64) "libnanovg.so.bodged" "x86_64/")
              ((:unix (:not :darwin) :x86) "libnanovg.so.bodged" "x86/")
              ((:windows :x86-64) "libnanovg.dll.bodged" "x86_64/")
              ((:windows :x86) "libnanovg.dll.bodged" "x86/"))

  :components ((:file "link")))
