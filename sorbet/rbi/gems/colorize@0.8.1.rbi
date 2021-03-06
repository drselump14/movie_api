# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `colorize` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Colorize; end

module Colorize::ClassMethods
  def color_codes; end
  def color_matrix(_ = T.unsafe(nil)); end
  def color_methods; end
  def color_samples; end
  def colors; end
  def disable_colorization(value = T.unsafe(nil)); end
  def disable_colorization=(value); end
  def mode_codes; end
  def modes; end
  def modes_methods; end
end

module Colorize::InstanceMethods
  def colorize(params); end
  def colorized?; end
  def uncolorize; end

  private

  def background_color(color); end
  def color(color); end
  def color_from_symbol(match, symbol); end
  def colors_from_hash(match, hash); end
  def colors_from_params(match, params); end
  def defaults_colors(match); end
  def mode(mode); end
  def require_windows_libs; end
  def scan_for_colors; end
  def split_colors(match); end
end
