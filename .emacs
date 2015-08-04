;;(cd "~/devel/")

(add-to-list 'load-path "~/.emacs.d/plugins/cscope")
(setq additional-paths '("~" "~/.emacs.d/plugins"))
(setq additional-paths '("~" "~/.emacs.d/plugins/tabbar"))
(setq load-path (append additional-paths load-path))

(load "~/.emacs.d/plugins/nxml-mode-20041004/rng-auto.el")
(setq cscope-do-not-update-database t)
(require'xcscope)
(load-file "~/.emacs.d/plugins/eproject-0.4/eproject.el")
(load-file "~/.emacs.d/plugins/auto-complete-extension.el")


;;;;;;;;;;;;;;;;;
;; APPEARANCE
;;;;;;;;;;;;;;;;;
; set c-mode for all .go and .cmd type files and awk
(setq auto-mode-alist (cons '("\\.text$" . text-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.txt$" . text-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.doc$" . text-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.awk$" . awk-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.perl$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pl$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.C$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cpp$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cxx$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tcl$" . tcl-mode) auto-mode-alist))

;; ========================================================
;; SYSTEME
;; ========================================================

;; Environnement
(set-language-environment "UTF-8")

;; Fichier custom
;(setq custom-file "~/.emacs-custom.el")
;(load custom-file)

;; Inhiber l'affichage du message d'accueil
(setq inhibit-startup-message t)

;; Afficher l'heure et la date
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time-mode t)

;; Désactiver le son
(setq ring-bell-function 'ignore)



;;========================================================
;; AFFICHAGE
;;========================================================

;; Afficher les barres de menu
(menu-bar-mode t)
(tool-bar-mode t)
(scroll-bar-mode t)
(column-number-mode t)

;; Positionner la scrollbar à droite
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-compile-window-width (quote edit-window))
 '(ecb-layout-name "left15")
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-buffer-style (quote image))
 '(scroll-bar-mode (quote right)))

;; Cas où les lignes sont trop lignes
(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)



;;=========================================================
;; COULEURS
;;=========================================================

;; Colorisation syntaxique maximale dans tous les modes
(require 'font-lock)
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; Montrer la correspondance des parenthèses
(require 'paren)
(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; Couleur des parenthèses
(set-face-background 'show-paren-match "blue")

;; Couleur des chaines de caractères
(setq font-lock-face-attributes '((font-lock-string-face "darkviolet")))

;; Choix de la police de caractères en environnement graphique
;(if (eq window-system 'x)
;    (progn
;      (set-default-font "FreeMono-11")
;      ;; Taille par défaut de la fenêtre 80 x 35 caractères, et positionnement en pixel   
;      (setq initial-frame-alist '((top 1) (left 1) (width 80) (height 35)))
;      )
;  )
(setq default-frame-alist (append default-frame-alist
                                  '((foreground-color . "white")
                                    ;;(background-color . "slategrey")
                                    (background-color . "black")
                                    (cursor-color . "red"))))
(setq font-lock-maximum-decoration t)
(setq visible-bell t)
(setq require-final-newline t)
(setq resize-minibuffer-frame t)
(setq column-number-mode t)
(setq-default transient-mark-mode t)
(setq next-line-add-newlines nil)
(setq blink-matching-paren nil)
(global-font-lock-mode t)
(blink-cursor-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(setq default-frame-alist (append default-frame-alist
                                  '((foreground-color . "white")
                                    (background-color . "slategrey")
                                    (cursor-color . "red"))))

(set-face-foreground 'bold "yellow")
(set-face-background 'bold "grey40")

(set-face-foreground 'bold-italic "yellow green")
(set-face-foreground 'italic "yellow3")

(set-face-foreground 'region "yellow4")
(set-face-background 'region "grey75")



;;=========================================================
;; PREFERENCES
;;=========================================================

;; Lorsqu'on saisit un texte alors qu'une zone est sélectionnée, cette dernière est écrasée par le texte saisi.
(delete-selection-mode t)

;; Utiliser des espaces pour indenter
(setq indent-tabs-mode nil)

;; Complétion automatique qui ignore la casse
(global-set-key "\C-t" "\M-/")
(setq completion-ignore-case t) 

;; Remplacer "yes" et "no" par "y" et "n"
(fset 'yes-or-no-p 'y-or-n-p)

;; Activer la mise en exergue des espaces superflus ou hétérogènes
(require 'whitespace)

;; Supprimer tous les espaces en fin de ligne
(autoload 'nuke-trailing-whitespace "whitespace" nil t)

;; Mettre un titre aux fenêtres
(setq frame-title-format '(buffer-file-name "%b"))



;;========================================================
;; RACCOURCIS CLAVIER
;;========================================================

;; Commenter ou non le texte selectionné
(global-set-key (kbd "C-c c") 'comment-dwim)

;; Remplacer chaine de caractères
(global-set-key (kbd "C-c f") 'query-replace)

;; Ouverture d'un term dans emacs
(global-set-key (kbd "M-t") 'term)

;; Window navigation
(global-set-key [f1] 'delete-other-windows)
(global-set-key [f2] 'split-window-vertically)
(global-set-key [f3] 'split-window-horizontally)

;;(when (fboundp 'windmove-default-keybindings)
;;  (windmove-default-keybindings))
;;(global-set-key (kbd "C-x <left>")  'windmove-left)
;;(global-set-key (kbd "C-x <right>") 'windmove-right)
;;(global-set-key (kbd "C-x <up>")    'windmove-up)
;;(global-set-key (kbd "C-x <down>")  'windmove-down)
;;(global-set-key (kbd "C-c <right>") 'hs-show-block)
;;(global-set-key (kbd "C-c <left>")  'hs-hide-block)
;;(global-set-key (kbd "C-c <up>")    'hs-hide-all)
;;(global-set-key (kbd "C-c <down>")  'hs-show-all)

;; Rappel des fondamentaux:
;; "M-w" : copier
;; "C-y" : coller
;; "C-w" : couper
;; "C-x C-s" : sauvegarder



;; ========================================================
;; Mode d'édition préféré par type de fichier
;; ========================================================

;; Sélection du mode d'édition en fonction du nom de fichier.
(setq auto-mode-alist
  (append
    '(("\\.k?sh\\'" . sh-mode)
      ("bash" . sh-mode)
      ("profile" . sh-mode)
      ("[Mm]akefile\\'" . makefile-mode)
      ("\\.mk\\'" . makefile-mode)
      ("\\.[ch]\\'" . c-mode)
      ("\\.[ch]pp\\'" . c++-mode)
      ("\\.x[ms]l\\'" . nxml-mode)
      ("\\.[sx]?html?\\'" . nxml-mode)
      ("\\.php\\'" . php-mode)
      ("\\.sql\\'" . sql-mode)
      ("\\.tcl\\'" . tcl-mode)
      ("\\.vhd\\'" . vhdl-mode)
     )
     auto-mode-alist
  )
)




;;========================================================
;; C/C++
;;========================================================

;; Charger le mode C/C++
(require 'cc-mode)

;; Définition d'un style
(defconst my-c-style
  '(;; Indentation via la touche TAB
    (c-tab-always-indent . t)
    ;; Formatage à 78 colonnes
    (fill-column . 78)    
    ;; Le style d'indentation
    (setq c-default-style "k&r")   
    ;; L'indentation se fait avec un pas de 2 caractères
    (c-basic-offset . 2)
    ;; Aligner les commentaires avec le code
    (c-comment-only-line-offset . 0)
    ;; Les commentaires multi-ligne commencent par une simple ligne '/*'
    (c-hanging-comment-starter-p . t)
    ;; et se terminent par une simple ligne '*/'
    (c-hanging-comment-ender-p . t)
    ;; Cas où une accolade est « électrique » (i.e. provoque une mise
    ;; en page automatique)
    (c-hanging-braces-alist .
      ((substatement-open after)
       (brace-list-open)
       (brace-entry-open)
       (block-close . c-snug-do-while)
       (extern-lang-open after)
       (inexpr-class-open after)
       (inexpr-class-close before)))
    ;; Cas où le caractère « : » est « électrique » (i.e. provoque une
    ;; mise en page automatique)
    (c-hanging-colons-alist .
      ((member-init-intro before)
       (inher-intro)
       (case-label after)
       (label after)
       (access-label after)))
    ;; Nettoyage automatique de certaines mises en page
    (c-cleanup-list .
      (scope-operator
       empty-defun-braces
       defun-close-semi))
    (c-offsets-alist .
      (;; Première ligne d'une construction de premier niveau (par
       ;; exemple une déclaration de fonction)
       (topmost-intro . 0)
       ;; Lignes suivantes d'une construction de premier niveau
       (topmost-intro-cont . 0)
       ;; Première ligne d'une liste d'argument
       (arglist-intro . +)
       ;; Argument lorsque la ligne ouvrant la liste ne contient pas
       ;; d'argument.
       (arglist-cont . 0)
       ;; Argument lorsque la ligne ouvrant la liste en contient au moins un.
       (arglist-cont-nonempty . c-lineup-arglist)
       ;; Parenthèse fermant une liste d'arguments mais non précédée d'un
       ;; argument sur la même ligne.
       (arglist-close . c-lineup-close-paren)
       ;; Première ligne d'une instruction quelconque
       (statement . 0)
       ;; Lignes suivantes de l'instruction quelconque
       (statement-cont . +)
       ;; Première ligne d'un bloc
       (statement-block-intro . +)
       ;; Première ligne d'un bloc case
       (statement-case-intro . +)
       ;; Première ligne d'un bloc case commençant par une accolade
       (statement-case-open . 0)
       ;; Instruction suivant une instruction de test ou de contrôle de boucle
       (substatement . +)
       ;; Accolade suivant une instruction de test ou de contrôle de boucle
       (substatement-open . 0)
       ;; Accolade ouvrante d'une énumération ou d'un tableau statique
       (brace-list-open . 0)
       ;; Accolade fermante d'une énumération ou d'un tableau statique
       (brace-list-close . 0)
       ;; Première ligne d'une énumération ou d'un tableau statique
       (brace-list-intro . +)
       ;; Lignes suivantes d'une énumération ou d'un tableau statique
       (brace-list-entry . 0)
       ;; Lignes suivantes d'une énumération ou d'un tableau statique
       ;; commençant par une accolade ouvrante
       (brace-entry-open . 0)
       ;; Label d'un switch
       (case-label . +)
       ;; Label d'une classe (public, protected, private) en retrait d'un pas
       ;; par rapport à l'indentation normale au sein d'une classe (cf.
       ;; déclaration « inclass » plus bas).
       (access-label . -)
       ;; Autres labels
       (label . 0)
       ;; Ouverture de bloc
       (block-open . 0)
       ;; Fermeture de bloc
       (block-close . 0)
       ;; A l'intérieur d'une chaîne multi-ligne
       (string . c-lineup-dont-change)
       ;; Première ligne d'un commentaire
       (comment-intro . c-lineup-comment)
       ;; A l'intérieur d'un commentaire C multi-ligne
       (c . c-lineup-C-comments)
       ;; Accolade ouvrant une fonction
       (defun-open . 0)
       ;; Accolade fermant une fonction
       (defun-close . 0)
       ;; Code suivant l'accolade ouvrante d'une fonction
       (defun-block-intro . +)
       ;; Clause else d'une expression conditionnelle
       (else-clause . 0)
       ;; Clause catch d'une instruction try
       (catch-clause . 0)
       ;; Accolade ouvrant une déclaration de classe
       (class-open . 0)
       ;; Accolade fermant la déclaration de classe
       (class-close . 0)
       ;; Accolade ouvrante d'une méthode définie dans la classe elle-même
       ;; (inline)
       (inline-open . 0)
       ;; Accolade fermante de la méthode inline
       (inline-close . 0)
       ;; Alignement des opérateurs de flux (<< et >>) sur les opérateurs de
       ;; flux de la ligne précédente
       (stream-op . c-lineup-streamop)
       ;; Ligne incluse dans une déclaration de classe (double indentation car
       ;; les labels d'accès public, protected et private sont déjà indentés)
       (inclass . ++)
       ;; Accolade ouvrant un bloc en langage externe (extern "C" {})
       (extern-lang-open . 0)
       ;; Accolade fermant un bloc en langage externe
       (extern-lang-close . 0)
       ;; Indentation dans un bloc de langage externe
       (inextern-lang . +)
       ;; Accolade ouvrant un bloc d'espace de nom
       (namespace-open . 0)
       ;; Accolade fermant un bloc d'espace de nom
       (namespace-close . 0)
       ;; Indentation dans un bloc d'espace de nom
       (innamespace . +)
       ;; Première ligne d'héritage
       (inher-intro . +)
       ;; Lignes suivantes d'héritage
       (inher-cont . c-lineup-multi-inher)
       ;; Première ligne de la liste d'initialisation
       (member-init-intro . +)
       ;; Lignes suivantes de la liste d'initialisation
       (member-init-cont . c-lineup-multi-inher)
       ;; Lignes entre la déclaration de fonction et l'accolade ouvrante. En
       ;; C, il n'y a rien mais en C++, il y a les listes d'initialisation
       (func-decl-cont . +)
       ;; Première ligne d'une macro (avec un décalage négatif excessif afin
       ;; d'être certain qu'elle reste collée à gauche en toute circonstance
       (cpp-macro . -1000)
       ;; Lignes suivantes d'une macro
       (cpp-macro-cont . c-lineup-dont-change)
       ;; Fonction amie
       (friend . 0)
       ;; while qui termine une instruction do { ... } while (...);
       (do-while-closure . 0)
       ;; Bloc d'instruction à l'intérieur d'une expression
       (inexpr-statement . 0)
       ;; Définition de classe à l'intérieur d'une expression (cela n'a de
       ;; sens qu'en Java mais autant définir ce contexte au cas où...)
       (inexpr-class . +)
       ;; Lignes autres que la première d'un modèle de fonction ou de classe
       (template-args-cont . +)
       ;; Arguments d'une fonction à la sauce K&R
       (knr-argdecl-intro . +)
       (knr-argdecl . 0)))
    (c-echo-syntactic-information-p . t)
  )
  "My C Programming Style"
)

;; Faire du style défini ci-dessus le style C/C++ par défaut
(defun my-c-mode-common-hook ()
  (c-add-style "PERSONAL" my-c-style t)
)
(add-hook 'c-mode-hook 'my-c-mode-common-hook)
(add-hook 'c++-mode-hook 'my-c-mode-common-hook)

; Activation systématique du mode mineur HS dans les modes C/C++
(add-hook 'c-mode-common-hook 'hs-minor-mode t)

; configure ECB and activate if not in terminal
(require 'ecb)
(setq ecb-tip-of-the-day nil)
(setq ecb-help-info-start-file nil)
(setq ecb-help-html-start-file nil)
(if (not (eq window-system nil))
  (ecb-activate))
(defun ecb-off ()
  (interactive)
  ()
  (ecb-deactivate)
  (set-screen-width 80))
(defun ecb-on ()
  (interactive)
  ()
  (set-screen-width 119)
  (ecb-activate))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
 
;; This tab override shouldn't be necessary given ido's default 
;; configuration, but minibuffer-complete otherwise dominates the 
;; tab binding because of my custom tab-completion-everywhere 
;; configuration.
(add-hook 'ido-setup-hook 
          (lambda () 
            (define-key ido-completion-map [tab] 'ido-complete)))

;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
;(when (require 'yasnippet nil t)
;  (yas/initialize)
;  (yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets/"))


;; Proper kill of emacs by shutdown -h
(defun my-sigusr2-handler ()
  (interactive)
  (kill-emacs))
(define-key special-event-map [sigusr2] 'my-sigusr2-hander)


(global-set-key (kbd "C-x C-b") 'ibuffer)
;; Ensure ibuffer opens with point at the current buffer's entry.
(defadvice ibuffer
  (around ibuffer-point-to-most-recent) ()
  "Open ibuffer with cursor pointed to most recent buffer name."
  (let ((recent-buffer-name (buffer-name)))
    ad-do-it
    (ibuffer-jump-to-buffer recent-buffer-name)))
(ad-activate 'ibuffer)

;; ---------------------------------------
;; load cmake-mode
;; ---------------------------------------
(require 'cmake-mode)
(setq auto-mode-alist
        (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                  ("\\.cmake\\'" . cmake-mode))
                auto-mode-alist))
;; ---------------------------------------
;; load doxygen
;; ---------------------------------------
(require 'doxymacs)
(add-hook 'c-mode-common-hook'doxymacs-mode)
(defun doxymacs-font-lock ()
  (interactive)
  (font-lock-add-keywords nil doxymacs-doxygen-keywords))

;; ---------------------------------------
;; load tabbar
;; ---------------------------------------
(require 'tabbar)
(tabbar-mode 1)
(tabbar-local-mode 1)
;; Sort tabbar buffers by name
(defun tabbar-add-tab (tabset object &optional append_ignored)
  "Add to TABSET a tab with value OBJECT if there isn't one there yet.
 If the tab is added, it is added at the beginning of the tab list,
 unless the optional argument APPEND is non-nil, in which case it is
 added at the end."
  (let ((tabs (tabbar-tabs tabset)))
    (if (tabbar-get-tab object tabset)
        tabs
      (let ((tab (tabbar-make-tab object tabset)))
        (tabbar-set-template tabset nil)
        (set tabset (sort (cons tab tabs)
                          (lambda (a b) (string< (buffer-name (car a)) (buffer-name (car b))))))))))
;; Tab navigation made easy
(global-set-key [M-left] 'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)
;; Windows-style behaviour and key bindings
(dolist (func '(tabbar-mode tabbar-forward-tab tabbar-forward-group tabbar-backward-tab tabbar-backward-group))
      (autoload func "tabbar" "Tabs at the top of buffers and easy control-tab navigation"))
(defmacro defun-prefix-alt (name on-no-prefix on-prefix &optional do-always)
      `(defun ,name (arg)
         (interactive "P")
         ,do-always
         (if (equal nil arg)
             ,on-no-prefix
           ,on-prefix)))
(defun-prefix-alt shk-tabbar-next (tabbar-forward-tab) (tabbar-forward-group) (tabbar-mode 1))
(defun-prefix-alt shk-tabbar-prev (tabbar-backward-tab) (tabbar-backward-group) (tabbar-mode 1))
(global-set-key [(control tab)] 'shk-tabbar-next)
(global-set-key [(control shift tab)] 'shk-tabbar-prev)
;; Add a buffer modification state indicator in the tab label, and place a
;; space around the label to make it looks less crowd.
(defadvice tabbar-buffer-tab-label (after fixup_tab_label_space_and_flag activate)
   (setq ad-return-value
         (if (and (buffer-modified-p (tabbar-tab-value tab))
                  (buffer-file-name (tabbar-tab-value tab)))
             (concat " + " (concat ad-return-value " "))
           (concat " " (concat ad-return-value " ")))))
;; Called each time the modification state of the buffer changed.
(defun ztl-modification-state-change ()
   (tabbar-set-template tabbar-current-tabset nil)
   (tabbar-display-update))
;; First-change-hook is called BEFORE the change is made.
(defun ztl-on-buffer-modification ()
   (set-buffer-modified-p t)
   (ztl-modification-state-change))
 (add-hook 'after-save-hook 'ztl-modification-state-change)
;; This doesn't work for revert, I don't know.
;;(add-hook 'after-revert-hook 'ztl-modification-state-change)
(add-hook 'first-change-hook 'ztl-on-buffer-modification)

;;;; This snippet enables lua-mode
;; This line is not necessary, if lua-mode.el is already on your load-path
(add-to-list 'load-path "~/.emacs.d/plugins/lua-mode")

(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; system changes
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; ---------------------------------------
;; load ediff
;; ---------------------------------------
;; Usage: emacs -diff file1 file2
(load-library "ediff")
(defun command-line-diff (switch)
   (let ((file1 (pop command-line-args-left))
        (file2 (pop command-line-args-left)))
   (ediff file1 file2)))
    
(add-to-list 'command-switch-alist '("diff" . command-line-diff))
;; This is what you probably want if you are using a tiling window
;; manager under X, such as ratpoison.
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
;; To make ediff to be horizontally split use:
;; Note that you can also split the window depending on the frame width:
(setq ediff-split-window-function (if (> (frame-width) 150)
                                   'split-window-horizontally
                                   'split-window-vertically))
;; Save the windows configuration before ediff
;; Some custom configuration to ediff
(defvar my-ediff-bwin-config nil "Window configuration before ediff.")
(defcustom my-ediff-bwin-reg ?b
  "*Register to be set up to hold `my-ediff-bwin-config'
configuration.")
    
(defvar my-ediff-awin-config nil "Window configuration after ediff.")
(defcustom my-ediff-awin-reg ?e
  "*Register to be used to hold `my-ediff-awin-config' window
configuration.")
    
(defun my-ediff-bsh ()
  "Function to be called before any buffers or window setup for
  ediff."
  (setq my-ediff-bwin-config (current-window-configuration))
  (when (characterp my-ediff-bwin-reg)
    (set-register my-ediff-bwin-reg
      (list my-ediff-bwin-config (point-marker)))))
     
(defun my-ediff-ash ()
  "Function to be called after buffers and window setup for ediff."
  (setq my-ediff-awin-config (current-window-configuration))
  (when (characterp my-ediff-awin-reg)
    (set-register my-ediff-awin-reg
      (list my-ediff-awin-config (point-marker)))))
    
(defun my-ediff-qh ()
  "Function to be called when ediff quits."
  (when my-ediff-bwin-config
    (set-window-configuration my-ediff-bwin-config)))
    
(add-hook 'ediff-before-setup-hook 'my-ediff-bsh)
(add-hook 'ediff-after-setup-windows-hook 'my-ediff-ash 'append)
(add-hook 'ediff-quit-hook 'my-ediff-qh)

(add-hook 'ediff-load-hook
  (lambda ()
    (add-hook 'ediff-before-setup-hook
      (lambda ()
        (setq ediff-saved-window-configuration (current-window-configuration))))
    
    (let ((restore-window-configuration
      (lambda ()
        (set-window-configuration ediff-saved-window-configuration))))
          (add-hook 'ediff-quit-hook restore-window-configuration 'append)
          (add-hook 'ediff-suspend-hook restore-window-configuration 'append))))
(add-hook 'ediff-startup-hook
  (lambda () 
    (progn
      (select-frame-by-name "Ediff")
        (set-frame-size(selected-frame) 40 10))))

(desktop-read) ; reload the desktop file (type only once: M-x desktop-save)


