package com.twitter.android;

import android.view.View;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
class ll implements Runnable {
    final /* synthetic */ PhoneMTEntryFragment a;

    ll(PhoneMTEntryFragment phoneMTEntryFragment) {
        this.a = phoneMTEntryFragment;
    }

    public void run() {
        View a = PhoneMTEntryFragment.a(this.a);
        if (a != null) {
            a.requestFocus();
            r.b(PhoneMTEntryFragment.b(this.a), a, true);
        }
    }
}
