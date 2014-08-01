; Theme
;;; Theme - Sunburst for Emacs by AlexMax <alexmax2742@gmail.com>

(deftheme sunburst "Sunburst")

(defun hex-rgba-to-rgb (hexstr bgstr)
  "Convert an #RGBA hex string to plain old #RGB."
  (let ((red (string-to-number (substring hexstr 1 3) 16))
	(green (string-to-number (substring hexstr 3 5) 16))
	(blue (string-to-number (substring hexstr 5 7) 16))
	(alpha (/ (string-to-number (substring hexstr 7 9) 16) 255.0))
	(red-bg (string-to-number (substring bgstr 1 3) 16))
	(green-bg (string-to-number (substring bgstr 3 5) 16))
	(blue-bg (string-to-number (substring bgstr 5 7) 16)))
    (format "#%02X%02X%02X"
	    (+ (* (- 1 alpha) red-bg) (* alpha red))
	    (+ (* (- 1 alpha) green-bg) (* alpha green))
	    (+ (* (- 1 alpha) blue-bg) (* alpha blue)))))

(let ((silver-chalice "#A7A7A7")                            ; Caret
      (alabaster "#F8F8F8")                                 ; Foreground
      (outer-space (hex-rgba-to-rgb "#CAE2FB3D" "#000000")) ; Invisibles
      (cod-gray (hex-rgba-to-rgb "#FFFFFF0D" "#000000"))    ; Line Highlight
      (shark (hex-rgba-to-rgb "#DDF0FF33" "#000000"))       ; Selection
      (silver-chalice-2 "#AEAEAE")                          ; Comment
      (mariner "#3387CC")                                   ; Constant
      (malibu "#89BDFF")                                    ; Entity
      (terracotta "#E28964")                                ; Keyword
      (conifer "#99CF50")                                   ; Storage
      (apple "#65B042")                                     ; String
      (mamba "#9B859D")                                     ; Support
      (royal-blue "#3E87E3")                                ; Variable
      (pink-flamingo "#FD5FF1")                     ; Deprecated/Illegal FG
      (livid-brown "#402140")                       ; Illegal BG
      (brandy "#DAD085")                            ; Support (Function)
      (raw-sienna "#CF6A4C")                        ; Support (Constant)
      (regent-gray "#8996A8")                       ; Preprocessor Line
      (pigeon-post "#AFC4DB"))                      ; Preprocessor Directive

  (custom-theme-set-faces
   'sunburst
   ; Standard faces
   `(default ((default :foreground ,alabaster)
	      (((type graphic)) :background "black")))
   `(cursor ((t :background ,silver-chalice)))
   `(highlight ((t :foreground ,malibu :background "black" :underline t)))
   `(isearch ((t :foreground "black" :background ,brandy)))
   `(lazy-highlight ((t :foreground unspecified :background unspecified :underline t)))
   `(link ((t :foreground ,malibu)))
   `(minibuffer-prompt ((t :foreground ,malibu)))
   `(region ((t :background ,shark)))
   ; hl-line faces
   `(hl-line ((t :background ,cod-gray)))
   ; font-lock faces
   `(font-lock-builtin-face ((t :foreground ,brandy)))
   `(font-lock-comment-face ((t :foreground ,silver-chalice-2)))
   `(font-lock-constant-face ((t :foreground ,mariner)))
   `(font-lock-function-name-face ((t :foreground ,malibu)))
   `(font-lock-keyword-face ((t :foreground ,terracotta)))
   `(font-lock-preprocessor-face ((t :foreground ,regent-gray)))
   `(font-lock-string-face ((t :foreground ,apple)))
   `(font-lock-type-face ((t :foreground ,conifer)))
   `(font-lock-variable-name-face ((t :foreground ,royal-blue)))
   `(font-lock-warning-face ((t :foreground ,pink-flamingo :background ,livid-brown)))
   ; whitespace-mode faces
   `(whitespace-hspace ((t :foreground ,outer-space :background unspecified)))
   `(whitespace-newline ((t :foreground ,outer-space :background unspecified)))
   `(whitespace-space ((t :foreground ,outer-space :background unspecified)))
   `(whitespace-tab ((t :foreground ,outer-space :background unspecified)))))

; TODO: Convert all my old faces over

; diff faces
;(add-hook 'diff-mode-hook
;	  (lambda ()
;	    (set-face-foreground 'diff-header "#f8f8f8") ; italics
;	    (set-face-background 'diff-header "#0e2231")
;	    (set-face-background 'diff-file-header "#0e2231")
;	    (set-face-foreground 'diff-added "#f8f8f8")
;	    (set-face-background 'diff-added "#253b22")
;	    (set-face-foreground 'diff-changed "#f8f8f8")
;	    (set-face-background 'diff-changed "#4a410d")
;	    (set-face-foreground 'diff-context "#f8f8f8")
;	    (set-face-foreground 'diff-removed "#f8f8f8")
;	    (set-face-background 'diff-removed "#420e09")))

; ediff faces
;(add-hook 'ediff-load-hook
;	  (lambda ()
;	    (set-face-foreground ediff-current-diff-face-A nil)
;	    (set-face-background ediff-current-diff-face-A "#420e09")
;	    (set-face-foreground ediff-even-diff-face-A "#aeaeae")
;	    (set-face-background ediff-even-diff-face-A nil)
;	    (set-face-foreground ediff-fine-diff-face-A nil)
;	    (set-face-background ediff-fine-diff-face-A "#613b3a")
;	    (set-face-foreground ediff-odd-diff-face-A "#aeaeae")
;	    (set-face-background ediff-odd-diff-face-A nil)
;	    (set-face-foreground ediff-current-diff-face-B nil)
;	    (set-face-background ediff-current-diff-face-B "#253b22")
;	    (set-face-foreground ediff-even-diff-face-B "#aeaeae")
;	    (set-face-background ediff-even-diff-face-B nil)
;	    (set-face-foreground ediff-fine-diff-face-B nil)
;	    (set-face-background ediff-fine-diff-face-B "#4a5f4e")
;	    (set-face-foreground ediff-odd-diff-face-B "#aeaeae")
;	    (set-face-background ediff-odd-diff-face-B nil)
;	    (set-face-foreground ediff-current-diff-face-C nil)
;	    (set-face-background ediff-current-diff-face-C "#4a410d")
;	    (set-face-foreground ediff-even-diff-face-C "#aeaeae")
;	    (set-face-background ediff-even-diff-face-C nil)
;	    (set-face-foreground ediff-fine-diff-face-C nil)
;	    (set-face-background ediff-fine-diff-face-C "#67643d")
;	    (set-face-foreground ediff-odd-diff-face-C "#aeaeae")
;	    (set-face-background ediff-odd-diff-face-C nil)))

(provide-theme 'sunburst)
