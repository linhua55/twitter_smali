package com.twitter.android.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class c implements OnClickListener {
    final /* synthetic */ AccountActivity a;

    c(AccountActivity accountActivity) {
        this.a = accountActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
