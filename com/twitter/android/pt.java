package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

/* compiled from: Twttr */
class pt implements OnClickListener {
    final /* synthetic */ SecuritySettingsActivity a;

    pt(SecuritySettingsActivity securitySettingsActivity) {
        this.a = securitySettingsActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.startActivity(new Intent(this.a, PhoneEntrySettingsActivity.class).putExtra("account_name", this.a.a));
    }
}
