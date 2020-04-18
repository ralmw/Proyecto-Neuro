## Aqui se crea bonito la red
cd(dirname(@__FILE__))

include("funciones_red.jl")

# Vector de tamanos de cada capa
tamanos = [3,5,6,2]
# Crea la red
red = crea_red(tamanos)

# Stochastic Gradient Descent

a=[1,2,3]
b=5
# Datos de entrenamiento
# Estructura de los datos de entrenamiento
#               [ [ input, output ] ] donde input es un vector
training_data = [ [ [2,4,5] , [0,1] ] ]

# agrego nuevo dato
push!(training_data, [ [1,2,3], [1,0] ] )
push!(training_data, [ [8,7,2], [0,1] ] )
push!(training_data, [ [1,4,5], [1,0] ] )

epochs = 10000 #Numero de épocas
mini_batch_size = 2
m = mini_batch_size
mini_batch = training_data
eta = 1 #training rate

SGD(red,training_data, epochs, mini_batch_size, eta )

# El siguiente codigo,  si lo corremos a mano nos
# sirve para ver que la red si entrena
red.biases[1]

x,y = training_data[1]

feedforward(red,x)

y


## Para seguir con test_data hace falta saber
# como son los datos, su forma

test_results = []

for  in test_data
        x, y = dato
        # Este desmadre es porque es una matriz y regresa
        # coordenadas cartesianas
        a = findmax(feedforward(red,x))[2][1]
        push!(a, y)

        push!([feedforward(red,)])
feedforward(red,x)



findmax(feedforward(red,x))[2][1]

findmax(y)

findmax([.5,.6])[2]
