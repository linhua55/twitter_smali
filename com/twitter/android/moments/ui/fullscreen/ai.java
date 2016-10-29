package com.twitter.android.moments.ui.fullscreen;

import android.content.res.Resources;
import com.twitter.android.dialog.r;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.util.b;
import cxj;

/* compiled from: Twttr */
class ai implements cxj<BaseDialogFragment> {
    final /* synthetic */ Resources a;
    final /* synthetic */ String b;
    final /* synthetic */ af c;

    ai(af afVar, Resources resources, String str) {
        this.c = afVar;
        this.a = resources;
        this.b = str;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public BaseDialogFragment a() {
        CharSequence a = b.a(this.a, 2131361975, 2131361976, this.b);
        return ((r) ((r) ((r) new v(0).a(a)).b(b.a(this.a, 2131361973, 2131361974, this.b))).c(2131364161)).i();
    }
}
