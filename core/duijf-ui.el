;;; duijf-ui.el --- Emacs theme and visualisation settings

;; Copyright (C) 2014 Laurens Duijvesteijn <l.duijvesteijn@gmail.com>

;; Author: Laurens Duijvesteijn
;; URL: github.com/duijf/.emacs.d/blob/master/core/duijf-ui.el

;;; Commentary:

;; Sets the color scheme and cursor behavior.

;; This file is *NOT* part of GNU Emacs.

;;; Code:

;; Load solarized
(require 'color-theme)
(require 'color-theme-solarized)
(load-theme 'solarized-dark)

;; Color Evil cursors
(setq evil-emacs-state-cursor '("red" hbar))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" hbar))
(setq evil-replace-state-cursor '("red" hbar))
(setq evil-operator-state-cursor '("red" hollow))

(provide 'duijf-ui)
;;; duijf-ui.el ends here
