function [ values, weights ] = qd_unique( values, weights )

assert( isvector( values ) );
assert( isnumeric( values ) );
assert( isvector( weights ) );
assert( isnumeric( weights ) );
assert( all( size( values ) == size( weights ) ) );

samples = sortrows( [ values( : ) weights( : ) ], 1 );

values = samples( :, 1 );
[ unique_values, unique_indices ] = unique( values );
unique_indices = length( values ) - flip( unique_indices ) + 1;

weights = samples( :, 2 );
normalized_cumulative_weight = cumsum( weights ) ./ sum( weights );
unique_weights = normalized_cumulative_weight( unique_indices );

[ weights, unique_indices ] = unique( unique_weights );
weights = [ 0; weights( 2 : end ) ];
values = unique_values( unique_indices );

assert( ~isempty( values ) );
assert( ~isempty( weights ) );

end

