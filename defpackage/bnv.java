package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.Translation;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bnv */
public class bnv extends b<t<Translation, cd>> {
    private final long a;
    private final String b;
    private Translation c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bnv(Context context, Session session, long j, String str) {
        super(context, bnv.class.getName(), session);
        this.a = j;
        this.b = str;
    }

    protected d a() {
        return K().a("translations", "show").a(TtmlNode.ATTR_ID, this.a).a("dest", this.b).a();
    }

    protected t<Translation, cd> b() {
        return v.a(Translation.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<Translation, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.j()) {
            Translation translation = (Translation) tVar.b();
            if (translation != null) {
                e T = T();
                S().a(translation.a, translation.b, T);
                T.a();
                this.c = translation;
            }
        }
    }

    public Translation e() {
        return this.c;
    }
}
