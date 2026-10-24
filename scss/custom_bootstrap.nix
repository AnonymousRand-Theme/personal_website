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

    @use "bootstrap/scss/bootstrap" with (
      // IMPORTANT: currently for bootstrap v5.3.*! variables may change in different versions

      // typography

      //$font-weight-normal:   $font-weight,
      //$headings-font-weight: $font-weight,
      //$input-font-weight:    $font-weight,

      $text-muted: ${colors.themed.gray_dark_fg.color_light},

      $hr-opacity: 1,
      $hr-color:   ${colors.themed.border_default.color_light},

      // components

      //$border-width:             2px,
      //$border-color:             ${colors.themed.border_default.color_light},
      //$border-color-translucent: rgb(${colors.themed.border_default.color_light}, 0.5),

      $component-active-bg:    ${colors.themed.accent_default_bg.color_light},
      $component-active-color: ${colors.themed.accent_default_fg.color_light},

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
      //$form-range-thumb-active-bg: ${colors.themed.accent_default_bg.color_light},

      // navbar

      $navbar-light-toggler-icon-bg:      url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'><path stroke='${colors.themed.border_4.color_light}' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/></svg>"),
      $navbar-dark-toggler-icon-bg:      url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'><path stroke='${colors.themed.border_4.color_light}' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/></svg>"),

      // accordion

      // override this as it tries to use `mix()` on css var
      //$accordion-button-active-bg:    ${colors.themed.accent_default_bg.color_light},
      //$accordion-button-active-color: ${colors.themed.accent_default_fg.color_light},

      // tooltips

      //$tooltip-opacity: 1,

      // popovers

      //$popover-border-color: $variant-1-border,
      //$popover-bg:           $variant-1-bg,
      //$popover-body-color:   $variant-1-color,

      //$popover-header-bg:    ${colors.themed.default_bg.color_light},
      //$popover-header-color: ${colors.themed.default_fg.color_light},

      // modals

      //$modal-content-border-color: $body-border,
      //$modal-content-bg:           $body-bg,

      //$modal-backdrop-bg:      ${colors.themed.accent_default_bg.color_light},
      //$modal-backdrop-opacity: 0.3,

      //$modal-header-border-color: ${colors.themed.border_default.color_light},
      //$modal-footer-border-color: ${colors.themed.border_default.color_light},

      // figures

      //$figure-caption-color: ${colors.themed.gray_dark_fg.color_light},

      // close

      //$btn-close-color: ${colors.themed.pink_xlight_fg.color_light},

      // code

      $code-font-size: 1em,
      //$code-color:     ${colors.themed.md_code.color_light},
      $pre-color:      ${colors.themed.gray_dark_fg.color_light}
    );
  '';
}
