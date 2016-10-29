package defpackage;

import com.twitter.app.drafts.v;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
/* renamed from: apv */
public final class apv implements c<v> {
    static final /* synthetic */ boolean a;
    private final apu b;

    static {
        a = !apv.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public apv(apu apu) {
        if (a || apu != null) {
            this.b = apu;
            return;
        }
        throw new AssertionError();
    }

    public v a() {
        return (v) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<v> a(apu apu) {
        return new apv(apu);
    }
}
