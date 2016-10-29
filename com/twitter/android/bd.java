package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class bd implements OnClickListener {
    final /* synthetic */ BugReporterActivity a;

    bd(BugReporterActivity bugReporterActivity) {
        this.a = bugReporterActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.c();
    }
}
