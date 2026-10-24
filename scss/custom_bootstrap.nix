colors: {
  output = ''
    $font-size:   16px;
    $font-weight: 500;

    $body-border: ${colors.themed.variant_2_border.color_light};
    $body-bg:     ${colors.themed.variant_2_bg.color_light};
    $body-color:  ${colors.themed.variant_2_gray_fg.color_light};

    $variant-1-border: ${colors.themed.variant_1_border.color_light};
    $variant-1-bg:     ${colors.themed.variant_1_bg.color_light};
    $variant-1-color:  ${colors.themed.variant_1_gray_fg.color_light};

    $disabled-opacity: 0.5;

    $navbar-light-color:       $body-color;
    $navbar-light-hover-color: hsl(from #{$navbar-light-color} h s calc(l - 2.5));
    $navbar-dark-color:        $body-color;
    $navbar-dark-hover-color:  hsl(from #{$navbar-dark-color} h s calc(l - 2.5));

    @use "bootstrap/scss/bootstrap" with (
      // IMPORTANT: currently for bootstrap v5.3.*! variables may change in different versions

      // font

      $font-family-sans-serif: ("Quicksand :3", "Quicksand", sans-serif),
      $font-family-monospace:  ("Maple Mono NL", monospace),
      $font-size-root:         $font-size,

      $font-weight-normal:   $font-weight,
      $headings-font-weight: $font-weight,
      $input-font-weight:    $font-weight,

      $red:     ${colors.themed.accent_red_fg.color_light},
      $orange:  ${colors.themed.accent_orange_fg.color_light},
      $yellow:  ${colors.themed.accent_yellow_fg.color_light},
      $green:   ${colors.themed.accent_green_fg.color_light},
      $teal:    ${colors.themed.accent_teal_fg.color_light},
      $cyan:    ${colors.themed.accent_cyan_fg.color_light},
      $blue:    ${colors.themed.accent_blue_fg.color_light},
      $indigo:  ${colors.themed.accent_indigo_fg.color_light},
      $purple:  ${colors.themed.accent_purple_fg.color_light},
      $pink:    ${colors.themed.accent_pink_fg.color_light},

      $primary:   ${colors.themed.accent_default_fg.color_light},
      $secondary: ${colors.themed.accent_cyan_fg.color_light},
      $success:   ${colors.themed.success_fg.color_light},
      $info:      ${colors.themed.info_fg.color_light},
      $warning:   ${colors.themed.warning_fg.color_light},
      $danger:    ${colors.themed.error_fg.color_light},
      $light:     ${colors.themed.gray_xxxlight_bg.color_light},
      $dark:      ${colors.themed.gray_xxdark_fg.color_light},

      // body

      $body-bg:    ${colors.themed.variant_2_bg.color_light},
      $body-color: ${colors.themed.variant_2_gray_fg.color_light},

      // links

      $link-color:       ${colors.themed.link.color_light},
      $link-hover-color: ${colors.themed.link_hover.color_light},

      // components

      $border-width:             2px,
      $border-color:             ${colors.themed.border_default.color_light},
      $border-color-translucent: rgb(${colors.themed.border_default.color_light}, 0.5),

      $component-active-bg:    ${colors.themed.accent_default_bg.color_light},
      $component-active-color: ${colors.themed.accent_default_fg.color_light},

      $text-muted: ${colors.themed.gray_dark_fg.color_light},

      $hr-opacity: 1,
      $hr-color:   ${colors.themed.border_default.color_light},

      // tables

      $table-border-color:  ${colors.themed.border_default.color_light},
      $table-caption-color: ${colors.themed.gray_dark_fg.color_light},

      // buttons + forms
      // (shared variables that are reassigned to `$input-` and `$btn-` specific variables)

      $input-btn-focus-color-opacity: 0.25,

      // e.g. file form button? (though that actually seems to use `--bs-tertiary-bg`?)
      $input-group-addon-border-color: $variant-1-border,
      $input-group-addon-bg:           $variant-1-bg,
      $input-group-addon-color:        $variant-1-color,

      // buttons

      $btn-disabled-opacity:    $disabled-opacity,

      $btn-link-color:          ${colors.themed.link.color_light},
      $btn-link-hover-color:    ${colors.themed.link_hover.color_light},
      $btn-link-disabled-color: ${colors.themed.link_disabled.color_light},

      // forms

      $input-border-color: $variant-1-border,
      $input-bg:           $variant-1-bg,
      $input-color:        $variant-1-color,

      $form-check-input-border: 2px solid ${colors.themed.border_default.color_light},
      $form-check-input-bg:     $body-bg,

      $form-switch-color: ${colors.themed.gray_xxxlight_bg.color_light},

      $form-file-button-hover-bg: hsl(from #{$variant-1-bg} h s calc(l - 2.5)),

      // override this as it tries to use `mix()` on css var
      $form-range-thumb-active-bg: ${colors.themed.accent_default_bg.color_light},

      // navbar

      $nav-link-disabled-color: ${colors.themed.link_disabled.color_light},

      $navbar-light-color:                $navbar-light-color,
      $navbar-light-hover-color:          $navbar-light-hover-color,
      $navbar-light-active-color:         hsl(from #{$navbar-light-hover-color} h s calc(l - 2.5)),
      $navbar-light-disabled-color:       rgb(from #{$navbar-light-color} r g b / $disabled-opacity),
      $navbar-light-toggler-border-color: ${colors.themed.border_5.color_light},
      $navbar-light-toggler-icon-bg:      url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'><path stroke='${colors.themed.border_4.color_light}' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/></svg>"),

      $navbar-dark-color:                $navbar-dark-color,
      $navbar-dark-hover-color:          $navbar-dark-hover-color,
      $navbar-dark-active-color:         hsl(from #{$navbar-dark-hover-color} h s calc(l - 2.5)),
      $navbar-dark-disabled-color:       rgb(from #{$navbar-dark-color} r g b / $disabled-opacity),
      $navbar-dark-toggler-border-color: ${colors.themed.border_5.color_light},
      $navbar-dark-toggler-icon-bg:      url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'><path stroke='${colors.themed.border_4.color_light}' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/></svg>"),

      // dropdowns

      $dropdown-border-color: $variant-1-border,
      $dropdown-bg:           $variant-1-bg,
      $dropdown-color:        $variant-1-color,

      $dropdown-link-color:       $variant-1-color,
      $dropdown-link-hover-color: $variant-1-color,
      $dropdown-header-color:     ${colors.themed.pink_xlight_fg.color_light},

      $dropdown-dark-border-color:     $variant-1-border,
      $dropdown-dark-bg:               $variant-1-bg,
      $dropdown-dark-color:            $variant-1-color,
      $dropdown-dark-link-color:       $variant-1-color,
      $dropdown-dark-link-hover-color: $variant-1-color,
      $dropdown-dark-header-color:     ${colors.themed.pink_xlight_fg.color_light},

      // cards

      $card-border-color: $variant-1-border,
      $card-bg:           $variant-1-bg,
      $card-color:        $variant-1-color,
      $card-cap-bg:       ${colors.themed.default_bg.color_light},
      $card-cap-color:    ${colors.themed.default_fg.color_light},

      // accordion

      // override this as it tries to use `mix()` on css var
      $accordion-button-active-bg:    ${colors.themed.accent_default_bg.color_light},
      $accordion-button-active-color: ${colors.themed.accent_default_fg.color_light},

      // tooltips

      $tooltip-opacity: 1,
      $tooltip-bg:      $variant-1-bg,
      $tooltip-color:   $variant-1-color,

      // popovers

      $popover-border-color: $variant-1-border,
      $popover-bg:           $variant-1-bg,
      $popover-body-color:   $variant-1-color,

      $popover-header-bg:    ${colors.themed.default_bg.color_light},
      $popover-header-color: ${colors.themed.default_fg.color_light},

      // modals

      $modal-content-bg:           $body-bg,
      $modal-content-border-color: $body-border,

      $modal-backdrop-bg:      ${colors.themed.accent_default_bg.color_light},
      $modal-backdrop-opacity: 0.3,

      $modal-header-border-color: ${colors.themed.border_default.color_light},
      $modal-footer-border-color: ${colors.themed.border_default.color_light},

      // figures

      $figure-caption-color: ${colors.themed.gray_dark_fg.color_light},

      // close

      $btn-close-color: ${colors.themed.pink_xlight_fg.color_light},

      // code

      $code-font-size: 1em,
      $code-color:     ${colors.themed.md_code.color_light},
      $pre-color:      ${colors.themed.gray_dark_fg.color_light}
    );
  '';
}
