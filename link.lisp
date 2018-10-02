#+darwin
(let* ((gl-path (if (uiop:featurep :bodge-gl2) "gl2/" "gl3/"))
       (relative-path (merge-pathnames gl-path #+x86-64 "x86_64/" #+x86 "x86/"
                                               #-(or x86-64 x86)
                                               (cl:error "Unsupported architecture"))))
  (bodge-blobs-support:link-system-foreign-libraries
   :glad-blob (asdf:system-relative-pathname :nanovg-blob relative-path)))
