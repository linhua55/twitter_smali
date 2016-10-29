package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

/* compiled from: Twttr */
class pr implements OnCancelListener {
    final /* synthetic */ SecuritySettingsActivity a;

    pr(SecuritySettingsActivity securitySettingsActivity) {
        this.a = securitySettingsActivity;
    }

    public void onCancel(DialogInterface dialogInterface) {
        this.a.finish();
    }
}
