package com.twitter.android;

import android.view.View;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
class ls implements Runnable {
    final /* synthetic */ PhoneOwnershipBeginFragment a;

    ls(PhoneOwnershipBeginFragment phoneOwnershipBeginFragment) {
        this.a = phoneOwnershipBeginFragment;
    }

    public void run() {
        View a = PhoneOwnershipBeginFragment.a(this.a);
        if (a != null) {
            a.requestFocus();
            r.b(PhoneOwnershipBeginFragment.b(this.a), a, true);
        }
    }
}
