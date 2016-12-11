
func countingSort(list:[Int]) -> [Int]? {
    if let max = list.maxElement(){
        
        // 1. Counting
        var countingList = [Int](count: Int(max + 1), repeatedValue: 0)
        for n in list{
            countingList[n] += 1
        }
        
        // 2. Sum
        for i in 1..<countingList.count{
            countingList[i] += countingList[i-1]
        }
        
        
        // 3. Substract & Index.
        
        var sortedList = [Int] (count: Int(list.count), repeatedValue: 0)
        
        for num in list{
            countingList[num] -= 1
            sortedList[countingList[num]] = num
        }
        print(sortedList)
        return sortedList
    }
    return nil
}


var list = [9,4,15,7,1,1,7,2,10,9,0,1]
countingSort(list)

var inputList1 = [9,8,5,6,4,2,2,1,1]
countingSort(inputList1)

var inputList2 = [1,4,1,2,7,5]
countingSort(inputList2)