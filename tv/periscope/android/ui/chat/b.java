package tv.periscope.android.ui.chat;

import defpackage.dby;
import java.util.HashSet;
import java.util.Set;
import tv.periscope.android.ui.broadcast.moderator.a;

/* compiled from: Twttr */
public class b implements a {
    private final dby a;
    private final Set<String> b;
    private final String c;
    private ae d;
    private a e;

    public b(dby dby, String str) {
        this(dby, str, null, null, new HashSet());
    }

    public void a(ae aeVar) {
        this.d = aeVar;
    }

    public void a(a aVar) {
        this.e = aVar;
    }

    b(dby dby, String str, ae aeVar, a aVar, Set<String> set) {
        this.a = dby;
        this.c = str;
        this.e = aVar;
        this.b = set;
        a(aeVar);
    }

    public boolean a(String str) {
        return this.b.contains(str);
    }

    public boolean b(String str) {
        return this.a.a(str) || (this.e != null && this.e.a(this.c, str));
    }

    public int c(String str) {
        if (this.d != null) {
            return this.d.a(str);
        }
        return 0;
    }
}
