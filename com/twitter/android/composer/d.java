package com.twitter.android.composer;

import com.twitter.library.provider.v;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class d implements Callable<Integer> {
    final /* synthetic */ v a;
    final /* synthetic */ ComposerActivity b;

    d(ComposerActivity composerActivity, v vVar) {
        this.b = composerActivity;
        this.a = vVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Integer a() throws Exception {
        return Integer.valueOf(this.a.a(2));
    }
}
