
(require 'eclim)
(require 'eclimd)
(global-eclim-mode)
(custom-set-variables
  '(eclim-eclipse-dirs '("/home/data/work/eclipse-mars/"))
  '(eclim-executable "/home/data/work/eclipse-mars/eclim"))
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)
;; regular auto-complete initialization
;;(require 'auto-complete-config)
;;(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)
(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)
(setq company-emacs-eclim-ignore-case t)




