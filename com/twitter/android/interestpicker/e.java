package com.twitter.android.interestpicker;

import android.app.Application;
import com.twitter.library.client.Session;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class e implements c<d> {
    static final /* synthetic */ boolean a;
    private final cwk<d> b;
    private final cxj<Application> c;
    private final cxj<Session> d;

    static {
        a = !e.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public e(cwk<d> cwk_com_twitter_android_interestpicker_d, cxj<Application> cxj_android_app_Application, cxj<Session> cxj_com_twitter_library_client_Session) {
        if (a || cwk_com_twitter_android_interestpicker_d != null) {
            this.b = cwk_com_twitter_android_interestpicker_d;
            if (a || cxj_android_app_Application != null) {
                this.c = cxj_android_app_Application;
                if (a || cxj_com_twitter_library_client_Session != null) {
                    this.d = cxj_com_twitter_library_client_Session;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) MembersInjectors.a(this.b, new d((Application) this.c.b(), (Session) this.d.b()));
    }

    public static c<d> a(cwk<d> cwk_com_twitter_android_interestpicker_d, cxj<Application> cxj_android_app_Application, cxj<Session> cxj_com_twitter_library_client_Session) {
        return new e(cwk_com_twitter_android_interestpicker_d, cxj_android_app_Application, cxj_com_twitter_library_client_Session);
    }
}
