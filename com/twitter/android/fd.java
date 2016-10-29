package com.twitter.android;

import com.twitter.library.network.e;
import com.twitter.util.aj;
import com.twitter.util.collection.ar;
import java.util.Collection;

/* compiled from: Twttr */
public class fd {
    private final fe a;
    private final e b;
    private final boolean c;
    private boolean d;

    fd(fe feVar, e eVar, boolean z) {
        this.a = feVar;
        this.b = eVar;
        this.c = z;
    }

    void a(String str, String str2) {
        Object obj = null;
        fe feVar = this.a;
        if (!aj.b(str2)) {
            str2 = this.b.c();
        }
        feVar.a(str2, this.b.b());
        boolean equals = "email_signup".equals(str);
        this.d = equals;
        ar d = ar.d();
        if ("add_email".equals(str)) {
            if (this.c) {
                obj = Integer.valueOf(2131363733);
            }
            d.c(obj);
            if (this.c) {
                this.a.b(2131363723);
            }
            this.a.a(true, 2131362633, 2131362632);
            this.a.i();
            this.a.h();
        } else if (equals) {
            d.a(new Integer[]{Integer.valueOf(2131363733), Integer.valueOf(2131364069)});
            this.a.a(true, 2131362634, 2131362632);
            this.a.b(2131363805);
            this.a.i();
            this.a.h();
        } else {
            if (this.c) {
                obj = Integer.valueOf(2131363733);
            }
            d.c(obj);
            this.a.b(this.c ? 2131362636 : 2131362635);
            this.a.a(false, 0, 0);
            this.a.j();
        }
        this.a.a((Collection) d.q());
    }

    public boolean a() {
        return this.d;
    }
}
