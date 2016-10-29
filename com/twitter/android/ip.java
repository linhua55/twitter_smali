package com.twitter.android;

import android.support.v4.app.FragmentActivity;
import com.twitter.android.dialog.LoggedOutDialogFragment;

/* compiled from: Twttr */
final class ip implements Runnable {
    final /* synthetic */ FragmentActivity a;
    final /* synthetic */ LoggedOutDialogFragment b;

    ip(FragmentActivity fragmentActivity, LoggedOutDialogFragment loggedOutDialogFragment) {
        this.a = fragmentActivity;
        this.b = loggedOutDialogFragment;
    }

    public void run() {
        io.a(this.a, this.b.b() + "::impression");
        this.b.show(this.a.getSupportFragmentManager(), "logged_out_dialog_fragment");
    }
}
