# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} coordinates
# @return {Integer[]}
def count_black_blocks(m, n, coordinates)
    counter = [0,0,0,0,0]
    for i in 0..m-2 do
        for j in 0..n-2 do
            counter_square = 0
            #get square coordinates
            coordinates_square = [[i,j],[i+1,j],[i,j+1],[i+1,j+1]]
            #diff square coordinates in coordinates
            coordinates_aux = coordinates - coordinates_square
            counter_square = coordinates.length - coordinates_aux.length
            counter[counter_square] += 1
        end
    end
    counter
end
