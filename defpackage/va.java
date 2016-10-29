package defpackage;

import atf;
import com.twitter.library.av.playback.AVDataSource;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: va */
public final class va implements c<uz> {
    static final /* synthetic */ boolean a;
    private final cxj<atf<AVDataSource, vd>> b;

    static {
        a = !va.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public va(cxj<atf<AVDataSource, vd>> cxj_atf_com_twitter_library_av_playback_AVDataSource__vd) {
        if (a || cxj_atf_com_twitter_library_av_playback_AVDataSource__vd != null) {
            this.b = cxj_atf_com_twitter_library_av_playback_AVDataSource__vd;
            return;
        }
        throw new AssertionError();
    }

    public uz a() {
        return new uz((atf) this.b.b());
    }

    public static c<uz> a(cxj<atf<AVDataSource, vd>> cxj_atf_com_twitter_library_av_playback_AVDataSource__vd) {
        return new va(cxj_atf_com_twitter_library_av_playback_AVDataSource__vd);
    }
}
