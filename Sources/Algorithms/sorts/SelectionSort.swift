import Foundation

extension Array where Element: Comparable {
    mutating func selectionSort() {
        guard self.count > 1 else { return }
        
        for primaryindex in 0 ..< self.count {
            var minimum = primaryindex
            var secondaryindex = primaryindex + 1
            while secondaryindex < self.count {
                if self[minimum] > self[secondaryindex] {
                    minimum = secondaryindex
                }                
                secondaryindex += 1
            }
            if primaryindex != minimum {
                self.swapAt(primaryindex, minimum)
            }            
        }
        return
    }
    
    func selectionSorted() -> [Element] {
        var data = self
        data.selectionSort()
        return data
    }
}
