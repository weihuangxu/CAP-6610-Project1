function [mean, sig, pi, pz] = EM_Gaussian(x, num_components);

Maxiteration = 600;
threshold = 1e-5;

%initialization
for i=1:num_components
    mean(i,:) = rand(1,size(x,2));
    sig(:,:,i) = 1 * eye(size(mean,2));
    pi(i) = 1/num_components;
end

for k = 1:num_components
    pz(:,k) = mvnpdf(x, mean(k,:), squeeze(sig(:,:,k)))*pi(k);
end

pz = pz ./ repmat(sum(pz,2),[1,num_components]);

Diff = inf;
Num_iteration = 1;
while(Diff > threshold && Num_iteration <= Maxiteration)
    mean_old = mean;
    sig_old = sig;
    pi_old = pi;
    
    for k=1:num_components
        mean(k,:) = sum(x.*repmat(pz(:,k),[1,size(x,2)]))./sum(repmat(pz(:,k),[1,size(x,2)]));
        xDiff = (x-repmat(mean(k,:),[size(x,1),1]));
        j = zeros(squeeze(size(sig(:,:,k))));
        for i=1:size(x,1)
            j = j + pz(i,k)*(xDiff(i,:)'*xDiff(i,:));
        end
        sig(:,:,k) = j/sum(pz(:,k));
        pi(k) = sum(pz(:,k))/size(x,1);
    end
    
    for k=1:num_components
        pz(:,k) = mvnpdf(x,mean(k,:),squeeze(sig(:,:,k)))*pi(k);
    end
    pz = pz ./ repmat(sum(pz,2),[1,num_components]);
    Diff = sum(sum(abs(mean_old-mean)))+sum(sum(sum(abs(sig_old-sig))))+sum(abs(pi_old-pi));
    Num_iteration = Num_iteration+1;
    mean
    sig
    pi
    Num_iteration
end
        
       