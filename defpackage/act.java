package defpackage;

import bnt;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.model.core.cm;
import com.twitter.util.j;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: act */
class act implements bnt {
    final /* synthetic */ acr a;
    private final di b;

    private act(acr acr, di diVar) {
        this.a = acr;
        this.b = diVar;
    }

    public void a(HttpOperation httpOperation, aa aaVar, List<cm> list) {
        j.c();
        if (list != null) {
            this.b.a(list, this.a.b.g(), 33, 0, false, false, false, null, false, null, false);
        }
    }
}
