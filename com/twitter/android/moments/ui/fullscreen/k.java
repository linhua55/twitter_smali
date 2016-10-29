package com.twitter.android.moments.ui.fullscreen;

import android.util.SparseArray;
import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.MomentPage.Type;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage;
import com.twitter.model.moments.viewmodels.j;
import com.twitter.model.moments.viewmodels.s;

/* compiled from: Twttr */
class k {
    static final /* synthetic */ boolean a;
    private final SparseArray<s> b;
    private final j c;

    static {
        a = !k.class.desiredAssertionStatus();
    }

    k(j jVar) {
        this.b = new SparseArray();
        this.c = jVar;
        int b = jVar.b();
        int i = 0;
        s sVar = null;
        while (i < b) {
            MomentPage c = jVar.c(i);
            if (a || c != null) {
                s sVar2;
                if (c.d() == Type.d) {
                    sVar2 = (s) c;
                    this.b.put(i, sVar2);
                } else if (a(c)) {
                    sVar2 = null;
                } else {
                    if (sVar != null) {
                        this.b.put(i, sVar);
                    }
                    sVar2 = sVar;
                }
                i++;
                sVar = sVar2;
            } else {
                throw new AssertionError();
            }
        }
    }

    public s a(int i) {
        return (s) this.b.get(i);
    }

    public int a() {
        return this.c.b();
    }

    private static boolean a(MomentPage momentPage) {
        return momentPage.g() == MomentPageDisplayMode.c || (momentPage.d() == Type.c && ((MomentTweetStreamingVideoPage) momentPage).q());
    }
}
