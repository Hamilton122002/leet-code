class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        found_solution = False
        i = 0
        solution_list = []
        while i < len(nums) and not found_solution:
            j = i + 1
            while j < len(nums) and not found_solution:
                if nums[j] + nums[i] == target:
                    found_solution = True
                    solution_list.append(i)
                    solution_list.append(j)
                j += 1
            i += 1
        return solution_list
