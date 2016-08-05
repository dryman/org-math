(setq org-publish-project-alist
      '(("org-notes"
         :base-directory "."
         :exclude "public_html"
         :publishing-directory "./public_html/"
         :publishing-function org-html-publish-to-html)
        ("org-static"
         :base-directory "."
         :exclude "public_html"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "./public_html/"
         :publishing-function org-publish-attachment
         :recursive t)))
;; The defaults mathjax is old and slow
(setf org-html-mathjax-options
      '((path "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")
        (scale "100")
        (align "center")
        (indent "2em")
        (mathml nil)))
(setf org-html-mathjax-template
      "<script type=\"text/javascript\" src=\"%PATH\"></script>")

(org-publish-all)

;; We can use the :completion-function to publish to github page
