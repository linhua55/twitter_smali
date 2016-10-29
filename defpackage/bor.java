package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: bor */
public class bor extends b<as> {
    private long a;
    private volatile boolean b;

    protected /* synthetic */ c f() {
        return e();
    }

    public bor(Context context, Session session) {
        super(context, bor.class.getName(), session);
        this.b = false;
    }

    public bor a(long j) {
        this.a = j;
        return this;
    }

    public boolean b() {
        return this.b;
    }

    protected d a() {
        return K().a(new Object[]{"users", "recommendations"}).a("display_location", "profile_device_follow").a("profile_id", this.a).a();
    }

    protected as e() {
        return as.a(85);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            this.b = ((Boolean) asVar.b()).booleanValue();
        }
    }

    protected boolean b(aa aaVar) {
        if (this.a != 0) {
            return true;
        }
        aaVar.a(false);
        return false;
    }
}
