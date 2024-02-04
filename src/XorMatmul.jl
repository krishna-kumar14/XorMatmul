module XorMatmul

greet() = print("Hello World!")

export xor_matmul!

function add(a,b)
    while (b != 0)
        carry = a & b
        a = a ⊻ b
        b = carry << 1
    end
    return a
end

function xor_matmul!(out, mat, in)
    N = length(out)
    fill!(out,0)

    for i in 1:N
        for j in 1:N
            out[i] = add(out[i],(mat[i,j] & in[j]))
        end
    end
    print(out)
end

end # module XorMatmul