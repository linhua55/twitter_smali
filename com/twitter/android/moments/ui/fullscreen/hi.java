package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.library.service.o;
import com.twitter.platform.PlatformContext;

@VisibleForTesting
/* compiled from: Twttr */
class hi extends o {
    final String a;
    final /* synthetic */ hh b;

    hi(hh hhVar, Context context, String str) {
        this.b = hhVar;
        super(context, hi.class.getName());
        this.a = str;
    }

    protected void a() {
        this.b.d.a(this.b.f, this.a, PlatformContext.f().a().a());
    }
}
