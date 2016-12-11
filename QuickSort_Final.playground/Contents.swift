
func fastQuicksort(a: [Int]) -> [Int] {
    guard a.count > 1 else {return a}

    let pivot = a[0]
    let less = a.filter{$0 < pivot}
    let equal = a.filter{$0 == pivot}
    let greater = a.filter{$0 > pivot}
    let result = fastQuicksort(less) + equal + fastQuicksort(greater)
    return result
}

let list1 = [ 5,8,1,3,7,9,2 ]
print (fastQuicksort(list1))






func partition(inout list : [Int], low: Int, high : Int) -> Int {
    let pivot = list[high]
    var j = low
    var i = j - 1
    while j < high {
        if list[j] <= pivot{
            i += 1
            (list[i], list[j]) = (list[j], list[i])
        }
        j += 1
    }
    (list[i+1], list[high]) = (list[high], list[i+1])
    return i+1
}

func quikcSort(inout list : [Int] , low : Int , high : Int) {
    
    if low < high {
        let pIndex = partition(&list, low: low, high: high)
        quikcSort(&list, low: low, high: pIndex-1)
        quikcSort(&list, low: pIndex + 1, high: high)
    }
}

var list = [7,3,15,10,0,8,2,4]
quikcSort(&list, low: 0, high: list.count-1)
print(list)

var list2 = [ 10, 0, 3, 9, 2, 14, 26, 27, 1, 5, 8, -1, 8 ]
quikcSort(&list2, low: 0, high: list2.count-1)
print(list2)

var list3 = [1,3,9,8,2,7,5]
quikcSort(&list3, low: 0, high: list3.count-1)
print(list3)
