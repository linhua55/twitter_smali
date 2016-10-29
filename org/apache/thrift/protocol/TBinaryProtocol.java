package org.apache.thrift.protocol;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.apache.thrift.TException;
import org.apache.thrift.transport.b;

/* compiled from: Twttr */
public class TBinaryProtocol extends d {
    private static final e f;
    protected boolean a;
    protected boolean b;
    protected int c;
    protected boolean d;
    private byte[] g;
    private byte[] h;
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private byte[] l;
    private byte[] m;
    private byte[] n;

    /* compiled from: Twttr */
    public class Factory implements TProtocolFactory {
        protected int readLength_;
        protected boolean strictRead_;
        protected boolean strictWrite_;

        public Factory() {
            this(false, true);
        }

        public Factory(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public Factory(boolean z, boolean z2, int i) {
            this.strictRead_ = false;
            this.strictWrite_ = true;
            this.strictRead_ = z;
            this.strictWrite_ = z2;
            this.readLength_ = i;
        }

        public d a(b bVar) {
            d tBinaryProtocol = new TBinaryProtocol(bVar, this.strictRead_, this.strictWrite_);
            if (this.readLength_ != 0) {
                tBinaryProtocol.b(this.readLength_);
            }
            return tBinaryProtocol;
        }
    }

    static {
        f = new e();
    }

    public TBinaryProtocol(b bVar, boolean z, boolean z2) {
        super(bVar);
        this.a = false;
        this.b = true;
        this.d = false;
        this.g = new byte[1];
        this.h = new byte[2];
        this.i = new byte[4];
        this.j = new byte[8];
        this.k = new byte[1];
        this.l = new byte[2];
        this.m = new byte[4];
        this.n = new byte[8];
        this.a = z;
        this.b = z2;
    }

    public void a(e eVar) {
    }

    public void a() {
    }

    public void a(a aVar) throws TException {
        a(aVar.b);
        a(aVar.c);
    }

    public void b() {
    }

    public void c() throws TException {
        a((byte) 0);
    }

    public void a(c cVar) throws TException {
        a(cVar.a);
        a(cVar.b);
        a(cVar.c);
    }

    public void d() {
    }

    public void a(b bVar) throws TException {
        a(bVar.a);
        a(bVar.b);
    }

    public void e() {
    }

    public void a(boolean z) throws TException {
        a(z ? (byte) 1 : (byte) 0);
    }

    public void a(byte b) throws TException {
        this.g[0] = b;
        this.e.a(this.g, 0, 1);
    }

    public void a(short s) throws TException {
        this.h[0] = (byte) ((s >> 8) & 255);
        this.h[1] = (byte) (s & 255);
        this.e.a(this.h, 0, 2);
    }

    public void a(int i) throws TException {
        this.i[0] = (byte) ((i >> 24) & 255);
        this.i[1] = (byte) ((i >> 16) & 255);
        this.i[2] = (byte) ((i >> 8) & 255);
        this.i[3] = (byte) (i & 255);
        this.e.a(this.i, 0, 4);
    }

    public void a(long j) throws TException {
        this.j[0] = (byte) ((int) ((j >> 56) & 255));
        this.j[1] = (byte) ((int) ((j >> 48) & 255));
        this.j[2] = (byte) ((int) ((j >> 40) & 255));
        this.j[3] = (byte) ((int) ((j >> 32) & 255));
        this.j[4] = (byte) ((int) ((j >> 24) & 255));
        this.j[5] = (byte) ((int) ((j >> 16) & 255));
        this.j[6] = (byte) ((int) ((j >> 8) & 255));
        this.j[7] = (byte) ((int) (255 & j));
        this.e.a(this.j, 0, 8);
    }

    public void a(String str) throws TException {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes.length);
            this.e.a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new TException("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public void a(ByteBuffer byteBuffer) throws TException {
        int limit = (byteBuffer.limit() - byteBuffer.position()) - byteBuffer.arrayOffset();
        a(limit);
        this.e.a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    public void b(int i) {
        this.c = i;
        this.d = true;
    }
}
