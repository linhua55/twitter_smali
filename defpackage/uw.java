package defpackage;

import atf;
import cgu;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.model.av.ab;
import cym;
import dbd;
import java.io.IOException;
import rx.o;
import rx.t;

/* compiled from: Twttr */
/* renamed from: uw */
public class uw implements atf<AVDataSource, vd> {
    private final AVDataSource a;
    private final uu b;
    private final atf<AVDataSource, cgu<ab>> c;

    public /* synthetic */ o a_(Object obj) {
        return a((AVDataSource) obj);
    }

    public uw(AVDataSource aVDataSource, atf<AVDataSource, cgu<ab>> atf_com_twitter_library_av_playback_AVDataSource__cgu_com_twitter_model_av_ab, uu uuVar) {
        this.a = aVDataSource;
        this.c = atf_com_twitter_library_av_playback_AVDataSource__cgu_com_twitter_model_av_ab;
        this.b = uuVar;
    }

    public o<vd> a(AVDataSource aVDataSource) {
        return this.c.a_(aVDataSource).d(cvq.b()).a(a()).g(new ux(this)).d(vd.a(this.a)).a(b());
    }

    protected t a() {
        return dbd.d();
    }

    protected t b() {
        return cym.a();
    }

    public void close() throws IOException {
        this.c.close();
    }
}
