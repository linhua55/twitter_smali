package com.twitter.android.composer;

import android.content.DialogInterface;
import com.twitter.app.common.base.m;

/* compiled from: Twttr */
class ad implements m {
    final /* synthetic */ ComposerActivity a;

    ad(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        boolean z = this.a.aa.j() != null;
        if (i2 == -2) {
            this.a.l.a();
            this.a.aa.h();
            this.a.ar();
            this.a.Z = 3;
            this.a.ap = 0;
            this.a.h.a(this.a.aj(), z, bm.a().c());
            a();
        } else if (i2 == -1) {
            this.a.ap = 2;
            this.a.h.a(this.a.aj(), z);
            this.a.i(false);
            a();
        }
    }

    private void a() {
        this.a.setResult(0);
        this.a.a(false);
        this.a.finish();
    }
}
