;ckages archives repositories
(require 'package)

(add-to-list 'package-archives
	       '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))

(add-to-list 'package-archives 
	       '("marmalade" . "https://marmalade-repo.org/packages/"))  

;; Initialize all the ELPA packages (what is installed using the packages commands)    
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm-ag helm-ls-hg rainbow-delimiters highlight-symbol company cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; UTF-8 as default encoding
(set-language-environment "UTF-8")

;; Set the default comment column to 70
(setq-default comment-column 70)

;; Every time a window is started, make sure it get maximized
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Enter cider mode when entering the clojure major mode
(add-hook 'clojure-mode-hook 'cider-mode)

;; Turn on auto-completion with Company-Mode
(global-company-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

;; Replace return key with newline-and-indent when in cider mode.
(add-hook 'cider-mode-hook '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))

;; Show parenthesis mode
(show-paren-mode 1)

;; rainbow delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Configure helm-ag
;; Make sure to have Platinum Searcher installed: https://github.com/monochromegane/the_platinum_searcher
;;(custom-set-variables
;;   '(helm-ag-base-command "C:/platinum-searcher/pt -e --nocolor --nogroup"))

(global-set-key (kbd "M-s") 'helm-do-ag)

; Syntax Highlighting
(require 'highlight-symbol)
(global-set-key (kbd "C-é") 'highlight-symbol-at-point)
(global-set-key (kbd "C-.") 'highlight-symbol-next)
(global-set-key (kbd "C-,") 'highlight-symbol-prev)
(global-set-key (kbd "C-;") 'highlight-symbol-query-replace)

;;(global-set-key [f9] 'cider-jack-in)
;;(global-set-key [apps] 'other-frame)
;;(global-set-key [f11] 'speedbar)

;; scroll one line at a time (less "jumpy" than defaults)
;;(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
;;(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
;;(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
;;(setq scroll-step 1) ;; keyboard scroll one line at a time

