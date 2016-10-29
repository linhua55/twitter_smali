package com.twitter.app.drafts;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class b implements OnClickListener {
    final /* synthetic */ ConfirmRetryExpiredDraftsDialog a;

    b(ConfirmRetryExpiredDraftsDialog confirmRetryExpiredDraftsDialog) {
        this.a = confirmRetryExpiredDraftsDialog;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.d();
        this.a.dismiss();
    }
}
