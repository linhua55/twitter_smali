package org.apache.thrift;

import java.io.ByteArrayOutputStream;
import org.apache.thrift.protocol.TBinaryProtocol.Factory;
import org.apache.thrift.protocol.TProtocolFactory;
import org.apache.thrift.protocol.d;
import org.apache.thrift.transport.a;

/* compiled from: Twttr */
public class e {
    private final ByteArrayOutputStream a;
    private final a b;
    private d c;

    public e() {
        this(new Factory());
    }

    public e(TProtocolFactory tProtocolFactory) {
        this.a = new ByteArrayOutputStream();
        this.b = new a(this.a);
        this.c = tProtocolFactory.a(this.b);
    }

    public byte[] a(TBase tBase) throws TException {
        this.a.reset();
        tBase.a(this.c);
        return this.a.toByteArray();
    }
}
