;;; duijf-editor.el --- Emacs editor UI and behavior settings

;; Copyright (C) 2014 Laurens Duijvesteijn <l.duijvesteijn@gmail.com>

;; Author: Laurens Duijvesteijn
;; URL: github.com/duijf/.emacs.d/blob/master/core/duijf-editor.el

;;; Commentary:

;; Sets custom keybindings

;; This file is *NOT* part of GNU Emacs.

;;; Code:

;; Swap option and command on OS X
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

;; Set copy paste to work like expected with alt and cmd switched
(global-set-key (kbd "M-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "M-v") 'clipboard-yank)

(provide 'duijf-keybindings)
;;; duijf-keybindings.el ends here
