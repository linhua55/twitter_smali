package com.twitter.android.composer;

import com.twitter.android.provider.m;
import com.twitter.android.widget.y;
import defpackage.cgu;
import defpackage.tq;

/* compiled from: Twttr */
class w implements y {
    final /* synthetic */ ComposerActivity a;

    w(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void a(tq tqVar, cgu<m> cgu_com_twitter_android_provider_m) {
        this.a.a((cgu) cgu_com_twitter_android_provider_m, tqVar);
    }

    public void a(String str, tq tqVar, int i) {
        this.a.a(str, tqVar, i);
        this.a.x();
    }

    public void a() {
        this.a.x();
    }

    public void b() {
        if (this.a.v.getDrawerState() != 2) {
            this.a.x();
        }
    }
}
