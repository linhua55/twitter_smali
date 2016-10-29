package com.twitter.android.util;

import android.content.DialogInterface;
import com.twitter.app.common.base.m;
import rx.al;

/* compiled from: Twttr */
class bq implements m {
    final /* synthetic */ al a;
    final /* synthetic */ bp b;

    bq(bp bpVar, al alVar) {
        this.b = bpVar;
        this.a = alVar;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i2) {
            case TtmlStyle.UNSPECIFIED /*-1*/:
                this.a.a(Boolean.valueOf(true));
            default:
                this.a.a(Boolean.valueOf(false));
        }
    }
}
