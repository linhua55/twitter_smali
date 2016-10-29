package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.webkit.JsPromptResult;

final class tq implements OnCancelListener {
    final /* synthetic */ JsPromptResult a;

    tq(JsPromptResult jsPromptResult) {
        this.a = jsPromptResult;
    }

    public void onCancel(DialogInterface dialogInterface) {
        this.a.cancel();
    }
}
