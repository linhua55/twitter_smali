package defpackage;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.util.network.DownloadQuality;

/* compiled from: Twttr */
/* renamed from: cdn */
class cdn {
    static DownloadQuality a(int i, int i2) {
        if (i == 1) {
            return DownloadQuality.h;
        }
        if (i != 0) {
            return DownloadQuality.a;
        }
        if (i2 == 2) {
            return DownloadQuality.c;
        }
        float a = cdn.a(i2);
        for (DownloadQuality downloadQuality : DownloadQuality.values()) {
            if (a <= downloadQuality.c()) {
                return downloadQuality;
            }
        }
        return DownloadQuality.a;
    }

    private static float a(int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return 12.5f;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case C.ENCODING_DTS /*7*/:
                return 6.25f;
            case Util.TYPE_OTHER /*3*/:
                return 50.0f;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return 1.75f;
            case EbmlReader.TYPE_FLOAT /*5*/:
                return 50.0f;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return 75.0f;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return 250.0f;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return 125.0f;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return 87.5f;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return 3.125f;
            case Atom.FULL_HEADER_SIZE /*12*/:
                return 625.0f;
            case b.ShimmerFrameLayout_shape /*13*/:
                return 1250.0f;
            case b.ShimmerFrameLayout_tilt /*14*/:
                return 125.0f;
            case bdd.TwitterButton_strokeWidth /*15*/:
                return 1250.0f;
            default:
                return 0.0f;
        }
    }
}
