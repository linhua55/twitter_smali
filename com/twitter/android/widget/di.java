package com.twitter.android.widget;

import com.twitter.android.dialog.q;
import com.twitter.app.common.base.BaseDialogFragment;

/* compiled from: Twttr */
public class di extends q<di> {
    protected /* synthetic */ BaseDialogFragment c() {
        return a();
    }

    public di(int i) {
        super(i);
    }

    protected PendingEmailOverlayPrompt a() {
        return new PendingEmailOverlayPrompt();
    }

    public di b(String str) {
        this.a.putString("pending_email", str);
        return this;
    }
}
