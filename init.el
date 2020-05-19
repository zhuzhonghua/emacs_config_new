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
