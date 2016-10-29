package com.twitter.android;

import android.view.View;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
class lp implements Runnable {
    final /* synthetic */ PhoneMTVerifyFragment a;

    lp(PhoneMTVerifyFragment phoneMTVerifyFragment) {
        this.a = phoneMTVerifyFragment;
    }

    public void run() {
        View a = PhoneMTVerifyFragment.a(this.a);
        if (a != null) {
            if (PhoneMTVerifyFragment.b(this.a)) {
                a.setInputType(1);
            } else {
                a.setInputType(2);
            }
            a.requestFocus();
            r.b(PhoneMTVerifyFragment.c(this.a), a, true);
        }
    }
}
