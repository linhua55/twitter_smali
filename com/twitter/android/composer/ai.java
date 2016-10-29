package com.twitter.android.composer;

import com.twitter.android.ap;
import com.twitter.model.av.n;
import defpackage.cys;
import java.util.List;

/* compiled from: Twttr */
class ai implements cys<ap> {
    final /* synthetic */ ax a;
    final /* synthetic */ ComposerActivity b;

    ai(ComposerActivity composerActivity, ax axVar) {
        this.b = composerActivity;
        this.a = axVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((ap) obj);
    }

    public void a(ap apVar) {
        n a = apVar.a();
        if (a != null) {
            List g = this.b.aa.g();
            this.a.a(a);
            this.a.a(g, a);
            this.b.a(this.a.a(g));
        }
    }
}
