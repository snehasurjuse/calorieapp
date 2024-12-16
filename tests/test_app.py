# tests/test_app.py

def add(a, b):
    return a + b

def test_add():
    # Test if the add function works correctly
    assert add(2, 3) == 5
    assert add(0, 0) == 0
    assert add(-1, 1) == 0
