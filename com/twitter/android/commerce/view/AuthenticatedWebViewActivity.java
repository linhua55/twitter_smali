package com.twitter.android.commerce.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.android.client.TwitterWebViewActivity;
import com.twitter.app.common.base.t;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class AuthenticatedWebViewActivity extends TwitterWebViewActivity {
    private long a;
    private String b;

    public static Intent a(Context context, String str, String str2, long j, String str3) {
        return new Intent(context, AuthenticatedWebViewActivity.class).putExtra("web_view_url", str).putExtra("web_view_title", str2).putExtra("tweet_id", j).putExtra("impression_id", str3);
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        String stringExtra = getIntent().getStringExtra("web_view_url");
        CharSequence stringExtra2 = getIntent().getStringExtra("web_view_title");
        this.a = getIntent().getLongExtra("tweet_id", 0);
        this.b = getIntent().getStringExtra("impression_id");
        setTitle(stringExtra2);
        a(stringExtra);
    }

    public void a(String str) {
        Uri parse = Uri.parse(str);
        Builder buildUpon = parse.buildUpon();
        if (aj.a(parse.getQueryParameter("referringTweetId"))) {
            buildUpon.appendQueryParameter("referringTweetId", Long.toString(this.a));
        }
        if (aj.a(parse.getQueryParameter("impressionId")) && this.b != null) {
            buildUpon.appendQueryParameter("impressionId", this.b);
        }
        super.a(buildUpon.toString());
    }

    public t a(Bundle bundle, t tVar) {
        super.a(bundle, tVar);
        getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
        tVar.b(true);
        return tVar;
    }
}
