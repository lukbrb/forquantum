import numpy as np


# Matrices générales

zero2 = np.zeros((2,2))
zero4 = np.zeros((4,4))
un2 = np.eye(2)
un4 = np.eye(4)

# Définitions des matrices de Pauli

s1 = np.array([[0, 1], [1, 0]])
s2 = np.array([[0, -1], [1, 0]]) * complex(0, 1)
s3 = np.array([[1, 0], [0, -1]])

# Matrices de Dirac

beta = np.block([[un2, zero2], [zero2, -un2]])
alpha1 = np.block([[zero2, s1], [s1, zero2]])
alpha2 = np.block([[zero2, s2], [s2, zero2]])
alpha3 = np.block([[zero2, s3], [s3, zero2]])


gamma0 = beta
gamma1 = np.block([[zero2, s1], [-s1, zero2]])
gamma2 = np.block([[zero2, s2], [-s2, zero2]])
gamma3 = np.block([[zero2, s3], [-s3, zero2]])


def commutateur(a, b):
    return a @ b - b @ a


def anticommutateur(a, b):
    return a @ b + b @ a


sigma_01 = complex(0, 1/2) * commutateur(gamma0, gamma1)

# Démonstration éq. (3.5)

w = 0.5
exposant = -complex(0, 1/2) * w * sigma_01

print("Matrices de Pauli")
print("s1=", s1)
print("s2=", s2)
print("s3=", s3)

print("Matrices de Dirac")
print("beta =", beta)
print("alpha1=", alpha1)
print("alpha2=", alpha2)
print("alpha3=", alpha3)

print("Matrices gamma")
print("gamma0=", gamma0)
print("gamma1=", gamma1)
print("gamma2=", gamma2)
print("gamma3=", gamma3)
