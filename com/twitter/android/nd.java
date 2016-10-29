package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import bev;
import defpackage.bek;

/* compiled from: Twttr */
class nd implements OnClickListener {
    final /* synthetic */ RemoveAccountDialogActivity a;

    nd(RemoveAccountDialogActivity removeAccountDialogActivity) {
        this.a = removeAccountDialogActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (bek.a(this.a, this.a.c)) {
            this.a.showDialog(2);
            this.a.b = true;
            this.a.a = true;
            this.a.b(new bev(this.a, this.a.aa().b(this.a.c), this.a.c), 1);
            return;
        }
        this.a.c();
    }
}
