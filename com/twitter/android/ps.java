package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class ps implements OnClickListener {
    final /* synthetic */ SecuritySettingsActivity a;

    ps(SecuritySettingsActivity securitySettingsActivity) {
        this.a = securitySettingsActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.finish();
    }
}
