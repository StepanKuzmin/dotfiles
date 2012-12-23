(setq load-path (cons  "/usr/local/Cellar/erlang/R15B03-1/lib/erlang/lib/tools-2.6.8/emacs"
      load-path))
      (setq erlang-root-dir "/usr/local/Cellar/erlang/R15B03-1")
      (setq exec-path (cons "/usr/local/Cellar/erlang/R15B03-1/bin" exec-path))
      (require 'erlang-start)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
 (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
