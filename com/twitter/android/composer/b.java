package com.twitter.android.composer;

import com.twitter.app.drafts.DraftsActivity;

/* compiled from: Twttr */
class b extends ar {
    final /* synthetic */ ComposerActivity a;

    b(ComposerActivity composerActivity) {
        this.a = composerActivity;
        super(composerActivity);
    }

    protected void a() {
        this.a.startActivityForResult(DraftsActivity.a(this.a, false, null, this.a.aa.c()), 515);
    }
}
