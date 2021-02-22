function height = playJenga()
    % Play Jenga and determine the height at which the tower first
    % collapses!
    
    centers = [0]; %#ok
    height = 1;
    
    while ~doBlocksCollapse(centers)
        belowCenter = centers(height);
        newCenter = placeOneBlockOnTop(belowCenter);
        centers = [centers; newCenter]; %#ok
        height = height + 1;
    end
end