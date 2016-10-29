package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public interface BufferedSource extends Source {
    OkBuffer buffer();

    boolean exhausted() throws IOException;

    InputStream inputStream();

    byte readByte() throws IOException;

    ByteString readByteString(long j) throws IOException;

    int readInt() throws IOException;

    int readIntLe() throws IOException;

    short readShort() throws IOException;

    int readShortLe() throws IOException;

    String readUtf8(long j) throws IOException;

    String readUtf8Line(boolean z) throws IOException;

    void require(long j) throws IOException;

    long seek(byte b) throws IOException;

    void skip(long j) throws IOException;
}
