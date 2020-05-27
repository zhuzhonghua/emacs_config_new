(show-paren-mode t)

(setq-default tab-width 2)
(setq make-backup-files nil)

;;; Title = 'system-name File: foo.bar'
(setq frame-title-format '("" system-name "  File: "(:eval (frame-title-string))))

(set-face-attribute 'default nil :font "Consolas 14")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
              (set-fontset-font (frame-parameter nil 'font)
                            charset
                            (font-spec :family "Microsoft Yahei" :size 22)))

(if (window-system)
		(set-frame-size (selected-frame) 100 40))

(global-set-key (kbd "C-<tab>")
		'(lambda ()
		   (interactive)
		   (switch-to-buffer nil)))

(global-set-key (kbd "C-`")
		'(lambda ()
		   (interactive)
		   (set-mark-command nil)))

(defun dummy-test ()
	(interactive)
	(message "dummy key"))
	
(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'my-evil-mode)
(global-set-key [escape] 'my-evil-mode-enable)

(defun smooth-scroll (increment)
  (scroll-up increment) (sit-for 0.01)
  (scroll-up increment) (sit-for 0.01)
  (scroll-up increment) (sit-for 0.01))

(global-set-key [wheel-down] '(lambda () (interactive) (smooth-scroll 1)))
(global-set-key [wheel-up] '(lambda () (interactive) (smooth-scroll -1)))
