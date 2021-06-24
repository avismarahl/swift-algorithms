import Foundation

extension Array where Element: Comparable {

    mutating func bubbleSort(by comparator: ((Element, Element) -> Bool) = (<)) {
        if self.count < 2 { return }
        
        for i in 0 ..< self.count - 1 {
            for j in 0 ..< self.count - i - 1 where comparator(self[j + 1], self[j]) {
                self.swapAt(j, j + 1)
            }
        }
        
        return
    }
    
    func bubbleSorted(by comparator: ((Element, Element) -> Bool) = (<)) -> [Element] {
        var data = self
        data.bubbleSort(by: comparator)
        return data
    }
}
