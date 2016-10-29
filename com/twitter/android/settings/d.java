package com.twitter.android.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class d implements OnClickListener {
    final /* synthetic */ AccountActivity a;

    d(AccountActivity accountActivity) {
        this.a = accountActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.e(true);
    }
}
