package com.twitter.client_network.thriftandroid;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.client_network.thriftandroid.ClientNetworkStatus._Fields;
import com.twitter.clientapp.thriftandroid.MobileDetails;
import com.twitter.clientapp.thriftandroid.NetworkStatus;
import com.twitter.clientapp.thriftandroid.RadioStatus;

/* compiled from: Twttr */
public class h {
    private NetworkStatus a;
    private NetworkStatus b;
    private RadioStatus c;
    private String d;
    private CaptivePortalStatus e;
    private String f;
    private String g;
    private MobileDetails h;

    public h a(_Fields com_twitter_client_network_thriftandroid_ClientNetworkStatus__Fields, Object obj) {
        switch (g.a[com_twitter_client_network_thriftandroid_ClientNetworkStatus__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (obj != null) {
                    this.a = (NetworkStatus) obj;
                    break;
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (obj != null) {
                    this.b = (NetworkStatus) obj;
                    break;
                }
                break;
            case Util.TYPE_OTHER /*3*/:
                if (obj != null) {
                    this.c = (RadioStatus) obj;
                    break;
                }
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (obj != null) {
                    this.d = (String) obj;
                    break;
                }
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (obj != null) {
                    this.e = (CaptivePortalStatus) obj;
                    break;
                }
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (obj != null) {
                    this.f = (String) obj;
                    break;
                }
                break;
            case C.ENCODING_DTS /*7*/:
                if (obj != null) {
                    this.g = (String) obj;
                    break;
                }
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                if (obj != null) {
                    this.h = (MobileDetails) obj;
                    break;
                }
                break;
        }
        return this;
    }

    public ClientNetworkStatus a() {
        return new ClientNetworkStatus(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
    }
}
