#!/usr/bin/python3
from unittest import TestCase
from my_sum import sum

class TestSum(TestCase):
    def test_list_ints(self):
        """Test if can sum list of integers"""
        data = [1, 2, 3]
        result = sum(data)
        self.assertEqual(result, 6)


if __name__ == "__main__":
    unittest.main()
