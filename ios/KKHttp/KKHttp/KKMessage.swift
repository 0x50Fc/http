//
//  KKMessage.swift
//  KKHttp
//
//  Created by zhanghailong on 16/4/8.
//  Copyright © 2016年 hailong.org. All rights reserved.
//

import Foundation

public class KKMessage {

    private var _headers:[KKHeader] = [];
    private var _body:KKBody?;
    
    public func headers() ->[KKHeader] {
        return _headers;
    }
    
    public func add(key:String,value:String) -> KKMessage {
        _headers.append(KKHeader.init(key: key,value: value));
        return self;
    }
    
    public func set(key:String, value:String) -> KKMessage {
        for h in _headers {
            if(h.key == key) {
                h.value = value;
                return self;
            }
        }
        return add(key,value: value);
    }
    
    public func get(key:String) -> String? {
        for h in _headers {
            if(h.key == key) {
                return h.value;
            }
        }
        return nil;
    }
    
    public func body(body:KKBody?) ->KKMessage {
        _body = body;
        return self;
    }
    
    public func body() ->KKBody? {
        return _body;
    }
    
}
