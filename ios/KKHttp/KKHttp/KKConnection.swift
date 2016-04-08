//
//  KKConnection.swift
//  KKHttp
//
//  Created by zhanghailong on 16/4/8.
//  Copyright © 2016年 hailong.org. All rights reserved.
//

import Foundation

public class KKConnection {
    
    private var _request:KKRequest?;
    private var _keepAlive:Double=0;
    private var _queue:dispatch_queue_t;
    private var _fd:dispatch_fd_t;
    private var _io:dispatch_io_t;
    
    public init(queue:dispatch_queue_t,fd:dispatch_fd_t) {
        _queue = queue;
        _fd = fd;
        _io = dispatch_io_create(DISPATCH_IO_STREAM, fd, queue, { (Int32) in
            
        })
    }
    
    public func request() ->KKRequest? {
        return _request;
    }
    
    public func request(request:KKRequest?) -> KKConnection {
        _request = request;
        return self;
    }
    
    public func keepAlive() ->Double {
        return _keepAlive;
    }
    
    public func keepAlive(keepAlive:Double) ->KKConnection {
        _keepAlive = keepAlive;
        return self;
    }
    
}
