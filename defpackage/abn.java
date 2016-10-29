package defpackage;

import com.twitter.config.d;
import com.twitter.util.aj;
import java.util.concurrent.TimeUnit;
import rx.o;
import rx.t;

/* compiled from: Twttr */
/* renamed from: abn */
public class abn {
    private final o<Long> a;

    public abn() {
        this(dbd.c());
    }

    public abn(t tVar) {
        long b = b();
        if (b > 0) {
            this.a = o.a(b, TimeUnit.SECONDS, tVar);
        } else {
            this.a = o.d();
        }
    }

    public o<Long> a() {
        return this.a;
    }

    long b() {
        try {
            return d.a("live_video_timeline_polling_interval", 0);
        } catch (ClassCastException e) {
            return aj.a(d.b("live_video_timeline_polling_interval"), 0);
        }
    }
}
