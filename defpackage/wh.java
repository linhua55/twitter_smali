package defpackage;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.concurrent.ObservablePromise;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: wh */
class wh extends z {
    final /* synthetic */ long a;
    final /* synthetic */ List b;
    final /* synthetic */ ObservablePromise c;
    final /* synthetic */ wf d;

    wh(wf wfVar, long j, List list, ObservablePromise observablePromise) {
        this.d = wfVar;
        this.a = j;
        this.b = list;
        this.c = observablePromise;
    }

    public void a(x xVar) {
        this.d.b.put(Long.valueOf(this.a), (aa) xVar.l().b());
        if (this.d.b.keySet().containsAll(this.b)) {
            this.c.set(this.d.b);
        }
    }
}
