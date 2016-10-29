package com.twitter.common_header.thriftandroid;

import com.twitter.common_header.thriftandroid.ClientHeader._Fields;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class b {
    private Long a;
    private Short b;

    public b a(_Fields com_twitter_common_header_thriftandroid_ClientHeader__Fields, Object obj) {
        switch (a.a[com_twitter_common_header_thriftandroid_ClientHeader__Fields.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (obj != null) {
                    this.a = (Long) obj;
                    break;
                }
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (obj != null) {
                    this.b = (Short) obj;
                    break;
                }
                break;
        }
        return this;
    }

    public ClientHeader a() {
        if (this.a != null) {
            return new ClientHeader(this.a, this.b);
        }
        throw new IllegalArgumentException("Required field 'timestampMs' was not present! Struct: " + toString());
    }
}
