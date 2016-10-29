package com.twitter.experiments.client.thriftandroid;

import com.twitter.common_header.thriftandroid.VersionedCommonHeader;
import com.twitter.experiments.client.thriftandroid.DdgImpression._Fields;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class b {
    private VersionedCommonHeader a;
    private String b;
    private Integer c;
    private String d;

    public b a(_Fields com_twitter_experiments_client_thriftandroid_DdgImpression__Fields, Object obj) {
        switch (a.a[com_twitter_experiments_client_thriftandroid_DdgImpression__Fields.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (obj != null) {
                    this.a = (VersionedCommonHeader) obj;
                    break;
                }
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (obj != null) {
                    this.b = (String) obj;
                    break;
                }
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                if (obj != null) {
                    this.c = (Integer) obj;
                    break;
                }
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (obj != null) {
                    this.d = (String) obj;
                    break;
                }
                break;
        }
        return this;
    }

    public DdgImpression a() {
        if (this.a == null) {
            throw new IllegalArgumentException("Required field 'commonHeader' was not present! Struct: " + toString());
        } else if (this.b == null) {
            throw new IllegalArgumentException("Required field 'experiment' was not present! Struct: " + toString());
        } else if (this.c == null) {
            throw new IllegalArgumentException("Required field 'version' was not present! Struct: " + toString());
        } else if (this.d != null) {
            return new DdgImpression(this.a, this.b, this.c, this.d);
        } else {
            throw new IllegalArgumentException("Required field 'bucket' was not present! Struct: " + toString());
        }
    }
}
