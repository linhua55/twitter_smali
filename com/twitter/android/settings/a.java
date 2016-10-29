package com.twitter.android.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

/* compiled from: Twttr */
class a implements OnCancelListener {
    final /* synthetic */ AccountActivity a;

    a(AccountActivity accountActivity) {
        this.a = accountActivity;
    }

    public void onCancel(DialogInterface dialogInterface) {
        dialogInterface.dismiss();
    }
}
