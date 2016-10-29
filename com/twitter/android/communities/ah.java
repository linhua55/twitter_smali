package com.twitter.android.communities;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class ah implements c<ag> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;
    private final cxj<Session> c;
    private final cxj<az> d;

    static {
        a = !ah.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ah(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session, cxj<az> cxj_com_twitter_library_client_az) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            if (a || cxj_com_twitter_library_client_Session != null) {
                this.c = cxj_com_twitter_library_client_Session;
                if (a || cxj_com_twitter_library_client_az != null) {
                    this.d = cxj_com_twitter_library_client_az;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public ag a() {
        return new ag((Context) this.b.b(), (Session) this.c.b(), (az) this.d.b());
    }

    public static c<ag> a(cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session, cxj<az> cxj_com_twitter_library_client_az) {
        return new ah(cxj_android_content_Context, cxj_com_twitter_library_client_Session, cxj_com_twitter_library_client_az);
    }
}
