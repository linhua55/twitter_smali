package com.twitter.android.util;

import android.app.Activity;
import bdj;
import com.twitter.android.composer.ComposerType;

/* compiled from: Twttr */
final class w extends x {
    final /* synthetic */ Activity a;
    final /* synthetic */ int b;
    final /* synthetic */ ComposerType c;

    w(bdj bdj, long j, Activity activity, int i, ComposerType composerType) {
        this.a = activity;
        this.b = i;
        this.c = composerType;
        super(bdj, j);
    }

    public void a() {
        v.b(this.a, this.b, this.c);
    }
}
