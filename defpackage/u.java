package defpackage;

import aa;
import com.crashlytics.android.answers.a;
import com.crashlytics.android.core.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.q;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

/* compiled from: Twttr */
/* renamed from: u */
public class u extends p<Void> implements q {
    public final a a;
    public final aa b;
    public final f c;
    public final Collection<? extends p> d;

    protected /* synthetic */ Object f() {
        return d();
    }

    public u() {
        this(new a(), new aa(), new f());
    }

    u(a aVar, aa aaVar, f fVar) {
        this.a = aVar;
        this.b = aaVar;
        this.c = fVar;
        this.d = Collections.unmodifiableCollection(Arrays.asList(new p[]{aVar, aaVar, fVar}));
    }

    public String a() {
        return "2.5.7.127";
    }

    public String b() {
        return "com.crashlytics.sdk.android:crashlytics";
    }

    public Collection<? extends p> c() {
        return this.d;
    }

    protected Void d() {
        return null;
    }

    public static u e() {
        return (u) io.fabric.sdk.android.f.a(u.class);
    }

    public static void a(Throwable th) {
        u.g();
        u.e().c.a(th);
    }

    public static void a(String str) {
        u.g();
        u.e().c.a(str);
    }

    public static void b(String str) {
        u.g();
        u.e().c.b(str);
    }

    public static void a(String str, String str2) {
        u.g();
        u.e().c.a(str, str2);
    }

    private static void g() {
        if (u.e() == null) {
            throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
        }
    }
}
