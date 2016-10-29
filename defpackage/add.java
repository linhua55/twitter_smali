package defpackage;

import com.twitter.model.moments.viewmodels.d;
import com.twitter.util.collection.ao;
import com.twitter.util.collection.x;
import rx.o;

/* compiled from: Twttr */
/* renamed from: add */
class add implements cyw<x<d>, o<ao<d, com.twitter.model.moments.d>>> {
    final /* synthetic */ adc a;

    add(adc adc) {
        this.a = adc;
    }

    public o<ao<d, com.twitter.model.moments.d>> a(x<d> xVar) {
        if (xVar.c()) {
            return o.b(ao.a(xVar.b()));
        }
        return o.b(ao.b(com.twitter.model.moments.d.a));
    }
}
