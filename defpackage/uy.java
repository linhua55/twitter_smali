package defpackage;

import atf;
import cgu;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.model.av.ab;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: uy */
public final class uy implements c<uw> {
    static final /* synthetic */ boolean a;
    private final cxj<AVDataSource> b;
    private final cxj<atf<AVDataSource, cgu<ab>>> c;
    private final cxj<uu> d;

    static {
        a = !uy.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public uy(cxj<AVDataSource> cxj_com_twitter_library_av_playback_AVDataSource, cxj<atf<AVDataSource, cgu<ab>>> cxj_atf_com_twitter_library_av_playback_AVDataSource__cgu_com_twitter_model_av_ab, cxj<uu> cxj_uu) {
        if (a || cxj_com_twitter_library_av_playback_AVDataSource != null) {
            this.b = cxj_com_twitter_library_av_playback_AVDataSource;
            if (a || cxj_atf_com_twitter_library_av_playback_AVDataSource__cgu_com_twitter_model_av_ab != null) {
                this.c = cxj_atf_com_twitter_library_av_playback_AVDataSource__cgu_com_twitter_model_av_ab;
                if (a || cxj_uu != null) {
                    this.d = cxj_uu;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public uw a() {
        return new uw((AVDataSource) this.b.b(), (atf) this.c.b(), (uu) this.d.b());
    }

    public static c<uw> a(cxj<AVDataSource> cxj_com_twitter_library_av_playback_AVDataSource, cxj<atf<AVDataSource, cgu<ab>>> cxj_atf_com_twitter_library_av_playback_AVDataSource__cgu_com_twitter_model_av_ab, cxj<uu> cxj_uu) {
        return new uy(cxj_com_twitter_library_av_playback_AVDataSource, cxj_atf_com_twitter_library_av_playback_AVDataSource__cgu_com_twitter_model_av_ab, cxj_uu);
    }
}
