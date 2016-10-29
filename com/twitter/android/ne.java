package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class ne implements OnClickListener {
    final /* synthetic */ RemoveAccountDialogActivity a;

    ne(RemoveAccountDialogActivity removeAccountDialogActivity) {
        this.a = removeAccountDialogActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.c();
        this.a.showDialog(1);
    }
}
