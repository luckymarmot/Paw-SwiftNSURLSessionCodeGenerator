import Cocoa

class MyRequestController {
    
    func printSomething() {
        print("printSomething")
    }
    
    func sendGETRequest() {
        /* Configure session, choose between:
         * defaultSessionConfiguration
         * ephemeralSessionConfiguration
         * backgroundSessionConfigurationWithIdentifier:
         And set session-wide properties, such as: HTTPAdditionalHeaders,
         HTTPCookieAcceptPolicy, requestCachePolicy or timeoutIntervalForRequest.
         */
        let sessionConfig = URLSessionConfiguration.default
        
        /* Create session, and optionally set a URLSessionDelegate. */
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        /* Create the Request:
         Request (GET https://httpbin.org/get)
         */
        
        guard var URL = URL(string: "https://httpbin.org/get") else {return}
        let URLParams = [
            "search": "APIs",
            "ignoreCase": "null",
            ]
        URL = URL.appendingQueryParameters(URLParams)
        var request = URLRequest(url: URL)
        request.httpMethod = "GET"
        
        // Headers
        
        request.addValue("Basic dXNlcjpwd2Q=", forHTTPHeaderField: "Authorization")
        request.addValue("text/plain", forHTTPHeaderField: "Content-Type")
        
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                print("URL Session Task Succeeded: HTTP \(statusCode)")
            }
            else {
                // Failure
                print("URL Session Task Failed: %@", error!.localizedDescription);
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
    func sendTextRequest() {
        /* Configure session, choose between:
         * defaultSessionConfiguration
         * ephemeralSessionConfiguration
         * backgroundSessionConfigurationWithIdentifier:
         And set session-wide properties, such as: HTTPAdditionalHeaders,
         HTTPCookieAcceptPolicy, requestCachePolicy or timeoutIntervalForRequest.
         */
        let sessionConfig = URLSessionConfiguration.default
        
        /* Create session, and optionally set a URLSessionDelegate. */
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        /* Create the Request:
         Request Duplicate (POST https://httpbin.org/get)
         */
        
        guard var URL = URL(string: "https://httpbin.org/get") else {return}
        let URLParams = [
            "search": "APIs",
            "ignoreCase": "null",
            ]
        URL = URL.appendingQueryParameters(URLParams)
        var request = URLRequest(url: URL)
        request.httpMethod = "POST"
        
        // Headers
        
        request.addValue("Basic dXNlcjpwd2Q=", forHTTPHeaderField: "Authorization")
        request.addValue("text/plain", forHTTPHeaderField: "Content-Type")
        
        // Body
        
        let bodyString = "Preliminary publication process No. 369/2016"
        request.httpBody = bodyString.data(using: String.Encoding.utf8, allowLossyConversion: true)
        
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                print("URL Session Task Succeeded: HTTP \(statusCode)")
            }
            else {
                // Failure
                print("URL Session Task Failed: %@", error!.localizedDescription);
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
    func sendJSONRequest() {
        /* Configure session, choose between:
         * defaultSessionConfiguration
         * ephemeralSessionConfiguration
         * backgroundSessionConfigurationWithIdentifier:
         And set session-wide properties, such as: HTTPAdditionalHeaders,
         HTTPCookieAcceptPolicy, requestCachePolicy or timeoutIntervalForRequest.
         */
        let sessionConfig = URLSessionConfiguration.default
        
        /* Create session, and optionally set a URLSessionDelegate. */
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        /* Create the Request:
         Request Duplicate (POST https://httpbin.org/get)
         */
        
        guard var URL = URL(string: "https://httpbin.org/get") else {return}
        let URLParams = [
            "search": "APIs",
            "ignoreCase": "null",
            ]
        URL = URL.appendingQueryParameters(URLParams)
        var request = URLRequest(url: URL)
        request.httpMethod = "POST"
        
        // Headers
        
        request.addValue("Basic dXNlcjpwd2Q=", forHTTPHeaderField: "Authorization")
        request.addValue("text/plain", forHTTPHeaderField: "Content-Type")
        
        // JSON Body
        
        let bodyObject: [String : Any] = [
            "key": "1231ef3413412",
            "list": [
                "1",
                "2"
            ]
        ]
        request.httpBody = try! JSONSerialization.data(withJSONObject: bodyObject, options: [])
        
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                print("URL Session Task Succeeded: HTTP \(statusCode)")
            }
            else {
                // Failure
                print("URL Session Task Failed: %@", error!.localizedDescription);
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
    func sendFormURLEncoded() {
        /* Configure session, choose between:
         * defaultSessionConfiguration
         * ephemeralSessionConfiguration
         * backgroundSessionConfigurationWithIdentifier:
         And set session-wide properties, such as: HTTPAdditionalHeaders,
         HTTPCookieAcceptPolicy, requestCachePolicy or timeoutIntervalForRequest.
         */
        let sessionConfig = URLSessionConfiguration.default
        
        /* Create session, and optionally set a URLSessionDelegate. */
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        /* Create the Request:
         Request Duplicate (POST https://httpbin.org/get)
         */
        
        guard var URL = URL(string: "https://httpbin.org/get") else {return}
        let URLParams = [
            "search": "APIs",
            "ignoreCase": "null",
            ]
        URL = URL.appendingQueryParameters(URLParams)
        var request = URLRequest(url: URL)
        request.httpMethod = "POST"
        
        // Headers
        
        request.addValue("Basic dXNlcjpwd2Q=", forHTTPHeaderField: "Authorization")
        request.addValue("text/plain", forHTTPHeaderField: "Content-Type")
        
        // Form URL-Encoded Body
        
        let bodyParameters = [
            "key": "919830410",
            ]
        let bodyString = bodyParameters.queryParameters
        request.httpBody = bodyString.data(using: String.Encoding.utf8, allowLossyConversion: true)
        
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                print("URL Session Task Succeeded: HTTP \(statusCode)")
            }
            else {
                // Failure
                print("URL Session Task Failed: %@", error!.localizedDescription);
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
    func sendMultiPart() {
        /* Configure session, choose between:
         * defaultSessionConfiguration
         * ephemeralSessionConfiguration
         * backgroundSessionConfigurationWithIdentifier:
         And set session-wide properties, such as: HTTPAdditionalHeaders,
         HTTPCookieAcceptPolicy, requestCachePolicy or timeoutIntervalForRequest.
         */
        let sessionConfig = URLSessionConfiguration.default
        
        /* Create session, and optionally set a URLSessionDelegate. */
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        /* Create the Request:
         Request Duplicate (POST https://httpbin.org/get)
         */
        
        guard var URL = URL(string: "https://httpbin.org/get") else {return}
        let URLParams = [
            "search": "APIs",
            "ignoreCase": "null",
            ]
        URL = URL.appendingQueryParameters(URLParams)
        var request = URLRequest(url: URL)
        request.httpMethod = "POST"
        
        // Headers
        
        request.addValue("Basic dXNlcjpwd2Q=", forHTTPHeaderField: "Authorization")
        request.addValue("text/plain", forHTTPHeaderField: "Content-Type")
        
        // Body
        
        let bodyString = "--__X_PAW_BOUNDARY__\r\nContent-Disposition: form-data; name=\"key1\"\r\n\r\nasd\r\n--__X_PAW_BOUNDARY__\r\nContent-Disposition: form-data; name=\"key2\"\r\n\r\n123\r\n--__X_PAW_BOUNDARY__--\r\n"
        request.httpBody = bodyString.data(using: String.Encoding.utf8, allowLossyConversion: true)
        
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                print("URL Session Task Succeeded: HTTP \(statusCode)")
            }
            else {
                // Failure
                print("URL Session Task Failed: %@", error!.localizedDescription);
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
}


protocol URLQueryParameterStringConvertible {
    var queryParameters: String {get}
}

extension Dictionary : URLQueryParameterStringConvertible {
    /**
     This computed property returns a query parameters string from the given NSDictionary. For
     example, if the input is @{@"day":@"Tuesday", @"month":@"January"}, the output
     string will be @"day=Tuesday&month=January".
     @return The computed parameters string.
     */
    var queryParameters: String {
        var parts: [String] = []
        for (key, value) in self {
            let part = String(format: "%@=%@",
                              String(describing: key).addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!,
                              String(describing: value).addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
            parts.append(part as String)
        }
        return parts.joined(separator: "&")
    }
}

extension URL {
    /**
     Creates a new URL by adding the given query parameters.
     @param parametersDictionary The query parameter dictionary to add.
     @return A new URL.
     */
    func appendingQueryParameters(_ parametersDictionary : Dictionary<String, String>) -> URL {
        let URLString : String = String(format: "%@?%@", self.absoluteString, parametersDictionary.queryParameters)
        return URL(string: URLString)!
    }
}


// MARK: - Send Requests!

let ctrl = MyRequestController()

ctrl.printSomething()
ctrl.sendGETRequest()
ctrl.sendTextRequest()
ctrl.sendJSONRequest()
ctrl.sendFormURLEncoded()
ctrl.sendMultiPart()

print("Done!")

