package com.twitter.client_network.thriftandroid;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.client_network.thriftandroid.ClientNetworkRequestEvent._Fields;
import com.twitter.common_header.thriftandroid.VersionedCommonHeader;

/* compiled from: Twttr */
public class f {
    private VersionedCommonHeader a;
    private String b;
    private ClientNetworkRequest c;
    private String d;

    public f a(_Fields com_twitter_client_network_thriftandroid_ClientNetworkRequestEvent__Fields, Object obj) {
        switch (e.a[com_twitter_client_network_thriftandroid_ClientNetworkRequestEvent__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (obj != null) {
                    this.a = (VersionedCommonHeader) obj;
                    break;
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (obj != null) {
                    this.b = (String) obj;
                    break;
                }
                break;
            case Util.TYPE_OTHER /*3*/:
                if (obj != null) {
                    this.c = (ClientNetworkRequest) obj;
                    break;
                }
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (obj != null) {
                    this.d = (String) obj;
                    break;
                }
                break;
        }
        return this;
    }

    public ClientNetworkRequestEvent a() {
        if (this.a == null) {
            throw new IllegalArgumentException("Required field 'common_header' was not present! Struct: " + toString());
        } else if (this.b == null) {
            throw new IllegalArgumentException("Required field 'event_type' was not present! Struct: " + toString());
        } else if (this.c != null) {
            return new ClientNetworkRequestEvent(this.a, this.b, this.c, this.d);
        } else {
            throw new IllegalArgumentException("Required field 'request' was not present! Struct: " + toString());
        }
    }
}
