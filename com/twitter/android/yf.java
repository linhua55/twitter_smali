package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

/* compiled from: Twttr */
class yf implements OnCancelListener {
    final /* synthetic */ WebViewActivity a;

    yf(WebViewActivity webViewActivity) {
        this.a = webViewActivity;
    }

    public void onCancel(DialogInterface dialogInterface) {
        this.a.finish();
    }
}
