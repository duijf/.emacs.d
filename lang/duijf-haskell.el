;;; duijf-haskell.el --- Settings for haskell editing in Emacs

;; Copyright (C) 2014 Laurens Duijvesteijn <l.duijvesteijn@gmail.com>

;; Author: Laurens Duijvesteijn
;; URL: github.com/duijf/.emacs.d/blob/master/lang/duijf-haskell.el

;;; Commentary:

;; Loads haskell mode and shm. Does not yet provide any keybindings,
;; custom settings or other fancy IDE behavior.

;; This file is *NOT* part of GNU Emacs.

;;; Code:

(require 'haskell-mode-autoloads)

(require 'shm)

(add-hook 'haskell-mode-hook 'structured-haskell-mode)

(provide 'duijf-haskell)
;;; duijf-haskell.el ends here
