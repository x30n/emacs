;----------------;
;;;   GOLang   ;;;
;----------------;

;; GOLANG Configs
(setenv "PATH" (concat (getenv "PATH") ":" (getenv "GOPATH") "/bin"))
(setenv "GOPATH" (getenv "GOPATH"))

(setq exec-path (cons "/usr/local/go/bin" exec-path))
(add-to-list 'exec-path (concat (getenv "GOPATH") "/bin"))

;(add-to-list 'load-path "~/Misc/emacs/go-mode.el/")

(require 'go-autocomplete)
;(require 'go-mode-load)

(defun my-go-mode-hook ()
  ; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  (setq gofmt-is-goimports t)
  (require 'go-mode-load)
  ; Call Gofmt before saving                                                    
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go generate && go build -v && go test -v && go vet"))
                                        ; Go oracle
  (load-file "$GOPATH/src/golang.org/x/tools/cmd/oracle/oracle.el")
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump))

(add-hook 'go-mode-hook 'my-go-mode-hook)
;; END GOLANG Configs

(provide 'go-settings)

