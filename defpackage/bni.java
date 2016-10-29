package defpackage;

import android.content.Context;
import com.twitter.library.provider.ch;
import com.twitter.library.provider.cj;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bni */
public class bni {
    private final di a;
    private final Context b;

    public bni(Context context, long j) {
        this.a = di.a(context, j);
        this.b = context;
    }

    public void a(cnr cnr, cnu cnu, cog cog) {
        boolean z = false;
        n a = n.a(cnr.a.size());
        for (cnz b : cnr.a) {
            a.c(b.b(cnu));
        }
        e eVar = new e(this.b.getContentResolver());
        String str = cog.d;
        if (cog.f) {
            int a2 = this.a.a(cog.b, cog.c, str, eVar);
        } else {
            boolean z2 = false;
        }
        di diVar = this.a;
        cj a3 = new cj().a((List) a.q()).a(cog.b).a(cog.c).a(str);
        if (cog.e == 3 && a.h()) {
            z = true;
        }
        int a4 = diVar.a((ch) a3.a(z).c(cog.g).d(true).a(eVar).e(cog.h).q());
        if (a2 > 0 || a4 > 0) {
            eVar.a();
        }
    }
}
