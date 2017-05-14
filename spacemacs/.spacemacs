;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.




;;(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     vimscript
     clojure
     ansible
     python
     javascript
     ;;clojure
     ;;go
     org
     html
     helm
     ;,; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     ;; markdown
     (shell :variables
             shell-default-height 30
             shell-default-position 'bottom
             shell-default-shell 'multi-term
             )
     ;; spell-checking
     syntax-checking
     version-control
     docker
     shell
     shell-scripts
     markdown
     yaml
     plantuml
     magit-work
     c-c++
     java
     org-gratex-html
     cscope
     sql
     tabbar
     command-log
     mu4e
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
 ;;                                     highlight-indent-guides
                                      editorconfig
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         spacemacs-dark
                         spacemacs-light)
   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non-nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non-nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing

   tab-width 4
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
;;  (setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)
  )

(defvar custom-mu4e-pushed-mode nil)
(defvar custom-mu4e-pushed-mode-ro nil)

(defun custom-mu4e-compose-toggle-org-mode ()
  (interactive)
  (if (or (string-equal major-mode "mu4e-compose-mode")
          (string-equal major-mode "mu4e-view-mode"))
      (progn (setq custom-mu4e-pushed-mode major-mode)
             (setq custom-mu4e-push-mode-ro buffer-read-only)
             (org-mode))
    (when (and (string-equal major-mode "org-mode")
               (not (equal custom-mu4e-pushed-mode nil)))
      (funcall custom-mu4e-pushed-mode)
      (buffer-read-only custom-mu4e-push-mode-ro)
      (setq custom-mu4e-push-ro nil))))

(defun custom-mu4e-all-fields ()
  (cl-loop for (header-type)
           in mu4e-header-info
           unless (or (string-equal (format "%s" header-type) ":human-date")
                      (string-equal (format "%s" header-type) ":thread-subject")
                      (string-equal (format "%s" header-type) ":from-or-to"))
           collect header-type))

(defun custom-mu4e-minimal-fields ()
  '(:from :to :cc :subject :date :attachments))

(defun custom-mu4e-middle-fields ()
  '(:from :to :cc :bcc :subject :flags :date :maildir
          :mailing-list :tags :attachments :signature
          :decryption :size))

(defun custom-mu4e-cycle-fields ()
  (interactive)
  (cond ((equal mu4e-view-fields (custom-mu4e-minimal-fields))
         (setq mu4e-view-fields (custom-mu4e-middle-fields)))
        ((equal mu4e-view-fields (custom-mu4e-middle-fields))
         (setq mu4e-view-fields (custom-mu4e-all-fields)))
        ((equal mu4e-view-fields (custom-mu4e-all-fields))
         (setq mu4e-view-fields (custom-mu4e-minimal-fields)))))

(defun custom-mu4e-init ()
  ;;; mu4e configuration
  (setq mu4e-get-mail-command "offlineimap -c ~/.offlineimap/.offlineimaprc"
        mu4e-drafts-folder "/Drafts"
        mu4e-sent-folder   "/Sent"
        mu4e-trash-folder  "/Trash"
        mu4e-maildir "~/.offlineimap/dmasar.gratex.com"
        mu4e-maildir-shortcuts
        '(("/INBOX"       . ?i)
          ("/Sent"        . ?s)
          ("/Trash"       . ?t)
          ("/All Mail"    . ?a))
        mu4e-attachment-dir "~/Downloads/attachments"
        mu4e-headers-fields '( (:human-date    .   8)
                               (:flags         .   4)
                               (:from          .   15)
                               (:subject       .   nil))
        mu4e-headers-visible-columns 60
        mu4e-view-fields (custom-mu4e-middle-fields)
        mu4e-view-show-images t
        mu4e-view-show-addresses t
        mu4e~view-cited-hidden nil
        mu4e~view-link-map t
        mu4e~view-attach-map t
        mu4e-compose-signature (concat "" "\n")
        mu4e-compose-format-flowed t
        mu4e-use-fancy-chars t
        mu4e-split-view 'vertical)
  (require 'smtpmail)
  (setq
        user-mail-address "dmasar@gratex.com"
        user-full-name  "Daniel Masar"
        message-send-mail-function 'smtpmail-send-it
        message-kill-buffer-on-exit t
        starttls-use-gnutls t
        smtpmail-starttls-credentials '("mail2.gratex.com" 587 nil nil)
        smtpmail-auth-credentials `(("mail2.gratex.com"
                                     587
                                     "dmasar"
                                     ,(car (split-string (shell-command-to-string "gnome-keyring-query get hqdomainpwd")))))
        smtpmail-default-smtp-server "mail2.gratex.com"
        smtpmail-smtp-server "mail2.gratex.com"
        smtpmail-smtp-service 587)
  (when (fboundp 'imagemagick-register-types)
    (imagemagick-register-types))
  (set-face-attribute 'mu4e-replied-face nil :inherit 'default))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  (eval-after-load 'mu4e
    '(progn
       (custom-mu4e-init)))

  (add-hook 'mu4e-compose-mode-hook
            (lambda ()
              (local-set-key (kbd "C-c C-g") 'custom-mu4e-compose-toggle-org-mode)))

  (add-hook 'mu4e-view-mode-hook
            (lambda ()
              (local-set-key (kbd "C-c C-g") 'custom-mu4e-compose-toggle-org-mode)))

  (add-hook 'org-mode-hook
            (lambda ()
              (local-set-key (kbd "C-c C-g") 'custom-mu4e-compose-toggle-org-mode)))

  (defun my-setup-indent (n)
    ;; java/c/c++
    (setq c-basic-offset (* 2 n))
    (setq java-basic-offset (* 2 n))
    (setq lisp-basic-offset n)
    (setq sh-basic-offset (* 1 n))
    (setq sh-indentation (* 1 n))
    (setq sh-indent-for-case-label 0)
    ;; web development
    (setq coffee-tab-width n) ; coffeescript
    (setq javascript-indent-level n) ; javascript-mode
    (setq js-indent-level n) ; js-mode
    (setq js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
    (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
    (setq web-mode-css-indent-offset n) ; web-mode, css in html file
    (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
    (setq css-indent-offset n) ; css-mode
    )

  (defun my-tabbar-buffer-groups () ;; customize to show all normal files in one group
    "Returns the name of the tab group names the current buffer belongs to.
 There are two groups: Emacs buffers (those whose name starts with '*', plus
 dired buffers), and the rest.  This works at least with Emacs v24.2 using
 tabbar.el v1.7."
    (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
                ((eq major-mode 'dired-mode) "emacs")
                ((eq major-mode 'term-mode) "term")
                ;;              ((string-prefix-p "*ansi-term" (buffer-name)) "term")
                ;;              ((string-prefix-p "org-src-" (buffer-name)) "emacs")
                ((string-equal " " (substring (buffer-name) 0 1)) "emacs")
                (t "user"))))

  (my-setup-indent 4)
  (setq tabbar-use-images nil)

  (evil-set-initial-state 'multi-term 'emacs)

  (global-evil-mc-mode 1) ;; enable mc mode

  (evil-leader/set-key "Q" 'redraw-display)

  (add-to-list 'spacemacs--indent-variable-alist '(org-mode . 4))

  (add-hook 'org-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "> >")
                (lambda () (interactive) (evil-shift-right (point-at-bol) (point-at-eol))))
              (define-key evil-normal-state-local-map (kbd "< <")
                (lambda () (interactive) (evil-shift-left (point-at-bol) (point-at-eol))))))

    (setq org-plantuml-jar-path
          (expand-file-name "~/plantuml/plantuml.8054.jar"))

    (add-hook 'sh-mode-hook 'spacemacs/toggle-smartparens-off)

  (eval-after-load 'org
    (lambda () (add-to-list 'org-babel-load-languages '(ditaa . t))))

  (eval-after-load 'org
    (lambda () (add-to-list 'org-babel-load-languages '(maxima . t))))

  (eval-after-load 'org
    (lambda () (add-to-list 'org-babel-load-languages '(gnuplot . t))))

  (eval-after-load 'org
    (lambda () (add-to-list 'org-babel-load-languages '(shell . t))))

  (eval-after-load 'org
    (lambda () (add-to-list 'org-babel-load-languages '(bash . t))))

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (python . t)
     (shell . t)
     (gnuplot . t)
     (C . t)
     (sql . t)
     (plantuml . t)
     (ledger . t)
     (ditaa . t)
     (js t)
     (clojure t)
     ))

  (loop for key in '([up] [down] [left] [right]) do
        (global-unset-key key)
        (define-key evil-motion-state-map key nil))

  (setq org-tags-column 150)
  (setq eclim-eclipse-dirs "~/opt/eclipse/eclipseNeon/eclipse"
        eclim-executable "~/opt/eclipse/eclipseNeon/eclipse/eclim")
  (setq-default c-basic-offset 8
                c-default-style "k&r")

  (setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)

  (define-key evil-motion-state-map "gt" 'tabbar-forward-tab)
  (define-key evil-motion-state-map "gT" 'tabbar-backward-tab)
  (define-key evil-motion-state-map "gj" 'tabbar-forward-group)
  (define-key evil-motion-state-map "gk" 'tabbar-backward-group)

(setq highlight-indent-guides-method 'character)
  )


(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-command "pandoc")
 '(org-agenda-files (quote ("~/git/todo/todo.org")))
 '(org-confirm-babel-evaluate nil)
 '(org-export-backends (quote (ascii html icalendar latex man md texinfo)))
 '(package-selected-packages
   (quote
    (meghanada editorconfig vimrc-mode dactyl-mode markdown-mode multiple-cursors avy packed eclim company smartparens highlight evil flycheck yasnippet helm helm-core alert log4e projectile magit magit-popup git-commit async hydra f js2-mode jinja2-mode clojure-snippets clj-refactor inflections edn paredit peg cider-eval-sexp-fu cider queue clojure-mode ansible-doc ansible yapfify web-mode tagedit sql-indent slim-mode scss-mode sass-mode pyvenv pytest pyenv-mode py-isort pug-mode pip-requirements live-py-mode less-css-mode insert-shebang hy-mode helm-pydoc helm-css-scss helm-cscope xcscope haml-mode fish-mode emmet-mode dockerfile-mode docker tablist docker-tramp disaster cython-mode company-web web-completion-data company-shell company-c-headers company-anaconda command-log-mode cmake-mode clang-format anaconda-mode pythonic yaml-mode xterm-color ws-butler window-numbering which-key web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spacemacs-theme spaceline smeargle shell-pop restart-emacs rainbow-delimiters quelpa popwin plantuml-mode persp-mode pcre2el paradox orgit org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file neotree multi-term move-text monokai-theme mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum livid-mode linum-relative link-hint json-mode js2-refactor js-doc info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag graphviz-dot-mode google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help elisp-slime-nav dumb-jump diff-hl define-word company-tern company-statistics company-emacs-eclim column-enforce-mode coffee-mode clean-aindent-mode auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(tabbar-separator (quote (0.5))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
)
