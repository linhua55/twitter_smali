package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.util.List;
import okio.j;

/* compiled from: Twttr */
public interface PushObserver {
    public static final PushObserver CANCEL;

    boolean onData(int i, j jVar, int i2, boolean z) throws IOException;

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

            public boolean onData(int i, j jVar, int i2, boolean z) throws IOException {
                jVar.g((long) i2);
                return true;
            }

            public void onReset(int i, ErrorCode errorCode) {
            }
        };
    }
}
