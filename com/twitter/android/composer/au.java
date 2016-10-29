package com.twitter.android.composer;

/* compiled from: Twttr */
class au implements Runnable {
    final /* synthetic */ Long a;
    final /* synthetic */ at b;

    au(at atVar, Long l) {
        this.b = atVar;
        this.a = l;
    }

    public void run() {
        if (!at.a(this.b)) {
            ComposerActivity composerActivity = (ComposerActivity) at.e(this.b).get();
            if (composerActivity != null) {
                ComposerActivity.b(composerActivity).a(this.a.longValue());
                ComposerActivity.b(composerActivity, 2);
                ComposerActivity.a(composerActivity, null);
            }
        } else if (this.a.longValue() > 0) {
            ComposerActivity.a(this.a.longValue(), at.b(this.b), at.c(this.b), at.d(this.b));
        }
    }
}
