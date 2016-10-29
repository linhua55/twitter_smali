package defpackage;

import auc;
import cjw;
import com.twitter.database.model.j;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.provider.di;
import com.twitter.util.collection.n;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bya */
class bya extends AsyncOperation<Void, List<cjw>> {
    private final di a;
    private final List<Long> b;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    protected bya(di diVar, List<Long> list) {
        super("load_stickers");
        this.a = diVar;
        this.b = list;
    }

    protected List<cjw> a() throws InterruptedException {
        j a = this.a.b().a(bas.class).f().a(auc.a("_id", this.b), new String[0]);
        n d = n.d();
        while (a.c()) {
            try {
                d.c(new cjy().c(((bat) a.a).a()).a(((bat) a.a).b()).f(((bat) a.a).l()).g(((bat) a.a).m()).h(((bat) a.a).n()).b(((bat) a.a).g()).a(((bat) a.a).d()).e(((bat) a.a).e()).d(((bat) a.a).h()).c(((bat) a.a).j()).b(((bat) a.a).i()).a(((bat) a.a).p()).d(((bat) a.a).k()).e(((bat) a.a).c()).a(((bat) a.a).o()).q());
            } finally {
                a.close();
            }
        }
        return (List) d.q();
    }

    protected List<cjw> b() {
        return Collections.emptyList();
    }
}
