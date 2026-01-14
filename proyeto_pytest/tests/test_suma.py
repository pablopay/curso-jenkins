import pytest

def suma(a, b):
    return a + b
    
def test_suma_():
    assert suma(2, 3) == 5
    assert suma(-1, 1) == 0
    assert suma(0, 0) == 0

def test_suma_fallo():
    assert suma(2, 2) == 5  # This test is intended to fail