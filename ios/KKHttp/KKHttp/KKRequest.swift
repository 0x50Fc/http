//
//  KKRequest.swift
//  KKHttp
//
//  Created by zhanghailong on 16/4/8.
//  Copyright © 2016年 hailong.org. All rights reserved.
//

import Foundation

public class KKRequest : KKMessage {

    private var _method:String = "GET";
    private var _url:String = "";
    private var _version:String = "1.1";
    
    public func method() -> String {
        return _method;
    }
    
    public func method(method:String) ->KKRequest {
        _method = method;
        return self;
    }
    
    public func url() ->String {
        return _url;
    }
    
    public func url(url:String) ->KKRequest {
        _url = url;
        return self;
    }
    
    public func version() ->String {
        return _version;
    }

    public func version(version:String) -> KKRequest {
        _version = version;
        return self;
    }
    
    public override func add(key: String, value: String) -> KKRequest {
        return super.add(key, value: value) as! KKRequest;
    }
    
    public override func set(key: String, value: String) -> KKRequest {
        return super.set(key, value: value) as! KKRequest;
    }
    
    public override func body(body: KKBody?) -> KKRequest {
        return super.body(body) as! KKRequest;
    }
    
}
