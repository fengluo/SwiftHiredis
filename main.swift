import CHiredis

let conn:UnsafeMutablePointer<redisContext>  = redisConnect("127.0.0.1",6379)

let setReply:UnsafeMutablePointer<Void> = redisSendCommand(conn, "SET foo 1234")
freeReplyObject(setReply)

let getReply:UnsafeMutablePointer<Void> = redisSendCommand(conn, "GET foo")

var getReplyPtr:UnsafeMutablePointer<redisReply> = unsafeBitCast(getReply, UnsafeMutablePointer<redisReply>.self)
var str:String = String.fromCString(getReplyPtr.memory.str)!
print(str)

freeReplyObject(getReply)
redisFree(conn)