package com.twitter.android.composer;

/* compiled from: Twttr */
class e implements com.twitter.util.concurrent.e<Integer> {
    final /* synthetic */ long a;
    final /* synthetic */ ComposerActivity b;

    e(ComposerActivity composerActivity, long j) {
        this.b = composerActivity;
        this.a = j;
    }

    public void a(Integer num) {
        if (this.a == this.b.R.g()) {
            ComposerActivity composerActivity = this.b;
            boolean z = num != null && num.intValue() > 0;
            composerActivity.ad = z;
            this.b.v();
        }
    }
}
