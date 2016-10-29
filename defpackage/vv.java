package defpackage;

import android.content.Context;
import bbl;
import bbn;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.provider.di;
import com.twitter.library.resilient.e;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: vv */
public class vv extends AsyncOperation<Void, Integer> {
    private final Context a;
    private final long b;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    public vv(Context context, long j) {
        super(vv.class.getName());
        this.a = context;
        this.b = j;
        a(ExecutionClass.c);
    }

    protected Integer a() throws InterruptedException {
        int i = 0;
        di a = di.a(this.a, this.b);
        long f = (long) a.f();
        if (f == 0) {
            return Integer.valueOf(0);
        }
        e a2 = e.a(this.a);
        List a3 = a2.a(this.b, "tweet");
        a3.addAll(a2.a(this.b, "tweet_upload"));
        if (a3.isEmpty()) {
            i = a.g();
            bbn.a(new bbl().a("message", "Orphaned pending tweets").a("previewCount", Long.valueOf(f)).a("deletedCount", Integer.valueOf(i)).a(new IllegalStateException("No persistent job for preview tweet")));
        }
        return Integer.valueOf(i);
    }

    protected Integer b() {
        return Integer.valueOf(0);
    }
}
