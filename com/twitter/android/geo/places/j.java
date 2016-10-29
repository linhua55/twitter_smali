package com.twitter.android.geo.places;

import com.twitter.library.api.geo.g;
import com.twitter.model.geo.TwitterPlace;

/* compiled from: Twttr */
class j implements s {
    final /* synthetic */ h a;

    j(h hVar) {
        this.a = hVar;
    }

    public void a(g gVar) {
        if (gVar != null && !gVar.a().isEmpty()) {
            h.a(this.a, (TwitterPlace) gVar.a().get(0));
            h.a(this.a).c(h.b(this.a).d);
        }
    }
}
