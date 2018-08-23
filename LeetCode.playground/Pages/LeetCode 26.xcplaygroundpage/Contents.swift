//: 26.删除排序数组中的重复项

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    if nums.count <= 1 {
        return nums.count
    }
    
    var i = 0
    for j in 0..<nums.count {
        if nums[j] != nums[i] {
            i += 1
            nums[i] = nums[j]
        }
    }
    
    if i != nums.count {
        for _ in (i+1)..<nums.count {
            nums.remove(at: i+1)
        }
    }
    
    return i + 1;
}

//测试

var nums0 = [0]
removeDuplicates(&nums0)
print(nums0)

var nums1 = [0,1,1,2,2,2,3,3,4]
removeDuplicates(&nums1)
print(nums1)
