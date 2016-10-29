package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.webkit.JsResult;

final class tn implements OnCancelListener {
    final /* synthetic */ JsResult a;

    tn(JsResult jsResult) {
        this.a = jsResult;
    }

    public void onCancel(DialogInterface dialogInterface) {
        this.a.cancel();
    }
}
