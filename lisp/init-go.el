(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(setq company-idle-delay 0.2)
(require 'sr-speedbar)
(require 'projectile)
(custom-set-variables
 '(speedbar-show-unknown-files t)
 )
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq speedbar-use-images nil)
(global-set-key [C-x C-R] 'projectile-find-file)
(setq gofmt-command "goimports")
(require 'go-projectile)
(require 'semantic/sb)
;; UPDATE: gofmt-before-save is more convenient then having a command
;; for running gofmt manually. In practice, you want to
;; gofmt/goimports every time you save anyways.

(global-set-key (kbd "C-c M-n") 'company-complete)
(global-set-key (kbd "C-c C-n") 'company-complete)

(defun my-go-mode-hook ()
  (add-hook 'before-save-hook 'gofmt-before-save)
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  (local-set-key (kbd "M-.") 'godef-jump)
  )


(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook 'my-go-mode-hook)
(provide 'init-go)
