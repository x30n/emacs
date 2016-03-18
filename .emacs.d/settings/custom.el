

;(add-to-list 'load-path "~/.emacs.d/lisp/")
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
;(ac-config-default)

;(require 'auto-complete-config)

(global-set-key (kbd "M-n") 'linum-mode)

(server-start)

;; Code Commenting
(defun comment-or-uncomment-region-or-line ()
  "Comments or uncomments the region or the current line if there's no active region."
  (interactive)
  (let (beg end)
    (if (region-active-p)
        (setq beg (region-beginning) end (region-end))
      (setq beg (line-beginning-position) end (line-end-position)))
    (comment-or-uncomment-region beg end)
    (next-line)))
(global-set-key (kbd "M-;") 'comment-or-uncomment-region-or-line)

;;;;;
(load-theme 'monokai t)
(setq linum-format " %d ")
(require 'dirtree)
(require 'powerline)
(powerline-default-theme)
;;;;;


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("a041a61c0387c57bb65150f002862ebcfe41135a3e3425268de24200b82d6ec9" default)))
 '(ecb-options-version "2.40")
 '(magit-use-overlays nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "nil" :slant normal :weight normal :height 120 :width normal)))))

                                        ;default window width and height
(defun custom-set-frame-size ()
  (add-to-list 'default-frame-alist '(height . 65))
  (add-to-list 'default-frame-alist '(width . 99)))
(custom-set-frame-size)
(add-hook 'before-make-frame-hook 'custom-set-frame-size)


;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; ; color theme
;; (add-to-list 'custom-theme-load-path (make-plugin-path "color-theme-solarized"))
;; (load-theme 'solarized 1)
;; (setq solarized-termcolors 256)

;; (require 'faces)
;; (if (system-is-mac)
;;     (set-face-attribute 'default nil
;; 			:foundry "apple" 
;; 			:family "DejaVu_Sans_Mono"))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  (if (window-system)
;;      (if (system-is-mac)
;;          '(default ((t (:inherit nil :stipple nil :background "#002b35" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "apple" :family "DejaVu_Sans_Mono"))))
;;        '(default ((t (:inherit nil :stipple nil :background "#002b35" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Ubuntu Mono"))))))
;;  '(ein:cell-input-area ((t (:background "#042028"))))
;;  '(ein:cell-input-prompt ((t (:inherit header-line :background "#002b35" :foreground "#859900" :inverse-video nil :weight bold))))
;;  '(ein:cell-output-prompt ((t (:inherit header-line :background "#002b35" :foreground "#dc322f" :inverse-video nil :weight bold))))
;;  '(font-lock-comment-face ((t (:foreground "#6171c4" :inverse-video nil :underline nil :slant italic :weight normal))))
;;  '(font-lock-function-name-face ((t (:foreground "#2075c7" :inverse-video nil :underline nil :slant normal :weight bold))))
;;  '(font-lock-keyword-face ((t (:foreground "#cb4b16" :inverse-video nil :underline nil :slant normal :weight normal))))
;;  '(font-lock-type-face ((t (:foreground "#d33682" :inverse-video nil :underline nil :slant normal :weight normal))))
;;  '(fringe ((t (:background "#002b35" :foreground "#465a61"))))
;;  (if (window-system)
;;      '(magit-item-highlight ((t (:inherit highlight :background "#042028"))))
;;    '(magit-item-highlight ((t (:background "white" :foreground "black")))))
;;  '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 210))))
;;  '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 190))))
;;  '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 170))))
;;  '(markdown-header-face-4 ((t (:inherit markdown-header-face :height 150))))
;;  '(markdown-header-face-5 ((t (:inherit markdown-header-face :slant italic :weight bold))))
;;  '(markdown-header-face-6 ((t (:inherit markdown-header-face :slant italic :weight normal))))
;;  '(markdown-math-face ((t (:inherit font-lock-string-face :foreground "#cb4b16" :slant italic))))
;;  (if (window-system)
;;      '(mode-line ((t (:background "#0a2832" :foreground "#eee8d4" :inverse-video t :box nil :underline nil :slant normal :weight normal)))))
;;  '(mumamo-background-chunk-major ((t (:background "#002b36"))))
;;  '(py-variable-name-face ((t (:inherit default :foreground "#268bd2")))))











