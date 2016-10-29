package defpackage;

import android.content.Context;
import beb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import com.twitter.library.network.h;
import com.twitter.library.service.p;

/* compiled from: Twttr */
/* renamed from: bec */
class bec extends p {
    final /* synthetic */ beb a;
    private final Context e;
    private int f;

    bec(beb beb, Context context) {
        this.a = beb;
        super(beb.w());
        this.e = context.getApplicationContext();
    }

    protected boolean a(HttpOperation httpOperation, k kVar) {
        int i = this.f;
        this.f = i + 1;
        if (i != 0) {
            return false;
        }
        boolean z;
        if (kVar.a == 401) {
            z = true;
        } else if (kVar.a == 403 && kVar.j == 239) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return true;
        }
        h.b(this.e);
        this.a.g = false;
        return true;
    }
}
