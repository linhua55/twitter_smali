package com.twitter.android;

import android.view.View;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
class lv implements Runnable {
    final /* synthetic */ PhoneOwnershipCompleteFragment a;

    lv(PhoneOwnershipCompleteFragment phoneOwnershipCompleteFragment) {
        this.a = phoneOwnershipCompleteFragment;
    }

    public void run() {
        View a = PhoneOwnershipCompleteFragment.a(this.a);
        if (a != null) {
            if (PhoneOwnershipCompleteFragment.b(this.a)) {
                a.setInputType(2);
            } else {
                a.setInputType(1);
            }
            a.requestFocus();
            r.b(PhoneOwnershipCompleteFragment.c(this.a), a, true);
        }
    }
}
