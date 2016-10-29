package defpackage;

import android.content.Context;
import bx;
import bz;
import com.facebook.datasource.d;
import com.facebook.datasource.e;
import com.facebook.datasource.h;
import com.facebook.datasource.l;
import dd;
import de;
import dg;
import di;
import dn;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;

/* compiled from: Twttr */
/* renamed from: dc */
public abstract class dc<BUILDER extends dc<BUILDER, REQUEST, IMAGE, INFO>, REQUEST, IMAGE, INFO> implements dn {
    private static final dg<Object> a;
    private static final NullPointerException b;
    private static final AtomicLong p;
    private final Context c;
    private final Set<dg> d;
    @Nullable
    private Object e;
    @Nullable
    private REQUEST f;
    @Nullable
    private REQUEST g;
    @Nullable
    private REQUEST[] h;
    private boolean i;
    @Nullable
    private bz<d<IMAGE>> j;
    @Nullable
    private dg<? super INFO> k;
    private boolean l;
    private boolean m;
    private boolean n;
    @Nullable
    private dk o;

    protected abstract d<IMAGE> a(REQUEST request, Object obj, boolean z);

    protected abstract BUILDER c();

    protected abstract cz d();

    public /* synthetic */ dn b(dk dkVar) {
        return a(dkVar);
    }

    public /* synthetic */ dn d(Object obj) {
        return a(obj);
    }

    public /* synthetic */ dk m() {
        return h();
    }

    static {
        a = new dd();
        b = new NullPointerException("No image request was specified!");
        p = new AtomicLong();
    }

    protected dc(Context context, Set<dg> set) {
        this.c = context;
        this.d = set;
        a();
    }

    private void a() {
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = true;
        this.k = null;
        this.l = false;
        this.m = false;
        this.o = null;
    }

    public BUILDER a(Object obj) {
        this.e = obj;
        return c();
    }

    @Nullable
    public Object e() {
        return this.e;
    }

    public BUILDER b(REQUEST request) {
        this.f = request;
        return c();
    }

    public boolean f() {
        return this.n;
    }

    public BUILDER a(boolean z) {
        this.m = z;
        return c();
    }

    public BUILDER a(dg<? super INFO> dgVar) {
        this.k = dgVar;
        return c();
    }

    public BUILDER a(@Nullable dk dkVar) {
        this.o = dkVar;
        return c();
    }

    @Nullable
    public dk g() {
        return this.o;
    }

    public cz h() {
        i();
        if (this.f == null && this.h == null && this.g != null) {
            this.f = this.g;
            this.g = null;
        }
        return j();
    }

    protected void i() {
        boolean z = false;
        boolean z2 = this.h == null || this.f == null;
        bx.b(z2, "Cannot specify both ImageRequest and FirstAvailableImageRequests!");
        if (this.j == null || (this.h == null && this.f == null && this.g == null)) {
            z = true;
        }
        bx.b(z, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other.");
    }

    protected cz j() {
        cz d = d();
        d.a(f());
        b(d);
        a(d);
        return d;
    }

    protected static String k() {
        return String.valueOf(p.getAndIncrement());
    }

    protected bz<d<IMAGE>> l() {
        if (this.j != null) {
            return this.j;
        }
        bz<d<IMAGE>> bzVar = null;
        if (this.f != null) {
            bzVar = c(this.f);
        } else if (this.h != null) {
            bzVar = a(this.h, this.i);
        }
        if (!(bzVar == null || this.g == null)) {
            List arrayList = new ArrayList(2);
            arrayList.add(bzVar);
            arrayList.add(c(this.g));
            bzVar = l.a(arrayList);
        }
        if (bzVar == null) {
            return e.b(b);
        }
        return bzVar;
    }

    protected bz<d<IMAGE>> a(REQUEST[] requestArr, boolean z) {
        int i = 0;
        List arrayList = new ArrayList(requestArr.length * 2);
        if (z) {
            for (Object a : requestArr) {
                arrayList.add(a(a, true));
            }
        }
        while (i < requestArr.length) {
            arrayList.add(c(requestArr[i]));
            i++;
        }
        return h.a(arrayList);
    }

    protected bz<d<IMAGE>> c(REQUEST request) {
        return a((Object) request, false);
    }

    protected bz<d<IMAGE>> a(REQUEST request, boolean z) {
        return new de(this, request, e(), z);
    }

    protected void a(cz czVar) {
        if (this.d != null) {
            for (dg a : this.d) {
                czVar.a(a);
            }
        }
        if (this.k != null) {
            czVar.a(this.k);
        }
        if (this.m) {
            czVar.a(a);
        }
    }

    protected void b(cz czVar) {
        if (this.l) {
            com.facebook.drawee.components.d c = czVar.c();
            if (c == null) {
                c = new com.facebook.drawee.components.d();
                czVar.a(c);
            }
            c.a(this.l);
            c(czVar);
        }
    }

    protected void c(cz czVar) {
        if (czVar.d() == null) {
            czVar.a(di.a(this.c));
        }
    }
}
