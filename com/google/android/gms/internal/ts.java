package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;
import android.widget.EditText;

final class ts implements OnClickListener {
    final /* synthetic */ JsPromptResult a;
    final /* synthetic */ EditText b;

    ts(JsPromptResult jsPromptResult, EditText editText) {
        this.a = jsPromptResult;
        this.b = editText;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.confirm(this.b.getText().toString());
    }
}
