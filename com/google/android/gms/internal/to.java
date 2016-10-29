package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsResult;

final class to implements OnClickListener {
    final /* synthetic */ JsResult a;

    to(JsResult jsResult) {
        this.a = jsResult;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.cancel();
    }
}
