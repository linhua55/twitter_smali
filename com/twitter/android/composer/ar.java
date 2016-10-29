package com.twitter.android.composer;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
public abstract class ar implements OnClickListener {
    final /* synthetic */ ComposerActivity c;

    protected abstract void a();

    public ar(ComposerActivity composerActivity) {
        this.c = composerActivity;
    }

    public final void onClick(View view) {
        if (!this.c.v.b()) {
            a();
        }
    }
}
