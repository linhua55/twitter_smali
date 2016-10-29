package com.squareup.okhttp.v_1_5_1;

import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;

/* compiled from: Twttr */
public enum Protocol {
    HTTP_2("HTTP-draft-09/2.0", true),
    SPDY_3("spdy/3.1", true),
    HTTP_11("http/1.1", false);
    
    public final ByteString name;
    public final boolean spdyVariant;

    private Protocol(String str, boolean z) {
        this.name = ByteString.encodeUtf8(str);
        this.spdyVariant = z;
    }
}
