package com.twitter.clientapp.thriftandroid;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.clientapp.thriftandroid.MobileDetails._Fields;

/* compiled from: Twttr */
public class d {
    private String a;
    private Orientation b;
    private Integer c;
    private Boolean d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private RadioStatus l;

    public d a(_Fields com_twitter_clientapp_thriftandroid_MobileDetails__Fields, Object obj) {
        switch (c.a[com_twitter_clientapp_thriftandroid_MobileDetails__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (obj != null) {
                    this.a = (String) obj;
                    break;
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (obj != null) {
                    this.b = (Orientation) obj;
                    break;
                }
                break;
            case Util.TYPE_OTHER /*3*/:
                if (obj != null) {
                    this.c = (Integer) obj;
                    break;
                }
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (obj != null) {
                    this.d = (Boolean) obj;
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
                    this.h = (String) obj;
                    break;
                }
                break;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                if (obj != null) {
                    this.i = (String) obj;
                    break;
                }
                break;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                if (obj != null) {
                    this.j = (String) obj;
                    break;
                }
                break;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                if (obj != null) {
                    this.k = (String) obj;
                    break;
                }
                break;
            case Atom.FULL_HEADER_SIZE /*12*/:
                if (obj != null) {
                    this.l = (RadioStatus) obj;
                    break;
                }
                break;
        }
        return this;
    }

    public MobileDetails a() {
        return new MobileDetails(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
    }
}
