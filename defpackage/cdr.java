package defpackage;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.util.telephony.TelephonyUtil;

/* compiled from: Twttr */
/* renamed from: cdr */
public class cdr {
    private static cdr a;
    private final TelephonyUtil b;

    cdr(TelephonyUtil telephonyUtil) {
        this.b = telephonyUtil;
    }

    public static synchronized cdr a() {
        cdr cdr;
        synchronized (cdr.class) {
            if (a == null) {
                a = new cdr(TelephonyUtil.i());
            }
            cdr = a;
        }
        return cdr;
    }

    public int a(int i) {
        double d = 1.5d;
        if (this.b.c()) {
            return i;
        }
        switch (this.b.b()) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case EbmlReader.TYPE_FLOAT /*5*/:
            case C.ENCODING_DTS /*7*/:
            case b.ShimmerFrameLayout_relative_width /*11*/:
                d = 0.35d;
                break;
            case Util.TYPE_OTHER /*3*/:
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                d = 0.55d;
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                d = 1.0d;
                break;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
            case Atom.FULL_HEADER_SIZE /*12*/:
                d = 1.2d;
                break;
            case b.ShimmerFrameLayout_shape /*13*/:
                d = 2.5d;
                break;
            case bdd.TwitterButton_strokeWidth /*15*/:
                d = 2.0d;
                break;
        }
        return Math.min(i, (int) (d * 1048576.0d));
    }
}
