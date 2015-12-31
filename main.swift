import CHiredis

let conn:UnsafeMutablePointer<redisContext>  = redisConnect("127.0.0.1",6379)
print(conn.memory)
