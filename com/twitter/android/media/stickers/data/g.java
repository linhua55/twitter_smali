package com.twitter.android.media.stickers.data;

import cjw;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.twitter.database.model.k;
import com.twitter.database.model.l;
import com.twitter.database.model.r;
import com.twitter.database.model.w;
import com.twitter.database.schema.TwitterSchema;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.provider.di;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bao;
import defpackage.bap;
import defpackage.baq;
import defpackage.bar;
import defpackage.bau;
import defpackage.bav;
import defpackage.cka;
import defpackage.ckp;
import defpackage.ckr;
import java.util.List;

/* compiled from: Twttr */
public class g extends AsyncOperation<Void, Boolean> {
    private final di a;
    private final cka b;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    public g(di diVar, cka cka) {
        super("write_stickers_to_db");
        this.a = diVar;
        this.b = cka;
    }

    protected Boolean a() {
        boolean z = true;
        TwitterSchema b = this.a.b();
        r c = b.c(bau.class);
        k b2 = c.b();
        r c2 = b.c(bao.class);
        k b3 = c2.b();
        k b4 = b.c(baq.class).b();
        if (!(CollectionUtils.b(this.b.a) && CollectionUtils.b(this.b.b))) {
            c.a(TtmlNode.ANONYMOUS_REGION_ID, new String[0]);
            c2.a(TtmlNode.ANONYMOUS_REGION_ID, new String[0]);
        }
        boolean a = a(b2, b3, b4, b, this.b.a, false);
        boolean a2 = a(b2, b3, b4, b, this.b.b, true);
        if (!(a && a2)) {
            c.a(TtmlNode.ANONYMOUS_REGION_ID, new String[0]);
            c2.a(TtmlNode.ANONYMOUS_REGION_ID, new String[0]);
        }
        if (!(a && a2)) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    protected Boolean b() {
        return Boolean.valueOf(false);
    }

    private static boolean a(k<bav> kVar, k<bap> kVar2, k<bar> kVar3, l lVar, List<ckp> list, boolean z) {
        for (ckp ckp : list) {
            long j = ckp.a;
            ((bav) kVar.d).c(j).d(ckp.b).a(ckp.e).a(ckp.d).a(z).b(ckp.g);
            if (kVar.b() == -1) {
                return false;
            }
            w f = lVar.f();
            for (ckr ckr : ckp.f) {
                cjw a = ckr.a();
                a((bar) kVar3.d, a);
                if (kVar3.c() == -1) {
                    f.close();
                    return false;
                }
                try {
                    ((bap) ((bap) kVar2.d).b(a.h)).c(j);
                    if (kVar2.c() == -1) {
                        f.close();
                        return false;
                    }
                    for (cjw cjw : ckr.a) {
                        a((bar) kVar3.d, cjw).f(a.h);
                        if (kVar3.c() == -1) {
                            f.close();
                            return false;
                        }
                        ((bap) ((bap) kVar2.d).b(cjw.h)).c(j);
                        if (kVar2.c() == -1) {
                            return false;
                        }
                    }
                } finally {
                    f.close();
                }
            }
            f.a();
            f.close();
        }
        return true;
    }

    private static bar a(bar bar, cjw cjw) {
        return ((bar) bar.b(cjw.h)).e(cjw.c).g(cjw.m).h(cjw.n != 0 ? cjw.n : PtsTimestampAdjuster.DO_NOT_OFFSET).i(cjw.o).d(cjw.g).c(cjw.b).e(cjw.k).j(cjw.i).a(true).b(cjw.e).a(cjw.d).c(cjw.f).d(cjw.l).a(cjw.j);
    }
}
