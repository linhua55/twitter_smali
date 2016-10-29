package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.moments.DisplayStyle;
import com.twitter.model.moments.MomentPageType;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.aj;
import com.twitter.util.collection.ar;
import com.twitter.util.object.e;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: clc */
public class clc {
    private static final Set<MomentPageType> j;
    public final ab a;
    public final Map<Long, cm> b;
    public final List<cks> c;
    public final clf d;
    public final DisplayStyle e;
    public final Map<Long, TwitterUser> f;
    public final String g;
    public final aj h;
    public final int i;

    static {
        j = ar.a(MomentPageType.b, new MomentPageType[]{MomentPageType.c, MomentPageType.g, MomentPageType.e, MomentPageType.f, MomentPageType.d, MomentPageType.j});
    }

    private clc(cle cle) {
        this.a = (ab) e.a(cle.a);
        this.b = e.a(cle.b);
        this.c = e.a(cle.c);
        this.i = cle.i;
        this.d = cle.d;
        this.e = cle.e;
        this.f = cle.f;
        this.g = cle.g;
        this.h = cle.h;
    }
}
