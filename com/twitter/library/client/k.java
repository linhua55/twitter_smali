package com.twitter.library.client;

import android.annotation.TargetApi;
import com.twitter.internal.android.widget.ToolBar;
import defpackage.bby;

@TargetApi(17)
/* compiled from: Twttr */
class k extends h {
    final /* synthetic */ AbsPreferenceActivity c;

    k(AbsPreferenceActivity absPreferenceActivity, bby bby, ToolBar toolBar) {
        this.c = absPreferenceActivity;
        super(absPreferenceActivity, bby, toolBar);
    }

    protected void c(boolean z) {
        this.a.setChecked(z);
    }
}
