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

;; Define configuration directories
(defvar duijf-dir (file-name-directory load-file-name)
  "The .emacs.d directory.")
(defvar duijf-core-dir (expand-file-name "core" duijf-dir)
  "The core configuration directory.")

;; Add configuration directories to load path
(add-to-list 'load-path duijf-core-dir)

;; Require core configuration
(require 'duijf-editor)
(require 'duijf-ui)
(require 'duijf-evil)

;;; init.el ends here
