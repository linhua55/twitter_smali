package com.squareup.okhttp.v_1_5_1.internal.spdy;

import java.io.IOException;

/* compiled from: Twttr */
public interface IncomingStreamHandler {
    public static final IncomingStreamHandler REFUSE_INCOMING_STREAMS;

    void receive(SpdyStream spdyStream) throws IOException;

    static {
        REFUSE_INCOMING_STREAMS = new IncomingStreamHandler() {
            public void receive(SpdyStream spdyStream) throws IOException {
                spdyStream.close(ErrorCode.REFUSED_STREAM);
            }
        };
    }
}
