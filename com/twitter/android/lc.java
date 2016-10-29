package com.twitter.android;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import com.twitter.library.network.aq;

/* compiled from: Twttr */
class lc extends aq {
    final /* synthetic */ PasswordResetActivity a;

    lc(PasswordResetActivity passwordResetActivity) {
        this.a = passwordResetActivity;
    }

    protected boolean a(WebView webView, Uri uri) {
        if (this.a.b) {
            this.a.startActivity(new Intent("android.intent.action.VIEW", uri).setFlags(268468224));
        } else {
            this.a.setResult(-1, new Intent(null, uri));
        }
        this.a.finish();
        return true;
    }
}
