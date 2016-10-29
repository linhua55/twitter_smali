package defpackage;

import com.twitter.library.api.upload.h;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: wo */
class wo implements Callable<Void> {
    final /* synthetic */ h a;
    final /* synthetic */ wk b;

    wo(wk wkVar, h hVar) {
        this.b = wkVar;
        this.a = hVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        this.b.a.setException(this.a.c());
        return null;
    }
}
