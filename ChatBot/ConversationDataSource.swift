import Foundation
class ConversationDataSource {
    
    var messages = [openingLine]
    var messageCount: Int {
        return messages.count
    }
    
    func add(question: String) {
        print("Asked to add question: \(question)")
        
        let message = Message(date: Date(), text: question, type: .question)
        messages.append(message)
    }
    
    func add(answer: String) {
        print("Asked to add answer: \(answer)")
        
        let message = Message(date: Date(), text: answer, type: .answer)
        messages.append(message)
    }
    
    func messageAt(index: Int) -> Message {
        print("Asking for message at index \(index)")
        return messages[index]
    }
}
