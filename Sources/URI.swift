public struct URI {
    public struct UserInfo {
        public var username: String
        public var password: String

        public init(username: String, password: String) {
            self.username = username
            self.password = password
        }
    }

    public struct Query {
        public var key: String
        public var value: String?

        public init(key: String, value: String? = nil) {
            self.key = key
            self.value = value
        }
    }

    public var scheme: String?
    public var userInfo: UserInfo?
    public var host: String?
    public var port: Int?
    public var path: String?
    public var query: [Query]
    public var fragment: String?
}