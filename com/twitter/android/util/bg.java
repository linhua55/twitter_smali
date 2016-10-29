package com.twitter.android.util;

import android.content.res.Resources;
import com.twitter.app.common.base.BaseDialogFragment;
import cxj;

/* compiled from: Twttr */
final class bg implements cxj<BaseDialogFragment> {
    final /* synthetic */ Resources a;
    final /* synthetic */ String b;
    final /* synthetic */ int c;

    bg(Resources resources, String str, int i) {
        this.a = resources;
        this.b = str;
        this.c = i;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public BaseDialogFragment a() {
        return bf.a(this.a, this.b, this.c);
    }
}
