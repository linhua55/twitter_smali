package com.twitter.library.client;

import android.os.AsyncTask;
import android.util.Pair;
import com.twitter.library.util.aq;
import defpackage.bny;

/* compiled from: Twttr */
class w extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ v a;

    w(v vVar) {
        this.a = vVar;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected Void a(Void... voidArr) {
        for (Pair pair : aq.c(v.a(this.a))) {
            az.a(v.a(this.a)).a(new bny(v.a(this.a), v.b(this.a).c(), (String) pair.first, (String) pair.second), new x(null));
        }
        return null;
    }
}
