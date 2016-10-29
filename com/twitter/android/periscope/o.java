package com.twitter.android.periscope;

import android.content.Context;
import com.twitter.config.AppConfig;
import com.twitter.library.media.manager.l;
import dbx;
import dby;
import defpackage.dce;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import tv.periscope.android.api.ApiManager;
import tv.periscope.android.library.c;

/* compiled from: Twttr */
public class o implements c {
    private static volatile o a;
    private final de.greenrobot.event.c b;
    private final dbx c;
    private final dby d;
    private final ScheduledExecutorService e;
    private final a f;
    private final t g;
    private final j h;

    public /* synthetic */ dce h() {
        return g();
    }

    public static o a() {
        return a;
    }

    public static o a(Context context) {
        if (a == null) {
            synchronized (o.class) {
                if (a == null) {
                    a = new o(context);
                }
            }
        }
        return a;
    }

    private o(Context context) {
        this.b = de.greenrobot.event.c.b().a(AppConfig.m().a()).a();
        this.c = new h();
        this.d = new u();
        this.e = Executors.newScheduledThreadPool(1);
        this.f = new a(context.getApplicationContext(), this.b, this.c, this.d, this.e);
        this.g = new t();
        this.h = new j(l.a(context));
    }

    public de.greenrobot.event.c b() {
        return this.b;
    }

    public ApiManager c() {
        return this.f;
    }

    public dby d() {
        return this.d;
    }

    public dbx e() {
        return this.c;
    }

    public dce f() {
        return this.g;
    }

    public j g() {
        return this.h;
    }
}
