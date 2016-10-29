package defpackage;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.util.collection.ImmutableSet;
import com.twitter.util.collection.n;
import com.twitter.util.collection.z;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cbu */
public class cbu implements cbn {
    private static final Set<PromotedEvent> a;
    private final List<z<String, ? extends Object>> b;

    static {
        a = ImmutableSet.a(EnumSet.of(PromotedEvent.w, new PromotedEvent[]{PromotedEvent.x, PromotedEvent.y, PromotedEvent.z, PromotedEvent.v, PromotedEvent.A, PromotedEvent.B, PromotedEvent.D, PromotedEvent.F, PromotedEvent.G, PromotedEvent.H, PromotedEvent.I, PromotedEvent.E, PromotedEvent.J, PromotedEvent.K, PromotedEvent.M, PromotedEvent.C, PromotedEvent.av, PromotedEvent.ax, PromotedEvent.az, PromotedEvent.L, PromotedEvent.aw, PromotedEvent.ay, PromotedEvent.aA}));
    }

    private cbu(cbw cbw) {
        n d = n.d();
        d.c(z.a("is_preroll_video", Boolean.valueOf(cbw.b)));
        if (-1 != cbw.a) {
            d.c(z.a("video_type", Integer.valueOf(cbw.a)));
        }
        if (-1 != cbw.c) {
            d.c(z.a("video_length", Long.valueOf(cbw.c)));
        }
        if (-1 != cbw.d) {
            d.c(z.a("time_watched", Long.valueOf(cbw.d)));
        }
        if (-1 != cbw.i) {
            d.c(z.a("time_watched_fullscreen", Long.valueOf(cbw.i)));
        }
        if (-1 != cbw.e) {
            d.c(z.a("time_watched_25", Long.valueOf(cbw.e)));
        }
        if (-1 != cbw.f) {
            d.c(z.a("time_watched_50", Long.valueOf(cbw.f)));
        }
        if (-1 != cbw.g) {
            d.c(z.a("time_watched_75", Long.valueOf(cbw.g)));
        }
        if (-1 != cbw.h) {
            d.c(z.a("time_watched_100", Long.valueOf(cbw.h)));
        }
        if (-1 != cbw.j) {
            d.c(z.a("time_watched_with_audio", Long.valueOf(cbw.j)));
        }
        if (-1 != cbw.k) {
            d.c(z.a("time_watched_100_with_audio", Long.valueOf(cbw.k)));
        }
        this.b = (List) d.q();
    }

    public List<z<String, ? extends Object>> a() {
        return this.b;
    }

    public String b() {
        return "video_details";
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.b.equals(((cbu) obj).b);
    }

    public static int a(AVDataSource aVDataSource) {
        int a = cbu.a(aVDataSource.c());
        if (3 == a && aVDataSource.d()) {
            return 4;
        }
        return a;
    }

    public static int a(int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case C.ENCODING_DTS /*7*/:
                return 1;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 2;
            case Util.TYPE_OTHER /*3*/:
                return 3;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return 5;
            default:
                return 0;
        }
    }

    public static boolean a(PromotedEvent promotedEvent) {
        return a.contains(promotedEvent);
    }
}
