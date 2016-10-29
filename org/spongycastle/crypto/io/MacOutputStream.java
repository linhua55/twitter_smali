package org.spongycastle.crypto.io;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.Mac;

/* compiled from: Twttr */
public class MacOutputStream extends OutputStream {
    protected Mac a;

    public MacOutputStream(Mac mac) {
        this.a = mac;
    }

    public void write(int i) throws IOException {
        this.a.a((byte) i);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.a.a(bArr, i, i2);
    }
}
