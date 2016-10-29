package com.twitter.client_network.thriftandroid;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.client_network.thriftandroid.ClientNetworkRequestDetails._Fields;

/* compiled from: Twttr */
public class d {
    private Long a;
    private Integer b;
    private Long c;
    private Long d;
    private Long e;
    private Long f;
    private Long g;
    private Long h;
    private Long i;
    private Long j;

    public d a(_Fields com_twitter_client_network_thriftandroid_ClientNetworkRequestDetails__Fields, Object obj) {
        switch (c.a[com_twitter_client_network_thriftandroid_ClientNetworkRequestDetails__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (obj != null) {
                    this.a = (Long) obj;
                    break;
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (obj != null) {
                    this.b = (Integer) obj;
                    break;
                }
                break;
            case Util.TYPE_OTHER /*3*/:
                if (obj != null) {
                    this.c = (Long) obj;
                    break;
                }
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (obj != null) {
                    this.d = (Long) obj;
                    break;
                }
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (obj != null) {
                    this.e = (Long) obj;
                    break;
                }
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (obj != null) {
                    this.f = (Long) obj;
                    break;
                }
                break;
            case C.ENCODING_DTS /*7*/:
                if (obj != null) {
                    this.g = (Long) obj;
                    break;
                }
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                if (obj != null) {
                    this.h = (Long) obj;
                    break;
                }
                break;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                if (obj != null) {
                    this.i = (Long) obj;
                    break;
                }
                break;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                if (obj != null) {
                    this.j = (Long) obj;
                    break;
                }
                break;
        }
        return this;
    }

    public ClientNetworkRequestDetails a() {
        if (this.a != null) {
            return new ClientNetworkRequestDetails(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
        }
        throw new IllegalArgumentException("Required field 'duration_ms' was not present! Struct: " + toString());
    }
}
