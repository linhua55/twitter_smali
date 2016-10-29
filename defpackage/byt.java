package defpackage;

import com.twitter.database.model.q;
import com.twitter.database.model.r;
import com.twitter.database.schema.TwitterSchema;
import com.twitter.library.provider.di;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: byt */
public class byt extends bye<cll, axt, axu> {
    public static byt a(di diVar) {
        TwitterSchema b = diVar.b();
        return new byt(cll.a, ((axs) b.a(axs.class)).f(), b.c(axv.class));
    }

    public byt(n<cll> nVar, q<axt> qVar, r<axu> rVar) {
        super(nVar, qVar, rVar);
    }
}
