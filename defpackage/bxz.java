package defpackage;

import auc;
import com.twitter.database.model.k;
import com.twitter.database.model.r;
import com.twitter.database.schema.TwitterSchema;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.provider.di;
import com.twitter.util.al;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: bxz */
class bxz extends AsyncOperation<Void, Boolean> {
    private final di a;
    private final List<Long> b;
    private final Set<Long> c;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    protected bxz(di diVar, List<Long> list, Set<Long> set) {
        super("delete_stickers_from_db");
        this.a = diVar;
        this.b = list;
        this.c = set;
    }

    protected Boolean a() throws InterruptedException {
        boolean z;
        TwitterSchema b = this.a.b();
        Object[] toArray = this.b.toArray();
        b.c(bao.class).a(auc.a("_id", toArray), new String[0]);
        r c = b.c(baq.class);
        if (((long) c.a(auc.a("_id", toArray), new String[0])) == -1) {
            z = false;
        } else {
            z = true;
        }
        k b2 = c.b();
        if (!this.c.isEmpty()) {
            ((bar) b2.d).i(al.b());
            if (((long) b2.a(auc.a("_id", this.c.toArray()), new String[0])) == -1) {
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }

    protected Boolean b() {
        return Boolean.valueOf(false);
    }
}
