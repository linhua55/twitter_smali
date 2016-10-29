package com.twitter.library.api.upload;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;

/* compiled from: Twttr */
public class u extends p {
    public u(Context context, Session session) {
        super(context, u.class.getName(), session);
    }

    protected void a(aa aaVar) {
        this.o.putParcelable("user", this.a);
        aa aaVar2 = null;
        ab N = N();
        if (this.b.c) {
            aaVar2 = a(new y(this.p, N, this.a), "edit_profile::header:remove");
        } else if (this.b.b != null) {
            aaVar2 = a(new x(this.p, N, this.a), "edit_profile::header:upload");
        }
        if ((aaVar2 == null || aaVar2.b()) && this.b.a != null) {
            aaVar2 = a(new v(this.p, N, this.a), "edit_profile::avatar:upload");
        }
        if ((aaVar2 == null || aaVar2.b()) && this.b.i) {
            aaVar2 = c(new w(this.p, N, this.a));
        }
        if (aaVar2 != null) {
            aaVar.a(aaVar2);
        } else {
            aaVar.a(false);
        }
    }

    private aa a(p pVar, String str) {
        pVar.a(this.b).h(M());
        if (str != null) {
            pVar.a(new a(this.p, str));
        }
        return super.a(pVar);
    }

    private aa c(p pVar) {
        return a(pVar, null);
    }
}
