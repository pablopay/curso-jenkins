import pytest

def multiplicacion(a, b):
    return a * b

def test_multiplicacion_():
    assert multiplicacion(2, 3) == 6
    assert multiplicacion(-1, 1) == -1
    assert multiplicacion(0, 5) == 0