package com.twitter.android.card;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import cni;
import com.twitter.android.WebViewActivity;
import com.twitter.library.client.Session;
import com.twitter.library.network.ap;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.Tweet;
import java.io.Serializable;
import java.util.HashMap;

/* compiled from: Twttr */
class d implements Runnable {
    final /* synthetic */ Session a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ String c;
    final /* synthetic */ Activity d;
    final /* synthetic */ b e;

    d(b bVar, Session session, Tweet tweet, String str, Activity activity) {
        this.e = bVar;
        this.a = session;
        this.b = tweet;
        this.c = str;
        this.d = activity;
    }

    public void run() {
        OAuthToken h = this.a.h();
        Serializable hashMap = new HashMap();
        cni cni = this.b.f;
        StringBuilder stringBuilder = new StringBuilder(this.c);
        ap apVar = new ap();
        if (!(cni == null || cni.c == null)) {
            apVar.a("impression_id", cni.c);
            stringBuilder.append(apVar.b());
        }
        this.d.startActivity(new Intent(b.a(this.e), WebViewActivity.class).setData(Uri.parse(stringBuilder.toString())).putExtra("token", h).putExtra("headers", hashMap));
    }
}
