package org.apache.thrift.protocol;

import java.nio.ByteBuffer;
import org.apache.thrift.TException;
import org.apache.thrift.transport.b;

/* compiled from: Twttr */
public abstract class d {
    protected b e;

    public abstract void a() throws TException;

    public abstract void a(int i) throws TException;

    public abstract void a(long j) throws TException;

    public abstract void a(String str) throws TException;

    public abstract void a(ByteBuffer byteBuffer) throws TException;

    public abstract void a(a aVar) throws TException;

    public abstract void a(b bVar) throws TException;

    public abstract void a(c cVar) throws TException;

    public abstract void a(e eVar) throws TException;

    public abstract void a(short s) throws TException;

    public abstract void a(boolean z) throws TException;

    public abstract void b() throws TException;

    public abstract void c() throws TException;

    public abstract void d() throws TException;

    public abstract void e() throws TException;

    protected d(b bVar) {
        this.e = bVar;
    }
}
