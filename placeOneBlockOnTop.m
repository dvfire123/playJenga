function newCenter = placeOneBlockOnTop(belowCenter)
    % Given the belowCenter, place a block on top of it assuming each block
    % of length 1.
    
    % We assume the center is always going to be along the block beneath
    % it.
    newCenter = rand - 0.5 + belowCenter;    
end