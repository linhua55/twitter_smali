package com.twitter.library.network.livepipeline;

import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import cys;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

/* compiled from: Twttr */
class m implements cys<List<String>> {
    final /* synthetic */ ab a;
    final /* synthetic */ b b;

    m(b bVar, ab abVar) {
        this.b = bVar;
        this.a = abVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((List) obj);
    }

    public void a(List<String> list) {
        Collection hashSet = new HashSet(list);
        hashSet.retainAll(this.b.f);
        if (!hashSet.isEmpty()) {
            az.a(this.b.h).a(new af(this.b.h, bg.a().c(), this.a, this.b.f(), new HashSet(hashSet)));
        }
    }
}
