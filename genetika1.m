clear
clc

target = 'wiro sableng'

panjang_target = length(target);

gen_baru = create_gen(panjang_target)
fitness = calculate_fitness(gen_baru,target)

function gen = create_gen(panjang_gen)
    random_number = randi([32,126],1,panjang_gen);
    gen = char(random_number);
end

function fitness = calculate_fitness(gen,target)
    fitness = (sum(target == gen)/length(target))*100;
end
 
%ismail
%F55118073
%kelas B