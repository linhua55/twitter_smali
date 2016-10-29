package com.twitter.library.api;

import android.content.Context;
import android.util.Pair;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import defpackage.beb;
import java.util.List;

/* compiled from: Twttr */
abstract class h extends beb<as> {
    protected final String a;
    protected String b;
    protected List<TwitterUser> c;

    protected /* synthetic */ c f() {
        return e();
    }

    protected h(Context context, String str, ab abVar, String str2) {
        super(context, str, abVar);
        this.a = str2;
    }

    protected e b() {
        return K().b(new Object[]{"users"}).b(new Object[]{"suggestions"}).a(new Object[]{this.a});
    }

    protected as e() {
        return as.a(89);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            Pair pair = (Pair) asVar.b();
            this.b = (String) pair.first;
            this.c = (List) pair.second;
        }
    }
}
