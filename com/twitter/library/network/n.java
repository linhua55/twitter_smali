package com.twitter.library.network;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class n implements o {
    private final byte[] a;

    public n(byte[] bArr) {
        this.a = bArr;
    }

    public void a(OutputStream outputStream) throws IOException {
        outputStream.write(this.a);
    }

    public InputStream a() throws IOException {
        return new ByteArrayInputStream(this.a);
    }
}
