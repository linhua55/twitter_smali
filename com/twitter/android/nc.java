package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

/* compiled from: Twttr */
class nc implements OnDismissListener {
    final /* synthetic */ RemoveAccountDialogActivity a;

    nc(RemoveAccountDialogActivity removeAccountDialogActivity) {
        this.a = removeAccountDialogActivity;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.a.b) {
            this.a.finish();
        }
    }
}
