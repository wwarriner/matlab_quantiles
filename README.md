# MATLAB Quantiles

A utility for determining quantiles and divisions from a vector of numerical values and an optional vector of numerical weights. The value vector and weights are treated as a cumulative distribution function (CDF). It is possible to convert a vector of quantiles into a vector of associated divisions (i.e. domain values) and vice-versa.

# Usage

To convert from quantiles to divisions and back:

`quants = div_to_quant( divs, values, weights = ones( size( values ) ), interpolation_method = 'linear' );`

`divs = quant_to_div( quants, values, weights = ones( size( values ) ), interpolation_method = 'linear' );`

To plot the CDF:

`handles = plot_quantiles( quantiles, values, weights = ones( size( values ) ), interpolation_method = 'linear' );`

`handles = plot_divisions( divisions, values, weights = ones( size( values ) ), interpolation_method = 'linear' );`

`handles = plot_*( axes_handle, ___ );`
