package com.twitter.android.profiles;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import bbl;
import bbn;
import com.twitter.config.AppConfig;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import defpackage.bpf;

/* compiled from: Twttr */
class am extends BroadcastReceiver {
    final /* synthetic */ al a;

    am(al alVar) {
        this.a = alVar;
    }

    public void onReceive(Context context, Intent intent) {
        long longExtra = intent.getLongExtra("USER_FOLLOWED_USERID_KEY", -1);
        di a = di.a(this.a.c, this.a.a.g());
        TwitterUser a2 = this.a.b != null ? this.a.b.a() : null;
        AppConfig m = AppConfig.m();
        if (a2 != null && a.a(longExtra, a2.c, this.a.d(), -1)) {
            al.a(this.a).a(new bpf(this.a.c, this.a.a, a2.c, this.a.d(), -1, longExtra, null), 4, this.a);
        } else if (a2 != null) {
        } else {
            if (m.a() || m.b() || m.o()) {
                bbn.a(new bbl().a("mProfile.null", Boolean.valueOf(this.a.b == null)).a("mProfile.getUser().null", Boolean.valueOf(a2 == null)).a("this.getClass()", getClass()).a("mRecommendationsAdapter.null", Boolean.valueOf(this.a.e == null)).a(new IllegalStateException("Trying to replenish ProfileRecommendationModule when user is null.")));
            }
        }
    }
}
