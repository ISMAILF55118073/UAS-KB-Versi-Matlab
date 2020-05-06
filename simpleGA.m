function [solusi,generasi] = simpleGA(target,besar_populasi,laju_mutasi)
    populasi = create_population(target,besar_populasi); 
    isLooping = true;
    generasi = 0;

    while isLooping
        [parent1,parent2] = selection(populasi);

        [child1,child2] = crossover(parent1,parent2);

        mutant1 = mutation(child1,laju_mutasi); 
        mutant2 = mutation(child2,laju_mutasi); 

        mutant1.fitness = calculate_fitness(mutant1.gen,target);
        mutant2.fitness = calculate_fitness(mutant2.gen,target);

        children = [mutant1, mutant2];
        populasi = regerenation(children, populasi);
        generasi = generasi + 1;

        [isLooping,solusi] = termination(populasi);
        logging(populasi,target,solusi,generasi);
    end
end