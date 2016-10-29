package com.twitter.android.composer;

import android.content.Intent;
import defpackage.dbv;

/* compiled from: Twttr */
class aj implements dbv {
    final /* synthetic */ ComposerActivity a;

    aj(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void a(Intent intent) {
        this.a.aG = System.currentTimeMillis();
        this.a.startActivityForResult(intent, 522);
    }
}
