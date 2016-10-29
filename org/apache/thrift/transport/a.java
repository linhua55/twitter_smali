package org.apache.thrift.transport;

import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class a extends b {
    protected InputStream a;
    protected OutputStream b;

    protected a() {
        this.a = null;
        this.b = null;
    }

    public a(OutputStream outputStream) {
        this.a = null;
        this.b = null;
        this.b = outputStream;
    }

    public void a(byte[] bArr, int i, int i2) throws TTransportException {
        if (this.b == null) {
            throw new TTransportException(1, "Cannot write to null outputStream");
        }
        try {
            this.b.write(bArr, i, i2);
        } catch (Throwable e) {
            throw new TTransportException(0, e);
        }
    }
}
