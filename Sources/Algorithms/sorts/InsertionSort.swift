import Foundation

public extension Array where Element: Comparable {

    mutating func insertionSort(by comparator: ((Element, Element) -> Bool) = (<)) {
        guard self.count > 1 else { return }
        
        for index in 1 ..< self.count {
            var currentIndex = index
            let temp = self[currentIndex]
            
            while currentIndex > 0, comparator(temp, self[currentIndex - 1]) {
                self[currentIndex] = self[currentIndex - 1]
                currentIndex -= 1
            }
            self[currentIndex] = temp
        }
        
        return
    }
    
    func insertionSorted(by comparator: ((Element, Element) -> Bool) = (<)) -> [Element] {
        var data = self
        data.insertionSort(by: comparator)
        return data
    }
}
