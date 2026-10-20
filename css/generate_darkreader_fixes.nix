colors:
{ lib }:
let
  cssVarName = name: (import ../../get_css_var_name.nix name { inherit lib; }).output;

  generateCssStr = lines: ''
    :root {
      ${lib.concatStringsSep "\n  " lines}
    }
  '';

  getDarkReaderType = color_name:
    if lib.strings.hasInfix "border" color_name then "border"
    else if lib.strings.hasInfix "bg" color_name then "bg"
    else if lib.strings.hasInfix "fg" color_name then "text"
    else builtins.trace (
      "personal_website/generate_darkreader_fixes.nix: `getDarkReaderType()`: "
      + "darkreader type of \"${color_name}\" could not be determined, using \"text\" 0~0"
    ) "text";

  # we are not mapping `colors.vars` since you shouldn't be using them directly,
  # and we can't tell what darkreader "type" (border, bg, text) to assign to these vars
  themeLines = lib.mapAttrsToList (name: value:
    let
      # this is because `cssVarName` should append all necessary descriptors to the css var name
      # that we can tell what darkreader type it is from its name
      cssVar = cssVarName name;
    in
    "--darkreader-${getDarkReaderType cssVar}---${cssVar}: ${value.color_dark};"
  ) colors.themed;

in
{
  output = generateCssStr themeLines;
}
