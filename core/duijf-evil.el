;;; duijf-editor.el --- Evil import and settings

;; Copyright (C) 2014 Laurens Duijvesteijn <l.duijvesteijn@gmail.com>

;; Author: Laurens Duijvesteijn
;; URL: github.com/duijf/.emacs.d/blob/master/core/duijf-evil.el

;;; Commentary:

;; Loads and configures Evil and some keybindings.

;; This file is *NOT* part of GNU Emacs.

;;; Code:

;; We need to load and configure evil-leader before evil itself in
;; order to have it available in initial buffers like *scratch* and
;; *Messages*
(require 'evil-leader)
(global-evil-leader-mode)

;; Evil leader bindings and configuration
(evil-leader/set-leader ",")

(evil-leader/set-key
  "e" 'eval-buffer)

;; Load evil itself
(require 'evil)
(evil-mode 1)

;; Get out of a minibuffer
(defun minibuffer-keyboard-quit ()
  "Get out of a minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))

;; ESC gets you out of pretty much everything
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)

(provide 'duijf-evil)
;;; duijf-evil ends here
