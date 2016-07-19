(require 'org-publish)
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
(org-publish-all)

;; We can use the :completion-function to publish to github page
