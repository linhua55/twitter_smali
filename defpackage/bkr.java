package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;

/* compiled from: Twttr */
/* renamed from: bkr */
public class bkr {
    public static bkp a(int i, SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case bdd.TwitterButton_iconLayout /*19*/:
                return new bkv(sQLiteDatabase, j, z, z2);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return new bkm(sQLiteDatabase, j, z, z2);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return new blb(sQLiteDatabase, j, z, z2);
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return new bkw(sQLiteDatabase, j, z, z2);
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return new bkx(sQLiteDatabase, j, z, z2);
            case bdd.TwitterButton_bounded /*17*/:
                return new bks(sQLiteDatabase, j, z, z2);
            case bdd.TwitterButton_knockout /*18*/:
                return new bky(sQLiteDatabase, j, z, z2);
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                return new bkz(sQLiteDatabase, j, z, z2);
            case bdd.TweetView_mediaTopMargin /*21*/:
                return new bkl(sQLiteDatabase, j, z, z2);
            case bdd.TweetView_mediaBottomMargin /*22*/:
                return new bkk(sQLiteDatabase, j, z, z2);
            default:
                throw new IllegalArgumentException("Could not create EventCacher with ConversationEntriesType: " + i);
        }
    }

    public static bkq b(int i, SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        switch (i) {
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return new bkn(sQLiteDatabase, j, z, z2);
            case C.ENCODING_DTS /*7*/:
                return new bko(sQLiteDatabase, j, z, z2);
            case Atom.FULL_HEADER_SIZE /*12*/:
                return new bku(sQLiteDatabase, j, z, z2);
            case b.ShimmerFrameLayout_shape /*13*/:
                return new bkt(sQLiteDatabase, j, z, z2);
            case b.ShimmerFrameLayout_tilt /*14*/:
            case bdd.TwitterButton_strokeWidth /*15*/:
                return new bla(sQLiteDatabase, j, z, z2);
            case Atom.LONG_HEADER_SIZE /*16*/:
                return new blc(sQLiteDatabase, j, z, z2);
            default:
                return bkr.a(i, sQLiteDatabase, j, z, z2);
        }
    }
}
