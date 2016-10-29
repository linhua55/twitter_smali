package com.twitter.android.composer;

import defpackage.wx;

/* compiled from: Twttr */
class t implements wx {
    final /* synthetic */ ComposerActivity a;

    t(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void a(boolean z) {
        this.a.i.setAlertHashtag(z);
        this.a.c();
    }

    public void a() {
        this.a.e();
    }

    public ar a(Runnable runnable) {
        return this.a.a(runnable);
    }
}
