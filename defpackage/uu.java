package defpackage;

import chl;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.provider.di;
import com.twitter.model.core.cm;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: uu */
public class uu extends chl<cm, TweetAVDataSource> {
    private final di a;

    public uu(di diVar) {
        this.a = diVar;
    }

    public TweetAVDataSource a(cm cmVar) {
        h.c();
        return new TweetAVDataSource(this.a.d(cmVar.b));
    }
}
