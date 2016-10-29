package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.bbu;

/* compiled from: Twttr */
class bw implements OnClickListener {
    final /* synthetic */ DMActivity a;

    bw(DMActivity dMActivity) {
        this.a = dMActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        int i2 = (this.a.d == 3 && this.a.e.q()) ? 1 : 0;
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.ab().g()).b("app:twitter_service:direct_messages::discard_dm")).f(TelephonyUtil.i().h() ? "connected" : "disconnected")).i(i2 != 0 ? "has_media" : "no_media"));
        this.a.r();
        this.a.i();
    }
}
