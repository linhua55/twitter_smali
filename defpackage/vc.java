package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: vc */
public final class vc implements c<vb> {
    static final /* synthetic */ boolean a;
    private final cwk<vb> b;
    private final cxj<Context> c;
    private final cxj<Session> d;

    static {
        a = !vc.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public vc(cwk<vb> cwk_vb, cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session) {
        if (a || cwk_vb != null) {
            this.b = cwk_vb;
            if (a || cxj_android_content_Context != null) {
                this.c = cxj_android_content_Context;
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

    public vb a() {
        return (vb) MembersInjectors.a(this.b, new vb((Context) this.c.b(), (Session) this.d.b()));
    }

    public static c<vb> a(cwk<vb> cwk_vb, cxj<Context> cxj_android_content_Context, cxj<Session> cxj_com_twitter_library_client_Session) {
        return new vc(cwk_vb, cxj_android_content_Context, cxj_com_twitter_library_client_Session);
    }
}
