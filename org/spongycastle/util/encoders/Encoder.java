package org.spongycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
public interface Encoder {
    int a(String str, OutputStream outputStream) throws IOException;

    int a(byte[] bArr, int i, int i2, OutputStream outputStream) throws IOException;
}
