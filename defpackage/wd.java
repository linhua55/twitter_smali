package defpackage;

import com.twitter.library.service.aa;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.e;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: wd */
class wd implements e<aa> {
    final /* synthetic */ long a;
    final /* synthetic */ Set b;
    final /* synthetic */ ObservablePromise c;
    final /* synthetic */ wc d;

    wd(wc wcVar, long j, Set set, ObservablePromise observablePromise) {
        this.d = wcVar;
        this.a = j;
        this.b = set;
        this.c = observablePromise;
    }

    public void a(aa aaVar) {
        this.d.a.put(Long.valueOf(this.a), aaVar);
        if (this.d.a.keySet().containsAll(this.b)) {
            this.c.set(this.d.a);
        }
    }
}
