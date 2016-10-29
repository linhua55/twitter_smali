package com.facebook.imagepipeline.memory;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public interface ab {
    PooledByteBuffer b(InputStream inputStream) throws IOException;

    PooledByteBuffer b(InputStream inputStream, int i) throws IOException;

    PooledByteBuffer b(byte[] bArr);

    ad b();

    ad b(int i);
}
