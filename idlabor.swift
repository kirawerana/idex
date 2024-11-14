/// A function that performs some operation with a given content closure.
/// 
/// - Parameter content: A closure that receives a string and returns a modified string.
/// - Returns: The result of the content closure.
func performOperation(with content: (String) -> String) -> String {
    let input = "Original Content"
    let result = content(input)
    return result
}
