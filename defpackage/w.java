package defpackage;

import aa;
import ab;
import ac;
import ae;
import ah;
import android.annotation.SuppressLint;
import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.IdManager.DeviceIdentifierType;
import io.fabric.sdk.android.services.common.k;
import io.fabric.sdk.android.services.common.q;
import io.fabric.sdk.android.services.network.j;
import io.fabric.sdk.android.services.settings.f;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
/* renamed from: w */
abstract class w implements ah {
    private final AtomicBoolean a;
    private final AtomicBoolean b;
    private Context c;
    private aa d;
    private IdManager e;
    private f f;
    private ab g;
    private cxh h;
    private q i;
    private j j;
    private long k;

    public w() {
        this(false);
    }

    public w(boolean z) {
        this.a = new AtomicBoolean();
        this.k = 0;
        this.b = new AtomicBoolean(z);
    }

    public void a(Context context, aa aaVar, IdManager idManager, f fVar, ab abVar, cxh cxh, q qVar, j jVar) {
        this.c = context;
        this.d = aaVar;
        this.e = idManager;
        this.f = fVar;
        this.g = abVar;
        this.h = cxh;
        this.i = qVar;
        this.j = jVar;
        if (b()) {
            c();
        }
    }

    protected boolean a() {
        this.b.set(true);
        return this.a.get();
    }

    boolean b() {
        this.a.set(true);
        return this.b.get();
    }

    @SuppressLint({"CommitPrefEdits"})
    protected void c() {
        synchronized (this.h) {
            if (this.h.a().contains("last_update_check")) {
                this.h.a(this.h.b().remove("last_update_check"));
            }
        }
        long a = this.i.a();
        long j = ((long) this.f.b) * 1000;
        io.fabric.sdk.android.f.h().a("Beta", "Check for updates delay: " + j);
        io.fabric.sdk.android.f.h().a("Beta", "Check for updates last check time: " + d());
        j += d();
        io.fabric.sdk.android.f.h().a("Beta", "Check for updates current time: " + a + ", next check time: " + j);
        if (a >= j) {
            try {
                e();
            } finally {
                a(a);
            }
        } else {
            io.fabric.sdk.android.f.h().a("Beta", "Check for updates next check time was not passed");
        }
    }

    private void e() {
        io.fabric.sdk.android.f.h().a("Beta", "Performing update check");
        new ac(this.d, this.d.g(), this.f.a, this.j, new ae()).a(new k().a(this.c), (String) this.e.i().get(DeviceIdentifierType.FONT_TOKEN), this.g);
    }

    void a(long j) {
        this.k = j;
    }

    long d() {
        return this.k;
    }
}
