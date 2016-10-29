package com.twitter.android;

import android.widget.Button;

/* compiled from: Twttr */
class nf implements Runnable {
    final /* synthetic */ Button a;
    final /* synthetic */ RemoveAccountDialogActivity b;

    nf(RemoveAccountDialogActivity removeAccountDialogActivity, Button button) {
        this.b = removeAccountDialogActivity;
        this.a = button;
    }

    public void run() {
        this.a.setEnabled(true);
    }
}
