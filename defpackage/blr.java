package defpackage;

import android.content.Context;
import beb;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.core.ci;
import com.twitter.util.aj;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: blr */
public class blr extends beb<v<ci, cd>> {
    private int a;
    private int b;
    private long c;
    private String h;
    private boolean i;
    private boolean j;
    private int k;

    protected /* synthetic */ c f() {
        return g();
    }

    public blr(Context context, ab abVar) {
        super(context, blr.class.getName(), abVar);
        this.i = true;
    }

    public blr(Context context, Session session) {
        super(context, blr.class.getName(), session);
        this.i = true;
    }

    public blr a(int i) {
        this.a = i;
        return this;
    }

    public blr c(int i) {
        this.b = i;
        return this;
    }

    public blr a(long j) {
        this.c = j;
        return this;
    }

    public blr a(String str) {
        this.h = str;
        return this;
    }

    public blr a(boolean z) {
        this.i = z;
        return this;
    }

    public blr d(int i) {
        this.k = i;
        return this;
    }

    public boolean e() {
        return this.j;
    }

    protected e b() {
        e b = K().b("lists");
        switch (this.a) {
            case Util.TYPE_DASH /*0*/:
                b.a("ownerships");
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                b.a("memberships");
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                b.a("subscriptions");
                break;
            default:
                throw new IllegalArgumentException("Invalid list type: " + this.a);
        }
        if (this.c > 0) {
            b.a("user_id", this.c);
        }
        if (aj.b(this.h)) {
            b.a("screen_name", this.h);
        }
        if (this.k > 0) {
            b.a("count", (long) this.k);
        }
        String a = S().a(2, this.a, this.c, this.b);
        if (a != null) {
            b.a("cursor", a);
        }
        return b;
    }

    protected v<ci, cd> g() {
        return v.a(ci.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, v<ci, cd> vVar) {
        boolean z = true;
        if (httpOperation.j()) {
            ci ciVar = (ci) vVar.b();
            if (ciVar == null) {
                httpOperation.l().a = 0;
                return;
            }
            boolean z2;
            if (ciVar.a.isEmpty() && "0".equals(ciVar.b)) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.j = z2;
            com.twitter.library.provider.e T = T();
            di S = S();
            Collection collection = ciVar.a;
            long j = this.c;
            int i = this.a;
            String str = ciVar.b;
            if (this.b != 0) {
                z = false;
            }
            S.a(collection, j, i, str, z, this.i, T);
            T.a();
        }
    }
}
