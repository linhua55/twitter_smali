package com.twitter.android.settings;

import android.content.Context;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
final class k implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ long d;
    final /* synthetic */ String e;
    final /* synthetic */ String f;

    k(String str, String str2, String str3, long j, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = str4;
        this.f = str5;
    }

    public void onClick(View view) {
        Context context = view.getContext();
        context.startActivity(MobileNotificationsActivity.b(context, this.a, this.b));
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(this.c, -1).apply();
        bbu.a(new TwitterScribeLog(this.d).b(this.e, "notification_landing", this.f, "header", "click"));
    }
}
