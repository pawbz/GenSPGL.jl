
export spgdemo

function spgdemo()

# Create random m-by-n encoding matric and sparse vector
m = 50; n = 128; k = 14
A,Rtmp = qr(randn(n,m))
A = A'
p = randperm(n)
p = p[1:k]
x0 = zeros(n,1)
x0[p] = randn(k,1);

b = A*x0
tau=convert(Float64,pi)

# LASSO
sigma = []
x0=[]
opts = spgOptions()

spg_lasso(A,b; tau = tau)
end