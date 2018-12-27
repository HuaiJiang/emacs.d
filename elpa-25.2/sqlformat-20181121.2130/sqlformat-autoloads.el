;;; sqlformat-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "sqlformat" "sqlformat.el" (23587 6589 950731
;;;;;;  622000))
;;; Generated autoloads from sqlformat.el

(autoload 'sqlformat-mode "sqlformat" "\
Easy access to SQL reformatting using external programs, optionally including on save.

\(fn &optional ARG)" t nil)

(autoload 'sqlformat-buffer "sqlformat" "\
Reformat the entire SQL buffer using the `sqlformat' command.

\(fn)" t nil)

(autoload 'sqlformat "sqlformat" "\
Reformat SQL in region from BEG to END using `sqlformat-command'.
If no region is active, the current statement (paragraph) is reformatted.
Install the \"sqlparse\" (Python) package to get \"sqlformat\", or
\"pgformatter\" to get \"pg_format\".

\(fn BEG END)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; sqlformat-autoloads.el ends here
