;; Duijf's emacs config based on Pallet and Cask

(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)
(require 'pallet)

;;
;; Remove a lot of crap, most of the configuration from:
;; Emacs, naked (http://bzg.fr/emacs-strip-tease.html)
;;

;; Prevent the cursor from blinking
(blink-cursor-mode 0)

;; Remove initial scratch message
(setq initial-scratch-message "")

;; Don't show the statup screen
(setq inhibit-startup-message t)

;; Don't make sounds
(setq ring-bell-function 'ignore)

;; Start in full-screen
(toggle-frame-fullscreen)

;; Don't show the scroll bars
(scroll-bar-mode 0)

;; Don't show the tool bar
(tool-bar-mode 0)

;;
;; Evil mode
;;

(require 'evil)
(evil-mode 1)

;; Get out of a minibuffer.
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

;;
;; UI
;;

;; Color Evil cursors
(setq evil-emacs-state-cursor '("red" hbar))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" hbar))
(setq evil-replace-state-cursor '("red" hbar))
(setq evil-operator-state-cursor '("red" hollow))
