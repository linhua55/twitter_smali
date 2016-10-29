package com.twitter.android.dialog;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import com.twitter.android.WebViewActivity;
import com.twitter.android.people.bb;
import com.twitter.library.client.bg;

/* compiled from: Twttr */
final class d implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ Resources c;

    d(String str, Context context, Resources resources) {
        this.a = str;
        this.b = context;
        this.c = resources;
    }

    public void onClick(View view) {
        bbu.a(bb.a(bg.a().c().g()).a(this.a, "learn_more", "click"));
        this.b.startActivity(new Intent(this.b, WebViewActivity.class).setData(Uri.parse(this.c.getString(2131364421))));
    }
}
