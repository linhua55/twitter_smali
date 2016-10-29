package defpackage;

import android.support.annotation.VisibleForTesting;
import cgu;
import che;
import com.twitter.library.av.ab;
import com.twitter.library.av.ae;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.model.core.cm;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: vd */
public class vd {
    private final cgu<AVDataSource> a;
    private final Map<Integer, String> b;
    private final ab c;

    public static vd a(AVDataSource aVDataSource) {
        che che = new che();
        che.a(aVDataSource);
        return new vd(che.a(), r.e(), new ae(n.g()));
    }

    public static vd a(uu uuVar, AVDataSource aVDataSource, cgu<com.twitter.model.av.ab> cgu_com_twitter_model_av_ab) {
        che che = new che();
        r d = r.d();
        n d2 = n.d();
        che.a(aVDataSource);
        Iterator it = cgu_com_twitter_model_av_ab.iterator();
        int i = 1;
        while (it.hasNext()) {
            com.twitter.model.av.ab abVar = (com.twitter.model.av.ab) it.next();
            CharSequence a = abVar.a();
            if (aj.b(a)) {
                d.b(Integer.valueOf(i), a);
            }
            for (cm a2 : abVar.b()) {
                TweetAVDataSource a3 = uuVar.a(a2);
                che.a(a3);
                d2.c(new ve(a3));
                i++;
            }
        }
        return new vd(che.a(), (Map) d.q(), new ae((List) d2.q()));
    }

    @VisibleForTesting
    public vd(cgu<AVDataSource> cgu_com_twitter_library_av_playback_AVDataSource, Map<Integer, String> map, ab abVar) {
        this.a = cgu_com_twitter_library_av_playback_AVDataSource;
        this.b = map;
        this.c = abVar;
    }

    public cgu<AVDataSource> a() {
        return this.a;
    }

    public Map<Integer, String> b() {
        return this.b;
    }

    public ab c() {
        return this.c;
    }
}
