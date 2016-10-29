package com.twitter.android.settings.developer;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class c implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ DebugSettingsActivity b;

    c(DebugSettingsActivity debugSettingsActivity, String str) {
        this.b = debugSettingsActivity;
        this.a = str;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.a(this.a);
    }
}
