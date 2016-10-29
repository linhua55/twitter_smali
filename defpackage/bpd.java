package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.util.aj;
import java.util.ArrayList;

/* compiled from: Twttr */
/* renamed from: bpd */
class bpd extends b<as> {
    private final long[] a;

    protected /* synthetic */ c f() {
        return b();
    }

    protected bpd(Context context, String str, ab abVar, long[] jArr) {
        super(context, str, abVar);
        this.a = jArr;
    }

    protected d a() {
        return K().a(RequestMethod.b).a("friendships", "create_all").a("send_error_codes", true).a("user_id", aj.a(this.a)).a();
    }

    protected as b() {
        return as.a(9);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.k()) {
            ArrayList arrayList = (ArrayList) asVar.b();
            di S = S();
            e T = T();
            S.a(arrayList, 1, T);
            T.a();
            S.a(S.a(this.a), N() != null ? N().c : 0, 0, -1, null, null, true, T);
        }
    }
}
