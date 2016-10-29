package defpackage;

import android.database.Cursor;
import bgv;
import chj;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.model.dms.Participant;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;

/* compiled from: Twttr */
/* renamed from: bhz */
public class bhz extends chj<bgv> {
    private static final int[] a;

    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    static {
        a = new int[]{4, 8, 20, 17, 18, 10, 11, 1, 19, 0, 21, 22};
    }

    public boolean a(Cursor cursor) {
        return CollectionUtils.a(a, cursor.getInt(5));
    }

    public bgv<?> b(Cursor cursor) {
        bgx a;
        long j = cursor.getLong(1);
        String string = cursor.getString(2);
        long j2 = cursor.getLong(3);
        long j3 = cursor.getLong(6);
        int i = cursor.getInt(5);
        byte[] blob = cursor.getBlob(9);
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                a = new bir().a(m.a(blob, bit.i));
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a = new bik().a(m.a(blob, bim.i));
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                a = new bhx().a(m.a(blob, bgy.a));
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                a = new bki().a(m.a(blob, s.i));
                break;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                a = new bjm().a(m.a(blob, bjn.a));
                break;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                a = new bjt().a(m.a(blob, s.a(Participant.a)));
                break;
            case bdd.TwitterButton_bounded /*17*/:
                a = new bjg().a(m.a(blob, s.a(s.f)));
                break;
            case bdd.TwitterButton_knockout /*18*/:
                a = new bjw().a(m.a(blob, s.a(s.i)));
                break;
            case bdd.TwitterButton_iconLayout /*19*/:
                a = new bir().b(true).a(m.a(blob, bit.i));
                break;
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                a = new bke().a(m.a(blob, s.i));
                break;
            case bdd.TweetView_mediaTopMargin /*21*/:
                a = new bhq().a(m.a(blob, bhs.a));
                break;
            case bdd.TweetView_mediaBottomMargin /*22*/:
                a = new bhj().a(m.a(blob, bhl.a));
                break;
            default:
                throw new IllegalStateException("Unsupported conversation entry type: " + i);
        }
        if (a.d()) {
            return (bgv) ((bgx) ((bgx) ((bgx) a.a(j2).b(j)).b(string)).c(j3)).q();
        }
        throw new IllegalStateException("Metadata of entry with type " + i + " failed to be deserialized: " + m.a(blob, -1, false));
    }
}
