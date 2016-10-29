package com.twitter.library.network.livepipeline;

import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import cys;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
class o implements cys<List<String>> {
    final /* synthetic */ ab a;
    final /* synthetic */ b b;

    o(b bVar, ab abVar) {
        this.b = bVar;
        this.a = abVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((List) obj);
    }

    public void a(List<String> list) {
        Set hashSet = new HashSet(list);
        hashSet.removeAll(this.b.f);
        if (!hashSet.isEmpty()) {
            az.a(this.b.h).a(new ak(this.b.h, bg.a().c(), this.a, this.b.f(), hashSet));
        }
    }
}
