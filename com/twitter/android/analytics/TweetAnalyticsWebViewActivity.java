package com.twitter.android.analytics;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.client.TwitterWebViewActivity;
import com.twitter.app.common.base.t;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class TweetAnalyticsWebViewActivity extends TwitterWebViewActivity {
    public static Intent a(Context context, long j) {
        return new Intent(context, TweetAnalyticsWebViewActivity.class).setData(Uri.parse(context.getString(2131364407, new Object[]{Long.valueOf(j)})));
    }

    public t a(Bundle bundle, t tVar) {
        super.a(bundle, tVar);
        tVar.b(14);
        tVar.b(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        Uri data = getIntent().getData();
        setTitle(2131363998);
        a(data.toString());
    }

    protected void a(WebView webView, String str) {
        CharSequence title = webView.getTitle();
        if (aj.b(title)) {
            setTitle(title);
        }
    }

    protected boolean a(WebView webView, Uri uri) {
        if (uri.toString().toLowerCase().startsWith(getString(2131364405))) {
            return false;
        }
        OpenUriHelper.a((Context) this, uri.toString(), null);
        return true;
    }
}
