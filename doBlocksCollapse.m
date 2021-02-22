function res = doBlocksCollapse(centers)
    % Given the current list of centers (all the way down to the first
    % block whose center is at 0, determine whether the list of centers
    % would collapse the tower
    
    % A tower collapses if the block or the set of blocks have center of
    % gravity exceeding outside of +/- 0.5.
    
    if length(centers) <= 1
        res = false;
        return;
    end
    
    sumCenter = 0;
    counter = 1;
    for k = length(centers):-1:2
        curCenter = centers(k);
        sumCenter = sumCenter + curCenter;
        avgCenter = sumCenter / counter;
        belowCenter = centers(k-1);
        
        if ~isWithinRange(avgCenter, belowCenter)
            res = true;
            return;
        end
        
        counter = counter + 1;
        
    end
    
    res = false;
end

function res = isWithinRange(curCenter, belowCenter)
    % Assume block of length one.  Determine if the current Center of
    % Gravity for the above blocks is within range of the below block.
    belowRange = [belowCenter - 0.5, belowCenter + 0.5];
    if curCenter < belowRange(1) || curCenter > belowRange(2)
        res = false;
    else
        res = true;
    end
end