package com.twitter.library.api;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.e;
import java.util.ArrayList;

/* compiled from: Twttr */
public class r extends h {
    private final String h;

    public r(Context context, Session session, String str, String str2) {
        super(context, r.class.getName(), new ab(session), str);
        this.h = str2;
    }

    protected e b() {
        return super.b().a("country", this.h);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            aaVar.c.putParcelableArrayList("users_list_result", new ArrayList(this.c));
            aaVar.c.putString("category_title", this.b);
        }
    }
}
