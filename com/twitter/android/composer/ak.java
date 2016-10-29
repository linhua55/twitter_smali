package com.twitter.android.composer;

/* compiled from: Twttr */
class ak extends ar {
    final /* synthetic */ Runnable a;
    final /* synthetic */ ComposerActivity b;

    ak(ComposerActivity composerActivity, Runnable runnable) {
        this.b = composerActivity;
        this.a = runnable;
        super(composerActivity);
    }

    protected void a() {
        this.a.run();
    }
}
