package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Hashtable;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public final class SessionParameters {
    private int a;
    private short b;
    private byte[] c;
    private byte[] d;

    /* compiled from: Twttr */
    public final class Builder {
        private int a;
        private short b;
        private byte[] c;
        private Certificate d;
        private byte[] e;

        public Builder() {
            this.a = -1;
            this.b = (short) -1;
            this.c = null;
            this.d = null;
            this.e = null;
        }
    }

    public void a() {
        if (this.c != null) {
            Arrays.a(this.c, (byte) 0);
        }
    }

    public int b() {
        return this.a;
    }

    public short c() {
        return this.b;
    }

    public byte[] d() {
        return this.c;
    }

    public Hashtable e() throws IOException {
        if (this.d == null) {
            return null;
        }
        return TlsProtocol.e(new ByteArrayInputStream(this.d));
    }
}
