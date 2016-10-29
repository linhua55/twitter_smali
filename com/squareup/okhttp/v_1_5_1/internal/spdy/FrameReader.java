package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public interface FrameReader extends Closeable {

    /* compiled from: Twttr */
    public interface Handler {
        void ackSettings();

        void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException;

        void goAway(int i, ErrorCode errorCode, ByteString byteString);

        void headers(boolean z, boolean z2, int i, int i2, int i3, List<Header> list, HeadersMode headersMode);

        void ping(boolean z, int i, int i2);

        void priority(int i, int i2);

        void pushPromise(int i, int i2, List<Header> list) throws IOException;

        void rstStream(int i, ErrorCode errorCode);

        void settings(boolean z, Settings settings);

        void windowUpdate(int i, long j);
    }

    boolean nextFrame(Handler handler) throws IOException;

    void readConnectionHeader() throws IOException;
}