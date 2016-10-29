package defpackage;

import cjw;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.twitter.database.model.k;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.provider.di;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: byb */
class byb extends AsyncOperation<Void, Boolean> {
    private final di a;
    private final List<cjw> b;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    protected byb(di diVar, List<cjw> list) {
        super("write_stickers_to_db");
        this.a = diVar;
        this.b = list;
    }

    protected Boolean a() throws InterruptedException {
        k b = this.a.b().c(baq.class).b();
        boolean z = true;
        for (cjw cjw : this.b) {
            long j;
            boolean z2;
            bar g = ((bar) ((bar) b.d).b(cjw.h)).e(cjw.c).g(cjw.m);
            if (cjw.n != 0) {
                j = cjw.n;
            } else {
                j = PtsTimestampAdjuster.DO_NOT_OFFSET;
            }
            g.h(j).i(cjw.o).d(cjw.g).c(cjw.b).e(cjw.k).j(cjw.i).a(false).b(cjw.e).a(cjw.d).c(cjw.f).d(cjw.l).a(cjw.j);
            if (b.c() == -1) {
                z2 = false;
            } else {
                z2 = z;
            }
            z = z2;
        }
        return Boolean.valueOf(z);
    }

    protected Boolean b() {
        return Boolean.valueOf(false);
    }
}
