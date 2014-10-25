;;; duijf-editor.el --- Emacs editor UI and behavior settings

;; Copyright (C) 2014 Laurens Duijvesteijn <l.duijvesteijn@gmail.com>

;; Author: Laurens Duijvesteijn
;; URL: github.com/duijf/.emacs.d/blob/master/core/duijf-editor.el

;;; Commentary:

;; Removes unneccessary UI elements, files, and sets other sensible
;; editor settings. Also loads a nice theme.

;; This file is *NOT* part of GNU Emacs.

;;; Code:

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

;; Set custom file location
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; Require newline at end of file
(setq require-final-newline t)

;; Load tomorrow-night color theme
(require 'color-theme)
(require 'color-theme-solarized)
(load-theme 'solarized-light)

(provide 'duijf-editor)
;;; duijf-editor.el ends here
