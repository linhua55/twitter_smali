package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

/* compiled from: Twttr */
class bc implements OnClickListener {
    final /* synthetic */ BugReporterActivity a;

    bc(BugReporterActivity bugReporterActivity) {
        this.a = bugReporterActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.startActivity(new Intent("android.settings.ADD_ACCOUNT_SETTINGS"));
    }
}
