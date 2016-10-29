package com.twitter.app.drafts;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class a implements OnClickListener {
    final /* synthetic */ ConfirmRetryExpiredDraftsDialog a;

    a(ConfirmRetryExpiredDraftsDialog confirmRetryExpiredDraftsDialog) {
        this.a = confirmRetryExpiredDraftsDialog;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.dismiss();
        this.a.c();
    }
}
