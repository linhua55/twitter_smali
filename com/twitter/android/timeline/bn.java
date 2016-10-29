package com.twitter.android.timeline;

import com.twitter.android.client.c;
import com.twitter.android.widget.n;
import com.twitter.library.api.PromotedEvent;

/* compiled from: Twttr */
public class bn implements n<bb> {
    private final c a;

    public bn(c cVar) {
        this.a = cVar;
    }

    public boolean a(bb bbVar) {
        return bbVar.b.q();
    }

    public void a(bb bbVar, int i) {
        this.a.a(PromotedEvent.a, bbVar.b.f);
    }

    public void a(bb bbVar, boolean z) {
        this.a.a(z ? PromotedEvent.ar : PromotedEvent.as, bbVar.b.f);
    }
}
