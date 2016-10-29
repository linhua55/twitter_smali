package com.google.android.gms.internal;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;
import java.io.IOException;

public final class xy extends xn<xy> {
    public int b;
    public String c;
    public String d;

    public xy() {
        f();
    }

    public xy a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    a = xmVar.f();
                    switch (a) {
                        case Util.TYPE_DASH /*0*/:
                        case ModuleDescriptor.MODULE_VERSION /*1*/:
                        case Buffer.FLAG_DECODE_ONLY /*2*/:
                        case Util.TYPE_OTHER /*3*/:
                        case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                        case EbmlReader.TYPE_FLOAT /*5*/:
                        case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                        case C.ENCODING_DTS /*7*/:
                        case ChunkHeader.SIZE_IN_BYTES /*8*/:
                        case b.ShimmerFrameLayout_fixed_height /*9*/:
                        case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                        case b.ShimmerFrameLayout_relative_width /*11*/:
                        case Atom.FULL_HEADER_SIZE /*12*/:
                        case b.ShimmerFrameLayout_shape /*13*/:
                        case b.ShimmerFrameLayout_tilt /*14*/:
                        case bdd.TwitterButton_strokeWidth /*15*/:
                        case Atom.LONG_HEADER_SIZE /*16*/:
                        case bdd.TwitterButton_bounded /*17*/:
                        case bdd.TwitterButton_knockout /*18*/:
                        case bdd.TwitterButton_iconLayout /*19*/:
                        case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                        case bdd.TweetView_mediaTopMargin /*21*/:
                        case bdd.TweetView_mediaBottomMargin /*22*/:
                        case bdd.TweetView_mediaDivider /*23*/:
                        case bdd.TweetView_autoLink /*24*/:
                        case bdd.TweetView_linkSelectedColor /*25*/:
                        case bdd.TweetView_previewFlags /*26*/:
                            this.b = a;
                            break;
                        default:
                            continue;
                    }
                case bdd.TwitterButton_knockout /*18*/:
                    this.c = xmVar.h();
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    this.d = xmVar.h();
                    continue;
                default:
                    if (!a(xmVar, a)) {
                        break;
                    }
                    continue;
            }
            return this;
        }
    }

    public void a(zzsn com_google_android_gms_internal_zzsn) throws IOException {
        if (this.b != 0) {
            com_google_android_gms_internal_zzsn.a(1, this.b);
        }
        if (!this.c.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            com_google_android_gms_internal_zzsn.a(2, this.c);
        }
        if (!this.d.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            com_google_android_gms_internal_zzsn.a(3, this.d);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.b != 0) {
            b += zzsn.b(1, this.b);
        }
        if (!this.c.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            b += zzsn.b(2, this.c);
        }
        return !this.d.equals(TtmlNode.ANONYMOUS_REGION_ID) ? b + zzsn.b(3, this.d) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xy)) {
            return false;
        }
        xy xyVar = (xy) obj;
        if (this.b != xyVar.b) {
            return false;
        }
        if (this.c == null) {
            if (xyVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(xyVar.c)) {
            return false;
        }
        if (this.d == null) {
            if (xyVar.d != null) {
                return false;
            }
        } else if (!this.d.equals(xyVar.d)) {
            return false;
        }
        return (this.a == null || this.a.b()) ? xyVar.a == null || xyVar.a.b() : this.a.equals(xyVar.a);
    }

    public xy f() {
        this.b = 0;
        this.c = TtmlNode.ANONYMOUS_REGION_ID;
        this.d = TtmlNode.ANONYMOUS_REGION_ID;
        this.a = null;
        this.S = -1;
        return this;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.d == null ? 0 : this.d.hashCode()) + (((this.c == null ? 0 : this.c.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.b) * 31)) * 31)) * 31;
        if (!(this.a == null || this.a.b())) {
            i = this.a.hashCode();
        }
        return hashCode + i;
    }
}
