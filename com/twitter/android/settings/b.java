package com.twitter.android.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class b implements OnClickListener {
    final /* synthetic */ AccountActivity a;

    b(AccountActivity accountActivity) {
        this.a = accountActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.f();
    }
}
