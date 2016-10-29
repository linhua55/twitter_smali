package com.twitter.android.livevideo.landing.di;

import abh;
import abi;
import android.content.Context;
import com.twitter.library.client.Session;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class y implements c<abi> {
    static final /* synthetic */ boolean a;
    private final v b;
    private final cxj<Context> c;
    private final cxj<Session> d;
    private final cxj<abh> e;

    static {
        a = !y.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public y(v vVar, cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session, cxj<abh> cxj_abh) {
        if (a || vVar != null) {
            this.b = vVar;
            if (a || cxj_android_content_Context != null) {
                this.c = cxj_android_content_Context;
                if (a || cxj_com_twitter_library_client_Session != null) {
                    this.d = cxj_com_twitter_library_client_Session;
                    if (a || cxj_abh != null) {
                        this.e = cxj_abh;
                        return;
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public abi a() {
        return (abi) d.a(this.b.a((Context) this.c.b(), (Session) this.d.b(), (abh) this.e.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<abi> a(v vVar, cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session, cxj<abh> cxj_abh) {
        return new y(vVar, cxj_android_content_Context, cxj_com_twitter_library_client_Session, cxj_abh);
    }
}
