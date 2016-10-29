package org.apache.thrift;

/* compiled from: Twttr */
public class TException extends Exception {
    private static final long serialVersionUID = 1;

    public TException(String str) {
        super(str);
    }

    public TException(Throwable th) {
        super(th);
    }
}
