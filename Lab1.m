srand(1791);
N = [20, 100];
binCount = 10;
for i=1:length(N)
    n = N(i);
    data = zeros(n, 1);
    for in=1:n
        data(in) = multcongen();%squaregen();
    end
    
    [counts, binCenters] = hist(data, binCount);
    normalizedCounts = counts./(sum(counts)*abs(binCenters(2)-binCenters(1)));
    m = mean(data);
    d = var(data);
    s = 2;
    r = 12*sum(data(1:end-s).*data(s+1:end))/(n-s) - 3; % тестирование независимости
    
    subplot(2, 2, i);
    bar(binCenters, normalizedCounts, 1);
    title(sprintf('Гистограмма, n = %d', n));
    
    ax = subplot(2, 2, i+2);
    t = {sprintf('M = %f', m), ...
        sprintf('D = %f', d), ...
        sprintf('R = %f', r)};
    text(0, 1, t);
    set(ax, 'visible', 'off');
end

%% Нахождение длины периода
n = 100;
data = zeros(n, 1);
    for in=1:n
        data(in) = squaregen();%multcongen();
    end
disp(repeatPeriod(data));