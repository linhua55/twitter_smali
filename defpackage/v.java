package defpackage;

import com.crashlytics.android.answers.a;
import com.crashlytics.android.core.f;
import com.crashlytics.android.core.q;
import u;

/* compiled from: Twttr */
/* renamed from: v */
public class v {
    private a a;
    private aa b;
    private f c;
    private q d;

    @Deprecated
    public v a(boolean z) {
        b().a(z);
        return this;
    }

    public u a() {
        if (this.d != null) {
            if (this.c != null) {
                throw new IllegalStateException("Must not use Deprecated methods delay(), disabled(), listener(), pinningInfoProvider() with core()");
            }
            this.c = this.d.a();
        }
        if (this.a == null) {
            this.a = new a();
        }
        if (this.b == null) {
            this.b = new aa();
        }
        if (this.c == null) {
            this.c = new f();
        }
        return new u(this.a, this.b, this.c);
    }

    private synchronized q b() {
        if (this.d == null) {
            this.d = new q();
        }
        return this.d;
    }
}
