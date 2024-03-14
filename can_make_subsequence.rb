# @param {String} str1
# @param {String} str2
# @return {Boolean}
def can_make_subsequence(str1, str2)
    get_combinations(str1).each do |combination|
        return true if is_subsequence?(combination,str2)
    end
    false
end

def get_combinations(str1)
    n = str1.length
    result = []

    # Iterar sobre todos los conjuntos de índices posibles
    (1..2**n - 1).each do |i|
        indices = selected_indexes(i,n)
        # Reemplazar las letras en los índices seleccionados
        new_str = str1.dup
        indices.each do |idx|
            new_str[idx] = (new_str[idx].ord + 1).chr == "{" ? "a":(new_str[idx].ord + 1).chr
        end

        result << new_str
    end
  result
end

def selected_indexes(i,n)
    indices = []
    # Convertir el número a binario y obtener los índices seleccionados
    (0..n - 1).each do |j|
        indices << j if (i & (1 << j)) != 0
    end
    indices
end

def is_subsequence?(str1, str2)
    return true if str1 == str2
    n = str1.length
    (1..2**n - 1).each do |i|
        indices = selected_indexes(i,n)
        new_str = ""
        for idx in 0..n-1
            new_str+=(str1[idx]) if indices.index(idx) != nil 
        end
        return true if str2 == new_str
    end
    false
end
