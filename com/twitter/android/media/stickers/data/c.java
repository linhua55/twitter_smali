package com.twitter.android.media.stickers.data;

import com.twitter.library.client.az;
import com.twitter.library.provider.di;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.collection.CollectionUtils;
import defpackage.cka;
import java.util.Set;

/* compiled from: Twttr */
class c extends z {
    final /* synthetic */ az a;
    final /* synthetic */ a b;

    c(a aVar, az azVar) {
        this.b = aVar;
        this.a = azVar;
    }

    public void a(x xVar) {
        cka g = ((f) xVar).g();
        if (g != null) {
            g gVar = new g(di.a(this.b.a, this.b.b), g);
            gVar.a(new d(this));
            this.a.a(gVar);
            Set a = this.b.d.a();
            if (!CollectionUtils.b(a)) {
                g = a.b(g, a);
            }
            this.b.a(a.b(g, this.b.e, this.b.f));
        }
    }
}
