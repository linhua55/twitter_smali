package com.twitter.android;

import android.content.Intent;
import com.twitter.library.service.i;
import com.twitter.model.account.OAuthToken;

/* compiled from: Twttr */
class ad implements i {
    final /* synthetic */ AuthorizeAppActivity a;

    ad(AuthorizeAppActivity authorizeAppActivity) {
        this.a = authorizeAppActivity;
    }

    public void a(int i, OAuthToken oAuthToken, String str, long j) {
        this.a.e();
        switch (i) {
            case 200:
                if (oAuthToken != null) {
                    this.a.setResult(-1, new Intent().putExtra("tk", oAuthToken.b).putExtra("ts", oAuthToken.a).putExtra("screen_name", str).putExtra("user_id", j));
                }
                this.a.finish();
            case 401:
            case 403:
                this.a.a(2131361942);
            default:
                this.a.a(2131361852);
        }
    }
}
