;;; init.el --- Duijf's emacs configuration

;; Copyright (C) 2014 Laurens Duijvesteijn <l.duijvesteijn@gmail.com>

;; Author: Laurens Duijvesteijn
;; URL: github.com/duijf/.emacs.d/blob/master/init.el

;;; Commentary:

;; Loads duijf's Emacs configuration. Makes use of the Pallet interface
;; for the Cask package manager. Adds subconfiguration to load path
;; and loads it into Emacs.

;; This file is *NOT* part of GNU Emacs.

;;; Code:

;; Initialize Cask package manager
(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)
(require 'pallet)

;; Set the Emacs PATH
(defun set-exec-path-from-shell-PATH ()
  "Sets the exec-path to the same value used by the user shell"
  (let ((path-from-shell
         (replace-regexp-in-string
          "[[:space:]\n]*$" ""
          (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH)

;; Define configuration directories
(defvar duijf-dir (file-name-directory load-file-name)
  "The .emacs.d directory.")
(defvar duijf-core-dir (expand-file-name "core" duijf-dir)
  "The core configuration directory.")
(defvar duijf-lang-dir (expand-file-name "lang" duijf-dir)
  "The core configuration directory.")

;; Add configuration directories to load path
(add-to-list 'load-path duijf-core-dir)
(add-to-list 'load-path duijf-lang-dir)

;; Require core configuration
(require 'duijf-editor)
(require 'duijf-evil)

;; Require language configuration
(require 'duijf-haskell)
;;; init.el ends here
