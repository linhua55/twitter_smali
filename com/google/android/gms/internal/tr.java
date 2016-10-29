package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;

final class tr implements OnClickListener {
    final /* synthetic */ JsPromptResult a;

    tr(JsPromptResult jsPromptResult) {
        this.a = jsPromptResult;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.cancel();
    }
}
