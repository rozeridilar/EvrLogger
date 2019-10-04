public class EvrLogger {
    
    enum LogType {
        case debug, error, info, warning
        //📒📘📙
        func getChar() -> String {
            switch self {
            case .debug:
                return "📗"
            case .error:
                return "📕"
            case .info:
                return "📘"
            case .warning:
                return "📙"
            }
        }
        
        func getName() -> String {
            switch self {
            case .debug:
                return "DEBUG"
            case .error:
                return "ERROR"
            case .info:
                return "INFO"
            case .warning:
                return "WARNING"
            }
        }
    }
    
    public init(file: String = #file, line: Int = #line, function: String = #function, _ message: String) {
        let type = LogType.info
        print(" \(type.getChar()) \(type.getName()) \(type.getChar()) \(EvrLogger.getFileName(file)).\(function) -> \(message)")
    }
    
    public class func d(file: String = #file, line: Int = #line, function: String = #function, _ message: String) {
        let type = LogType.debug
        print(" \(type.getChar()) \(type.getName()) \(type.getChar()) \(EvrLogger.getFileName(file)).\(function) -> \(message)")
    }
    
    public class func i(file: String = #file, line: Int = #line, function: String = #function, _ message: String) {
        let type = LogType.info
        print(" \(type.getChar()) \(type.getName()) \(type.getChar()) \(EvrLogger.getFileName(file)).\(function) -> \(message)")
    }
    
    public class func e(file: String = #file, line: Int = #line, function: String = #function, _ message: String) {
           let type = LogType.error
           print(" \(type.getChar()) \(type.getName()) \(type.getChar()) \(EvrLogger.getFileName(file)).\(function) -> \(message)")
       }
    
    public class func debug(file: String = #file, line: Int = #line, function: String = #function) -> String {
        return "\(file):\(line) : \(function)"
    }
    
    public class func getFileName(_ filePath: String) -> String {
        let parser = filePath.split(separator:"/")
        if let fileName = String(parser.last ?? "").split(separator: ".").first {
            return String(fileName)
        }
        return ""
    }
}
