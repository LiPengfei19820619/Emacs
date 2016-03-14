;;(require 'linum)
(global-linum-mode 1)

(add-to-list 'load-path "~/.emacs.d/auto-complete")    ; This may not be appeared if you have already added.
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;;(add-to-list 'load-path "C:/.emacs.d/go/")
;;(require 'go-mode)

(global-auto-revert-mode t)

;;(set-buffer-file-coding-system 'utf-8)

;;(set-default-coding-systems 'utf-8)
;;(prefer-coding-system 'utf-8)
;;(setq default-process-coding-system '(utf-8 . utf-8))
;;(setq locale-coding-system 'utf-8)
;;(setq file-name-coding-system 'utf-8)
;;(setq default-buffer-file-coding-system 'utf-8)


(setq-default cursor-type 'bar) 


(setq default-tab-width 4) 
(setq tab-width 4)

(setq indent-tabs-mode nil)
(setq c-basic-offset 4)


(setq make-backup-files nil)

(setq frame-title-format "GNU Emacs@ [%f]")

(setq default-line-spacing 4)

(global-hl-line-mode t)

(setq inhibit-startup-message t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-hscroll-mode t)
 '(column-number-mode t)
 '(current-language-environment "utf-8")
 '(custom-enabled-themes nil)
 '(make-backup-files nil)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(truncate-lines t)
 '(truncate-partial-width-windows t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 143 :width normal :foundry "outline" :family #("新宋体" 0 3 (charset chinese-gbk))))))
 '(cursor ((t (:background "black" :width condensed))))
 '(font-lock-comment-face ((((class color) (min-colors 16) (background light)) (:foreground "Forestgreen"))))
 '(font-lock-constant-face ((((class color) (min-colors 16) (background light)) (:foreground "red"))))
 '(font-lock-function-name-face ((((class color) (min-colors 16) (background light)) (:foreground "Black"))))
 '(font-lock-keyword-face ((((class color) (min-colors 16) (background light)) (:foreground "blue"))))
 '(font-lock-preprocessor-face ((t (:inherit nil :foreground "blue"))))
 '(font-lock-type-face ((((class color) (min-colors 16) (background light)) nil)))
 '(font-lock-variable-name-face ((((class color) (min-colors 16) (background light)) (:foreground "Black"))))
 '(speedbar-highlight-face ((((class color) (background light)) (:background "black" :foreground "black")))))


;insert-current-date-time
(defun insert-current-time ()
       (interactive)
       (insert (format-time-string "%Y-%m-%d %H:%M:%S")))
(define-key global-map [(f7)] 'insert-current-time)


;;cls
(defun eshell/cls()   
    "to clear the eshell buffer."   
    (interactive)   
    (let ((inhibit-read-only t))   
         (erase-buffer)))

