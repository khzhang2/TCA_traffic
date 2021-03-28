% Leeds = 'site8700_1_20210101_20210131.csv';
% London = 'siteM4_2210B_20210101_20210131.csv';
% 
% data_leeds = csvread(Leeds);
% data_london = csvread(London);
% 
% figure();
% subplot(121);
% title('leeds');
% mesh(data_leeds);
% subplot(122);
% title('london');
% mesh(data_london);

train = csvread('train_x_temp.csv');
test = csvread('target_x_temp.csv');
figure()
subplot(221)
title('train')
mesh(train)
subplot(222)
title('target')
mesh(test)

subplot(223)
title('train')
for i=1:size(train, 1)
hold on
plot(train(i, :))
end
subplot(224)
title('target')
for i=1:size(test, 1)
hold on
plot(test(i, :))
end