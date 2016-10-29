package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsResult;

final class tp implements OnClickListener {
    final /* synthetic */ JsResult a;

    tp(JsResult jsResult) {
        this.a = jsResult;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.confirm();
    }
}
