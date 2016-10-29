package com.twitter.android.composer;

import android.view.KeyEvent;

/* compiled from: Twttr */
class h implements ch {
    final /* synthetic */ ComposerActivity a;

    h(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void a(int i) {
        this.a.a(i);
    }

    public void a() {
        this.a.l();
    }

    public void b() {
        this.a.i();
    }

    public void a(boolean z) {
        this.a.d(z);
    }

    public void c() {
    }

    public boolean a(KeyEvent keyEvent) {
        if (!this.a.ah) {
            return false;
        }
        this.a.finish();
        return true;
    }
}
