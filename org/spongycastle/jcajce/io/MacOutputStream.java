package org.spongycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Mac;

/* compiled from: Twttr */
public class MacOutputStream extends OutputStream {
    protected Mac a;

    public void write(int i) throws IOException {
        this.a.update((byte) i);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.a.update(bArr, i, i2);
    }
}
