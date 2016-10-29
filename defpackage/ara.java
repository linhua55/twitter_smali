package defpackage;

import aqz;
import com.twitter.android.nn;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: ara */
public final class ara implements c<aqz> {
    static final /* synthetic */ boolean a;
    private final cxj<apf<nn>> b;

    static {
        a = !ara.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ara(cxj<apf<nn>> cxj_apf_com_twitter_android_nn) {
        if (a || cxj_apf_com_twitter_android_nn != null) {
            this.b = cxj_apf_com_twitter_android_nn;
            return;
        }
        throw new AssertionError();
    }

    public aqz a() {
        return new aqz((apf) this.b.b());
    }

    public static c<aqz> a(cxj<apf<nn>> cxj_apf_com_twitter_android_nn) {
        return new ara(cxj_apf_com_twitter_android_nn);
    }
}
