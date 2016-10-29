package defpackage;

import dagger.internal.c;
import dagger.internal.d;
import java.util.Set;
import ur;

/* compiled from: Twttr */
/* renamed from: ut */
public final class ut implements c<Set<Integer>> {
    static final /* synthetic */ boolean a;
    private final ur b;

    static {
        a = !ut.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ut(ur urVar) {
        if (a || urVar != null) {
            this.b = urVar;
            return;
        }
        throw new AssertionError();
    }

    public Set<Integer> a() {
        return (Set) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Set<Integer>> a(ur urVar) {
        return new ut(urVar);
    }
}
