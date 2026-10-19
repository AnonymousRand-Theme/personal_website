colors: {
  output = ''
    $font-size:   16px;
    $font-weight: 500;

    $body-border: ${colors.themed.variant-2-border};
    $body-bg:     ${colors.themed.variant-2-bg};
    $body-color:  ${colors.themed.variant-2-gray-fg};

    $variant-1-border: ${colors.themed.variant-1-border};
    $variant-1-bg:     ${colors.themed.variant-1-bg};
    $variant-1-color:  ${colors.themed.variant-1-gray-fg};

    $disabled-opacity: 0.5;

    $navbar-light-color:       $body-color;
    $navbar-light-hover-color: hsl(from #{$navbar-light-color} h s calc(l - 2.5));
    $navbar-dark-color:        $body-color;
    $navbar-dark-hover-color:  hsl(from #{$navbar-dark-color} h s calc(l - 2.5));

    @use "../node_modules/bootstrap/scss/bootstrap" with (
      // IMPORTANT: currently for bootstrap v5.3.*! variables may change in different versions

      // font

      $font-family-sans-serif: "Quicksand :3",
      $font-family-monospace:  "Maple Mono NL",
      $font-size-root:         $font-size,

      $font-weight-normal:   $font-weight,
      $headings-font-weight: $font-weight,
      $input-font-weight:    $font-weight,

      $red:     ${colors.accent_red_fg},
      $orange:  ${colors.accent_orange_fg},
      $yellow:  ${colors.accent_yellow_fg},
      $green:   ${colors.accent_green_fg},
      $teal:    ${colors.accent_teal_fg},
      $cyan:    ${colors.accent_cyan_fg},
      $blue:    ${colors.accent_blue_fg},
      $indigo:  ${colors.accent_indigo_fg},
      $purple:  ${colors.accent_purple_fg},
      $pink:    ${colors.accent_pink_fg},

      $primary:   ${colors.accent_default_fg},
      $secondary: ${colors.accent_cyan_fg},
      $success:   ${colors.success_fg},
      $info:      ${colors.info_fg},
      $warning:   ${colors.warning_fg},
      $danger:    ${colors.error_fg},
      $light:     ${colors.gray_xxxlight_bg},
      $dark:      ${colors.gray_xxdark_fg},

      // body

      $body-bg:    ${colors.variant_2_bg},
      $body-color: ${colors.variant_2_gray_fg},

      // links

      $link-color:       ${colors.link},
      $link-hover-color: ${colors.link_hover},

      // components

      $border-width:             2px,
      $border-color:             ${colors.themed.border-default},
      $border-color-translucent: rgb(${colors.themed.border-default}, 0.5),

      $component-active-bg:    ${colors.themed.accent-default-bg},
      $component-active-color: ${colors.themed.accent-default-fg},

      $text-muted: ${colors.gray_dark_fg},

      $hr-opacity: 1,
      $hr-color:   ${colors.themed.border-default},

      // tables

      $table-border-color:  ${colors.border_2},
      $table-caption-color: ${colors.gray_dark_fg},

      // buttons

      $btn-disabled-opacity:    $disabled-opacity,

      $btn-link-color:          ${colors.link},
      $btn-link-hover-color:    ${colors.link_hover},
      $btn-link-disabled-color: ${colors.link_disabled_fg},

      // forms

      $input-border-color: $variant-1-border,
      $input-bg:           $variant-1-bg,
      $input-color:        $variant-1-color,

      $form-check-input-border: 2px solid ${colors.themed.border-default},
      $form-check-input-bg:     $body-bg,

      $form-switch-color: ${colors.gray_xxxlight_bg},

      // e.g. file form button
      $input-group-addon-border-color: $variant-1-border,
      $input-group-addon-bg:           $variant-1-bg,
      $input-group-addon-color:        $variant-1-color,

      $form-file-button-hover-bg: hsl(from #{$variant-1-bg} h s calc(l - 2.5)),

      // override this as it tries to use `mix()` on css var
      $form-range-thumb-active-bg: ${colors.themed.accent-default-bg},

      // navbar

      $nav-link-disabled-color: ${colors.link_disabled_fg},

      $navbar-light-color:                $navbar-light-color,
      $navbar-light-hover-color:          $navbar-light-hover-color,
      $navbar-light-active-color:         hsl(from #{$navbar-light-hover-color} h s calc(l - 2.5)),
      $navbar-light-disabled-color:       rgb(from #{$navbar-light-color} r g b / $disabled-opacity),
      $navbar-light-toggler-border-color: ${colors.border_5},
      $navbar-light-toggler-icon-bg:      url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'><path stroke='${colors.themed.border-4-color}' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/></svg>"),

      $navbar-dark-color:                $navbar-dark-color,
      $navbar-dark-hover-color:          $navbar-dark-hover-color,
      $navbar-dark-active-color:         hsl(from #{$navbar-dark-hover-color} h s calc(l - 2.5)),
      $navbar-dark-disabled-color:       rgb(from #{$navbar-dark-color} r g b / $disabled-opacity),
      $navbar-dark-toggler-border-color: ${colors.border_5},
      $navbar-dark-toggler-icon-bg:      url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'><path stroke='${colors.themed.border-4-color}' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/></svg>"),

      // dropdowns

      $dropdown-border-color: $variant-1-border,
      $dropdown-bg:           $variant-1-bg,
      $dropdown-color:        $variant-1-color,

      $dropdown-link-color:       ${colors.link},
      $dropdown-link-hover-color: ${colors.link_hover},
      $dropdown-header-color:     ${colors.pink_xlight_fg},

      $dropdown-dark-border-color:     $variant-1-border,
      $dropdown-dark-bg:               $variant-1-bg,
      $dropdown-dark-color:            $variant-1-color,
      $dropdown-dark-link-color:       ${colors.link},
      $dropdown-dark-link-hover-color: ${colors.link_hover},
      $dropdown-dark-header-color:     ${colors.pink_xlight_fg},

      // cards

      $card-border-color: $variant-1-border,
      $card-bg:           $variant-1-bg,
      $card-color:        $variant-1-color,
      $card-cap-bg:       ${colors.default_bg},
      $card-cap-color:    ${colors.default_fg},

      // accordion

      // override this as it tries to use `mix()` on css var
      $accordion-button-active-bg:    ${colors.themed.accent-default-bg},
      $accordion-button-active-color: ${colors.themed.accent-default-fg},

      // tooltips

      $tooltip-opacity: 1,
      $tooltip-bg:      $variant-1-bg,
      $tooltip-color:   $variant-1-color,

      // popovers

      $popover-border-color: $variant-1-border,
      $popover-bg:           $variant-1-bg,
      $popover-body-color:   $variant-1-color,

      $popover-header-bg:    ${colors.default_bg},
      $popover-header-color: ${colors.default_fg},

      // modals

      $modal-content-bg:           $body-bg,
      $modal-content-border-color: $body-border,

      $modal-backdrop-bg:      ${colors.themed.accent-default-bg},
      $modal-backdrop-opacity: 0.3,

      $modal-header-border-color: ${colors.themed.border-default},
      $modal-footer-border-color: ${colors.themed.border-default},

      // figures

      $figure-caption-color: ${colors.gray_dark_fg},

      // close

      $btn-close-color: ${colors.pink_xlight_fg},

      // code

      $code-font-size: $font-size,
      $code-color:     ${colors.md_code_fg},
      $pre-color:      ${colors.gray_dark_fg}
    );
  '';
}
