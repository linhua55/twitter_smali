package org.apache.thrift.transport;

import org.apache.thrift.TException;

/* compiled from: Twttr */
public class TTransportException extends TException {
    private static final long serialVersionUID = 1;
    protected int type_;

    public TTransportException() {
        this.type_ = 0;
    }

    public TTransportException(int i, String str) {
        super(str);
        this.type_ = 0;
        this.type_ = i;
    }

    public TTransportException(int i, Throwable th) {
        super(th);
        this.type_ = 0;
        this.type_ = i;
    }
}
