package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

/* compiled from: Twttr */
class pu implements OnClickListener {
    final /* synthetic */ SecuritySettingsActivity a;

    pu(SecuritySettingsActivity securitySettingsActivity) {
        this.a = securitySettingsActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://support.twitter.com/articles/82050-i-m-having-trouble-confirming-my-email-address")));
    }
}
