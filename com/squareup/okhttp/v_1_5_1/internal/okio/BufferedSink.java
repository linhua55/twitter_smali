package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
public interface BufferedSink extends Sink {
    OkBuffer buffer();

    BufferedSink emitCompleteSegments() throws IOException;

    OutputStream outputStream();

    BufferedSink write(ByteString byteString) throws IOException;

    BufferedSink write(byte[] bArr) throws IOException;

    BufferedSink write(byte[] bArr, int i, int i2) throws IOException;

    BufferedSink writeByte(int i) throws IOException;

    BufferedSink writeInt(int i) throws IOException;

    BufferedSink writeShort(int i) throws IOException;

    BufferedSink writeUtf8(String str) throws IOException;
}
