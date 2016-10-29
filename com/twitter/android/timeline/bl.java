package com.twitter.android.timeline;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.livevideo.landing.h;
import com.twitter.android.widget.NewItemBannerView;
import com.twitter.app.common.inject.t;

/* compiled from: Twttr */
public final class bl {
    public static bj a(int i, NewItemBannerView newItemBannerView, bk bkVar, t tVar) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return new n(newItemBannerView, bkVar, (NewTweetsBannerState) tVar.a(n.b));
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
            case b.ShimmerFrameLayout_tilt /*14*/:
                throw new UnsupportedOperationException("No " + bj.class.getSimpleName() + " implementation for timeline type " + i);
            case b.ShimmerFrameLayout_shape /*13*/:
                return new h(newItemBannerView, bkVar, (NewTweetsBannerState) tVar.a(c.a));
            default:
                throw new IllegalArgumentException("Invalid timeline type " + i);
        }
    }
}
