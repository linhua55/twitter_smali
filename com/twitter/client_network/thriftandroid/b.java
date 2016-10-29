package com.twitter.client_network.thriftandroid;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.client_network.thriftandroid.ClientNetworkRequest._Fields;
import defpackage.bdd;

/* compiled from: Twttr */
public class b {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private ClientNetworkStatus f;
    private ClientNetworkStatus g;
    private String h;
    private String i;
    private Integer j;
    private Integer k;
    private String l;
    private ClientNetworkResponseSource m;
    private ClientNetworkRequestDetails n;
    private ClientNetworkProxyStatus o;
    private Boolean p;
    private String q;

    public b a(_Fields com_twitter_client_network_thriftandroid_ClientNetworkRequest__Fields, Object obj) {
        switch (a.a[com_twitter_client_network_thriftandroid_ClientNetworkRequest__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (obj != null) {
                    this.a = (String) obj;
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
                    this.c = (String) obj;
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
                    this.e = (String) obj;
                    break;
                }
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (obj != null) {
                    this.f = (ClientNetworkStatus) obj;
                    break;
                }
                break;
            case C.ENCODING_DTS /*7*/:
                if (obj != null) {
                    this.g = (ClientNetworkStatus) obj;
                    break;
                }
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                if (obj != null) {
                    this.h = (String) obj;
                    break;
                }
                break;
            case com.facebook.shimmer.b.ShimmerFrameLayout_fixed_height /*9*/:
                if (obj != null) {
                    this.i = (String) obj;
                    break;
                }
                break;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                if (obj != null) {
                    this.j = (Integer) obj;
                    break;
                }
                break;
            case com.facebook.shimmer.b.ShimmerFrameLayout_relative_width /*11*/:
                if (obj != null) {
                    this.k = (Integer) obj;
                    break;
                }
                break;
            case Atom.FULL_HEADER_SIZE /*12*/:
                if (obj != null) {
                    this.l = (String) obj;
                    break;
                }
                break;
            case com.facebook.shimmer.b.ShimmerFrameLayout_shape /*13*/:
                if (obj != null) {
                    this.m = (ClientNetworkResponseSource) obj;
                    break;
                }
                break;
            case com.facebook.shimmer.b.ShimmerFrameLayout_tilt /*14*/:
                if (obj != null) {
                    this.n = (ClientNetworkRequestDetails) obj;
                    break;
                }
                break;
            case bdd.TwitterButton_strokeWidth /*15*/:
                if (obj != null) {
                    this.o = (ClientNetworkProxyStatus) obj;
                    break;
                }
                break;
            case Atom.LONG_HEADER_SIZE /*16*/:
                if (obj != null) {
                    this.p = (Boolean) obj;
                    break;
                }
                break;
            case bdd.TwitterButton_bounded /*17*/:
                if (obj != null) {
                    this.q = (String) obj;
                    break;
                }
                break;
        }
        return this;
    }

    public ClientNetworkRequest a() {
        if (this.a == null) {
            throw new IllegalArgumentException("Required field 'uri_scheme' was not present! Struct: " + toString());
        } else if (this.b == null) {
            throw new IllegalArgumentException("Required field 'uri_host_name' was not present! Struct: " + toString());
        } else if (this.c == null) {
            throw new IllegalArgumentException("Required field 'uri_path' was not present! Struct: " + toString());
        } else if (this.d == null) {
            throw new IllegalArgumentException("Required field 'http_method' was not present! Struct: " + toString());
        } else if (this.n == null) {
            throw new IllegalArgumentException("Required field 'request_details' was not present! Struct: " + toString());
        } else {
            return new ClientNetworkRequest(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q);
        }
    }
}
