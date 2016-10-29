package defpackage;

import android.content.Context;
import bm;
import bz;
import com.facebook.drawee.components.a;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cx */
public class cx implements bz<cw> {
    private final Context a;
    private final fg b;
    private final cy c;
    private final Set<dg> d;

    public /* synthetic */ Object a() {
        return b();
    }

    public cx(Context context) {
        this(context, fm.a());
    }

    public cx(Context context, fm fmVar) {
        this(context, fmVar, null);
    }

    public cx(Context context, fm fmVar, Set<dg> set) {
        this.a = context;
        this.b = fmVar.g();
        this.c = new cy(context.getResources(), a.a(), fmVar.i(), bm.b());
        this.d = set;
    }

    public cw b() {
        return new cw(this.a, this.c, this.b, this.d);
    }
}
