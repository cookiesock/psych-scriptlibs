self = {}

self.MIN_VALUE_FLOAT = 5e-324
self.MAX_VALUE_FLOAT = 1.79e+308
self.MIN_VALUE_INT = 0-MAX_VALUE_INT
self.MAX_VALUE_INT = 0x7FFFFFFF
self.SQUARE_ROOT_OF_TWO = 1.41421356237
self.EPSILON = 0.0000001

function self.roundDecimal(value, precision)
    mult = 1;
    for i = 0,precision-1 do
        mult = mult*10;
    end
    return math.floor((value * mult)+0.5) / mult;
end
function self.bound(value, min, max)
    if not min == nil and value < min then 
        lowerBound = min
    else 
        lowerBound = value
    end
    if not max == nil and lowerBound > max
        theReturn = max
    else
        theReturn = lowerBound
    end
    return theReturn
end
function self.lerp(a, b, ratio)
    return a + ratio * (b - a);
end
function self.inBounds(value, min, max)
	return (min == nil or value >= min) and (max == nil or value <= max)
end
function self.isOdd(n)
	return (math.floor(n)%2 == 1);
end
function self.isEven(n)
	return (math.floor(n)%2 == 0);
end
function self.numericComparison(a, b)
    if b > a then
        return -1
    elseif a > b then
        return 1
    end
    return 0
end
function self.wrap(value, min, max)
		range = max - min + 1;

		if value < min then
			value = value + (range * math.floor((min - value) / range + 1))
        end

		return min + (value - min) % range;
end
function self.remapToRange(value, start1, stop1, start2, stop2)
    return start2 + (value - start1) * ((stop2 - start2) / (stop1 - start1))
end


return self