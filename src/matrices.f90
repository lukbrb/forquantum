module matrices
    implicit none

    private 

    interface print_mat
        module procedure print_mat_real, print_mat_int, print_mat_cmplx
    end interface
 
    public print_mat, I2, I4, s1, s2, s3, beta, a1, a2, a3, g0, g1, g2, g3
    

    real, parameter :: I2(2, 2) = reshape([ 1, 0, & 
                                            0, 1 ], [2, 2])

    real, parameter :: I4(4, 4) = reshape([ 1, 0, 0, 0, &
                                            0, 1, 0, 0, &
                                            0, 0, 1, 0, &
                                            0, 0, 0, 1 ], [4, 4])
    
    real, parameter :: s1(2, 2) = reshape([0., 1., & 
                                           1., 0. ], [2, 2])

    complex, parameter :: s2(2, 2) = reshape([cmplx(0., 0), cmplx(0., -1.), & 
                                              cmplx(0., 1.), cmplx(0., 0.)], [2, 2])

    real,  parameter :: s3(2, 2) = reshape([1., 0., & 
                                            0., -1. ], [2, 2])

    real, parameter :: beta(4, 4) = reshape([ 1, 0, 0, 0, &
                                            0, 1, 0, 0, &
                                            0, 0, -1, 0, &
                                            0, 0, 0, -1 ], [4, 4])

    real, parameter :: a1(4, 4) = reshape([ 0, 0, 0, 1, &
                                            0, 0, 1, 0, &
                                            0, 1, 1, 0, &
                                            1, 0, 0, 0 ], [4, 4])

    complex, parameter :: a2(4, 4) = reshape([ cmplx(0., 0), cmplx(0., 0), cmplx(0., 0), cmplx(0., -1.), &
                                               cmplx(0., 0), cmplx(0., 0), cmplx(0., 1.), cmplx(0., 0),  &
                                               cmplx(0., 0), cmplx(0., -1.), cmplx(0., 0), cmplx(0., 0), &
                                               cmplx(0., 1.), cmplx(0., 0), cmplx(0., 0), cmplx(0., 0) ], [4, 4])
    
    real, parameter :: a3(4, 4) = reshape([ 0, 0, 1, 0,  &
                                            0, 0, 0, -1, &
                                            1, 0, 0, 0,  &
                                            0, -1, 0, 0 ], [4, 4])
    
    real, parameter :: g0(4, 4) = beta

    real, parameter :: g1(4, 4) = reshape([ 0, 0, 0, 1, &
                                            0, 0, 1, 0, &
                                            0, -1, 1, 0, &
                                            -1, 0, 0, 0 ], [4, 4])
    
    complex, parameter :: g2(4, 4) = reshape([ cmplx(0., 0), cmplx(0., 0), cmplx(0., 0), cmplx(0., -1.), &
                                               cmplx(0., 0), cmplx(0., 0), cmplx(0., 1.), cmplx(0., 0),  &
                                               cmplx(0., 0), cmplx(0., 1.), cmplx(0., 0), cmplx(0., 0), &
                                               cmplx(0., -1.), cmplx(0., 0), cmplx(0., 0), cmplx(0., 0) ], [4, 4])
    
    real, parameter :: g3(4, 4) = reshape([ 0, 0, 1, 0,  &
                                            0, 0, 0, -1, &
                                            -1, 0, 0, 0,  &
                                            0, 1, 0, 0 ], [4, 4])                                           
contains
            
    ! TODO: Améliroer affichage avec https://fortran-lang.org/en/learn/intrinsics/transform/#id27
    subroutine print_mat_real(matrice)
        ! TODO: ajouter argument optionnel pour l'espace (le 3 dans I3) d'affichage
        real, dimension(:, :), intent(in) :: matrice
        character(1) :: formatteur
        
        print *, ""
        write(formatteur, '(I0)') size(matrice(:, 1))
        write(*, '(' // trim(formatteur) //'(F6.2))') matrice
    end subroutine

    subroutine print_mat_int(matrice)
        ! TODO: ajouter argument optionnel pour l'espace (le 3 dans I3) d'affichage
        integer, dimension(:, :), intent(in) :: matrice
        character(1) :: formatteur

        print *, ""
        write(formatteur, '(I0)') size(matrice(:, 1))
        write(*, '(' // trim(formatteur) //'(I3))') matrice
    end subroutine

    subroutine print_mat_cmplx(matrice)
        complex, dimension(:, :), intent(in) :: matrice
        character(1) :: formatteur

        print *, ""
        write(formatteur, '(I0)') size(matrice(:, 1))
        write(*, '(' // trim(formatteur) //'(F6.2, "+", F6.2, "i"))') matrice
    end subroutine print_mat_cmplx
end module matrices
