package com.twitter.android.util;

import android.support.v4.app.FragmentManager;
import com.twitter.app.common.base.BaseDialogFragment;
import cxj;
import rx.ak;
import rx.al;

/* compiled from: Twttr */
final class bp implements ak<Boolean> {
    final /* synthetic */ cxj a;
    final /* synthetic */ FragmentManager b;

    bp(cxj cxj, FragmentManager fragmentManager) {
        this.a = cxj;
        this.b = fragmentManager;
    }

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    public void a(al<? super Boolean> alVar) {
        BaseDialogFragment baseDialogFragment = (BaseDialogFragment) this.a.b();
        baseDialogFragment.a(new bq(this, alVar));
        baseDialogFragment.a(new br(this, alVar));
        baseDialogFragment.a(this.b);
    }
}
