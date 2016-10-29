package org.apache.thrift.protocol;

import org.apache.thrift.TException;

/* compiled from: Twttr */
public class TProtocolException extends TException {
    private static final long serialVersionUID = 1;
    protected int type_;

    public TProtocolException() {
        this.type_ = 0;
    }

    public TProtocolException(String str) {
        super(str);
        this.type_ = 0;
    }
}
