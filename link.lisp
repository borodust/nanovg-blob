#+darwin
(bodge-blobs-support:link-system-foreign-libraries
 :glad-blob (asdf:system-relative-pathname :nanovg-blob #+x86-64 "x86_64" #+x86 "x86"
                                                        #-(or x86-64 x86)
                                                        (error "Unsupported architecture")))
