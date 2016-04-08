//
//  KKResponse.swift
//  KKHttp
//
//  Created by zhanghailong on 16/4/8.
//  Copyright © 2016年 hailong.org. All rights reserved.
//

import Foundation

public class KKResponse : KKMessage {

    private var _version:String="1.1";
    private var _statusCode:Int=200;
    private var _status:String="OK";
    
    public func statusCode() -> Int {
        return _statusCode;
    }
    
    public func statusCode(statusCode:Int) -> KKResponse {
        _statusCode = statusCode;
        return self;
    }
    
    public func status() -> String {
        return _status;
    }
    
    public func status(status:String) -> KKResponse {
        _status = status;
        return self;
    }
    
    public func version() ->String {
        return _version;
    }
    
    public func version(version:String) ->KKResponse {
        _version = version;
        return self;
    }
    
    public override func add(key: String, value: String) -> KKResponse {
        return super.add(key, value: value) as! KKResponse;
    }
    
    public override func set(key: String, value: String) -> KKResponse {
        return super.set(key, value: value) as! KKResponse;
    }
    
    public override func body(body: KKBody?) -> KKResponse {
        return super.body(body) as! KKResponse;
    }
}
