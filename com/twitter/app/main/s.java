package com.twitter.app.main;

import com.twitter.library.api.search.q;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class s extends z {
    private final j a;

    s(j jVar) {
        this.a = jVar;
    }

    public void a(x xVar) {
        if (!((aa) xVar.l().b()).b() && (xVar instanceof q)) {
            q qVar = (q) xVar;
            this.a.a(600000, this, qVar.e());
        }
    }
}
