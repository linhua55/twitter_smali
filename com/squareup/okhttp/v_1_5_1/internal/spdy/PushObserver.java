package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public interface PushObserver {
    public static final PushObserver CANCEL;

    boolean onData(int i, BufferedSource bufferedSource, int i2, boolean z) throws IOException;

    boolean onHeaders(int i, List<Header> list, boolean z);

    boolean onRequest(int i, List<Header> list);

    void onReset(int i, ErrorCode errorCode);

    static {
        CANCEL = new PushObserver() {
            public boolean onRequest(int i, List<Header> list) {
                return true;
            }

            public boolean onHeaders(int i, List<Header> list, boolean z) {
                return true;
            }

            public boolean onData(int i, BufferedSource bufferedSource, int i2, boolean z) throws IOException {
                bufferedSource.skip((long) i2);
                return true;
            }

            public void onReset(int i, ErrorCode errorCode) {
            }
        };
    }
}