package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

/* compiled from: Twttr */
class pq implements OnDismissListener {
    final /* synthetic */ SecuritySettingsActivity a;

    pq(SecuritySettingsActivity securitySettingsActivity) {
        this.a = securitySettingsActivity;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.a.finish();
    }
}
