package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class lk implements OnClickListener {
    final /* synthetic */ li a;

    lk(li liVar) {
        this.a = liVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b("Operation denied by user.");
    }
}
