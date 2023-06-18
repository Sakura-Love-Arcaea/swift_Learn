import Foundation
do {
    let filePATH: String = "./test.txt"
    let file_handler: FileHandle = FileHandle(forReadingAtPath: filePATH)!
    let data: Data = try file_handler.readToEnd()!
    let text: String = String(data: data, encoding: .utf8)!
    print(text)
} catch {
    print("error")
}


