package com.twitter.android.moments.data;

import com.twitter.library.client.bg;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.util.collection.n;
import com.twitter.util.z;
import java.util.List;

/* compiled from: Twttr */
public class ai {
    private final al a;
    private final bg b;

    public ai(bg bgVar, al alVar) {
        this.a = alVar;
        this.b = bgVar;
    }

    public void a(List<MomentPage> list) {
        n d = n.d();
        n d2 = n.d();
        for (MomentPage momentPage : list) {
            if (momentPage instanceof o) {
                o oVar = (o) momentPage;
                if (!oVar.a()) {
                    d.c(Long.valueOf(oVar.m()));
                    d2.c(oVar);
                }
            }
        }
        this.a.a((z) new aj(this, (List) d2.q()));
        this.a.a((List) d.q(), this.b.c(), new ak(this, list));
    }
}
