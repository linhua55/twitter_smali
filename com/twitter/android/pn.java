package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import bev;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
class pn implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ SecuritySettingsActivity b;

    pn(SecuritySettingsActivity securitySettingsActivity, String str) {
        this.b = securitySettingsActivity;
        this.a = str;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        bbu.a(new TwitterScribeLog(this.b.b).b(this.a));
        this.b.a(this.b.getString(2131363016));
        this.b.b(new bev(this.b, this.b.k().b(this.b.a), this.b.g()), 2);
    }
}
