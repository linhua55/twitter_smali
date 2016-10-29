package flow;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import flow.Flow.Direction;

/* compiled from: Twttr */
public final class h {
    private static final String a;
    private final s b;
    private final Flow c;
    private d d;
    private boolean e;

    static {
        a = h.class.getSimpleName() + "_history";
    }

    private h(Flow flow, d dVar, s sVar) {
        this.c = flow;
        this.d = dVar;
        this.b = sVar;
    }

    public static h a(j jVar, Intent intent, Bundle bundle, s sVar, k kVar, d dVar) {
        Flow a;
        r.a(sVar != null, "parceler may not be null", new Object[0]);
        if (jVar != null) {
            a = jVar.a;
        } else {
            k kVar2 = null;
            if (bundle != null && bundle.containsKey(a)) {
                kVar2 = k.a(bundle.getParcelable(a), sVar);
            }
            a = new Flow(a(intent, kVar2, kVar, sVar));
        }
        a.a(dVar);
        return new h(a, dVar, sVar);
    }

    public void a(Intent intent) {
        r.a(intent != null, "intent may not be null", new Object[0]);
        if (intent.hasExtra(a)) {
            this.c.a(k.a(intent.getParcelableExtra(a), this.b), Direction.REPLACE);
        }
    }

    public void a() {
        if (!this.e) {
            this.e = true;
            this.c.a(this.d);
        }
    }

    public j b() {
        return new j(this.c);
    }

    public void c() {
        this.c.b(this.d);
        this.e = false;
    }

    public boolean d() {
        return this.c.b();
    }

    public void a(Bundle bundle) {
        r.a(bundle != null, "outState may not be null", new Object[0]);
        Parcelable a = this.c.a().a(this.b, new i(this));
        if (a != null) {
            bundle.putParcelable(a, a);
        }
    }

    public Object a(String str) {
        if (Flow.a(str)) {
            return this.c;
        }
        return null;
    }

    private static k a(Intent intent, k kVar, k kVar2, s sVar) {
        if (intent.hasExtra(a)) {
            return k.a(intent.getParcelableExtra(a), sVar);
        }
        if (kVar == null) {
            return kVar2;
        }
        return kVar;
    }
}
