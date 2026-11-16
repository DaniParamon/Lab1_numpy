# cython: language_level=3, boundscheck=False, wraparound=False, cdivision=True

def sum_squares_list(list data):
    """Сумма квадратов элементов списка (типизированная переменная цикла)."""
    cdef double s = 0.0
    cdef double x
    for x in data:
        s += x * x
    return s


def sum_squares_arr(double[::1] a):
    """Сумма квадратов элементов массива через типизированное memoryview."""
    cdef Py_ssize_t i, n = a.shape[0]
    cdef double s = 0.0
    for i in range(n):
        s += a[i] * a[i]
    return s
