package com.twitter.library.api;

import android.content.Context;
import com.twitter.android.util.CategoryListItem;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import java.util.ArrayList;

/* compiled from: Twttr */
public class k extends l {
    private ArrayList<CategoryListItem> a;

    protected /* synthetic */ c f() {
        return e();
    }

    public k(Context context, Session session) {
        super(context, session, k.class.getName());
    }

    protected as e() {
        return as.a(96);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            this.a = (ArrayList) asVar.b();
        }
    }

    public ArrayList<CategoryListItem> g() {
        return this.a;
    }
}
