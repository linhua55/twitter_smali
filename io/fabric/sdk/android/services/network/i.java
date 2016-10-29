package io.fabric.sdk.android.services.network;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

/* compiled from: Twttr */
public class i extends BufferedOutputStream {
    private final CharsetEncoder a;

    public i(OutputStream outputStream, String str, int i) {
        super(outputStream, i);
        this.a = Charset.forName(HttpRequest.f(str)).newEncoder();
    }

    public i a(String str) throws IOException {
        ByteBuffer encode = this.a.encode(CharBuffer.wrap(str));
        super.write(encode.array(), 0, encode.limit());
        return this;
    }
}
