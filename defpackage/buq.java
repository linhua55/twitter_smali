package defpackage;

import asp;
import bvj;
import com.twitter.config.c;
import com.twitter.library.client.bg;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: buq */
public class buq implements asp {
    private static buq a;
    private String b;
    private boolean c;

    public static buq a() {
        h.a();
        if (a == null) {
            a = new buq();
        }
        return a;
    }

    private buq() {
        bvj.a(this);
        bg.a().a(new bur(this));
        c();
    }

    public boolean b() {
        return this.c;
    }

    public void a(long j) {
        c();
    }

    private void c() {
        this.b = c.b("low_res_image_preview_3540");
        boolean z = ("control".equals(this.b) || "unassigned".equals(this.b)) ? false : true;
        this.c = z;
    }
}
