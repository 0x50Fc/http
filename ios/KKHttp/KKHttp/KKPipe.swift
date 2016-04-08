//
//  KKPipe.swift
//  KKHttp
//
//  Created by zhanghailong on 16/4/8.
//  Copyright © 2016年 hailong.org. All rights reserved.
//

import Foundation


public class KKPipe {

    private var _queue:dispatch_queue_t;
    private var _fd:dispatch_fd_t;
    private var _io:dispatch_io_t?;
    private var _onread:(()->Void)?;
    private var _onwrite:(()->Void)?;
    private var _ondone:(()->Void)?;
    private var _onfail:((errno:Int32,errmsg:String?)->Void)?;
    
    public init(queue:dispatch_queue_t,fd:dispatch_fd_t) {
        _queue = queue;
        _fd = fd;
        
        weak var this:KKPipe? = self;
        _io = dispatch_io_create(DISPATCH_IO_STREAM, _fd, _queue, { (errno:Int32) in
            this?._onfail!(errno: errno, errmsg: "disconnect");
        });
    }
    
    public func onread(read:(()->Void)?) ->KKPipe {
        _onread = read;
        return self;
    }
    
    public func onwrite(write:(()->Void)?) ->KKPipe {
        _onwrite = write;
        return self;
    }
    
    public func ondone(done:(()->Void)?) ->KKPipe {
        _ondone = done;
        return self;
    }
    
    public func onfail(fail:((errno:Int32, errmsg:String?)->Void)?)->KKPipe {
        _onfail = fail;
        return self;
    }
    
    public func read() ->KKPipe {
     
        return self;
    }
    
}
