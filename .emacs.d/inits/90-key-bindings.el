;;;; Defines key bindings in various modes

;;;; Global
;;; Traverse history with C-p and C-n
(define-key minibuffer-local-map "\C-p" 'previous-history-element)
(define-key minibuffer-local-map "\C-n" 'next-history-element)
(define-key minibuffer-local-must-match-map "\C-p" 'previous-history-element)
(define-key minibuffer-local-must-match-map "\C-n" 'next-history-element)
(define-key minibuffer-local-completion-map "\C-p" 'previous-history-element)
(define-key minibuffer-local-completion-map "\C-n" 'next-history-element)

;;; C-h as backspace
(define-key key-translation-map [?\C-h] [?\C-?])
;;; Auto indent
(define-key global-map (kbd "RET") 'newline-and-indent)
;;; Go to previous buffer
(define-key global-map (kbd "C-x O") 'previous-multiframe-window)
;;; Insert newline below
(define-key global-map (kbd "C-c o")
  (lambda ()
    (interactive)
    (next-line)
    (beginning-of-line)
    (insert "\n")
    (previous-line)
    (indent-for-tab-command))
;;; Insert newline above
(define-key global-map (kbd "C-c C-o") 'insert-newline-above)

;;;; visual-regexp-steroids
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)
(define-key global-map (kbd "C-M-r") 'vr/isearch-backward)
(define-key global-map (kbd "C-M-s") 'vr/isearch-forward)

;;;; ace-jump-mode
(global-set-key (kbd "C-o") 'ace-jump-char-mode)

;;;; helm
;; Jump back and forth with C-M-p and C-M-n
(define-key helm-map (kbd "C-M-p") 'helm-follow-action-backward)
(define-key helm-map (kbd "C-M-n") 'helm-follow-action-forward)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x c o") 'helm-occur)
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x c C-r") 'helm-recentf)

;;; Replace: next-error / previous-error
(ignore-errors (helm-anything-set-keys))
(global-set-key (kbd "M-g M-n") 'helm-resume-and-next)
(global-set-key (kbd "M-g M-p") 'helm-resume-and-previous)