(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")))

(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-blue)

(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)
(global-set-key [f5] 'projectile-find-file)



