package com.twitter.android;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.android.timeline.aw;
import com.twitter.library.api.timeline.j;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.service.ab;
import com.twitter.library.widget.InlineDismissView;
import com.twitter.library.widget.r;
import com.twitter.model.timeline.i;
import com.twitter.util.collection.MutableList;
import com.twitter.util.object.g;
import defpackage.cds;
import java.util.List;

/* compiled from: Twttr */
class si implements r {
    private final g<hn> a;
    private final bg b;
    private final az c;
    private final Context d;
    private final cds e;

    si(g<hn> gVar, bg bgVar, az azVar, Context context, cds cds) {
        this.a = gVar;
        this.b = bgVar;
        this.c = azVar;
        this.d = context.getApplicationContext();
        this.e = cds;
    }

    public void a(InlineDismissView inlineDismissView, i iVar) {
        aw awVar = (aw) inlineDismissView.getTag(2131951712);
        a(awVar, iVar, false);
        this.e.a(awVar.o, iVar, "click");
    }

    public void b(InlineDismissView inlineDismissView, i iVar) {
        aw awVar = (aw) inlineDismissView.getTag(2131951712);
        a(awVar, iVar, true);
        this.e.a(awVar.o, iVar, "undo");
    }

    public void c(InlineDismissView inlineDismissView, i iVar) {
        aw awVar = (aw) inlineDismissView.getTag(2131951712);
        ((hn) this.a.b()).b(inlineDismissView, awVar);
        a(awVar, iVar, true);
        this.e.a(awVar.o, iVar, "undo");
    }

    private void a(aw awVar, i iVar, boolean z) {
        this.c.a(a(this.d, iVar, awVar, z));
    }

    @VisibleForTesting
    j a(Context context, i iVar, aw awVar, boolean z) {
        List a = MutableList.a();
        List a2 = MutableList.a();
        List a3 = MutableList.a();
        awVar.a(a, a2, a3);
        return new j(context, new ab(this.b.c()), iVar, awVar.o, z, a, a2, a3);
    }
}
