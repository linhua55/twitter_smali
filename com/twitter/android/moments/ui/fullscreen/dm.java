package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import com.twitter.android.composer.aw;
import com.twitter.android.dialog.h;
import com.twitter.android.dialog.j;
import com.twitter.android.dm.m;
import com.twitter.android.dm.r;
import com.twitter.library.util.aq;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class dm {
    private final Context a;
    private final ab b;

    public dm(Context context, ab abVar) {
        this.a = context;
        this.b = abVar;
    }

    public void c() {
        h.a(this.a, n.a(dq.a(this.a, this), new j[]{dq.b(this.a, this), dq.c(this.a, this)}));
    }

    public void a() {
        this.a.startActivity(r.a(this.a, ((m) new m().a(this.a.getResources().getString(2131364343, new Object[]{"\u26a1", this.b.c, this.b.n}))).f(true).d()));
    }

    public void d() {
        aq.a(this.a, this.b, false);
    }

    public void b() {
        this.a.startActivity(((aw) aw.a().a(e(), 0).d(true)).a(this.a));
    }

    private String e() {
        String string;
        String format;
        String b = e.b(this.b.c);
        String b2 = e.b(this.b.n);
        a aVar = this.b.o;
        int i = this.b.o != null ? 1 : 0;
        if (i != 0) {
            string = this.a.getResources().getString(2131363108);
            format = String.format(string, new Object[]{"\u26a1", b, aVar.e, b2});
        } else {
            string = this.a.getResources().getString(2131364342);
            format = String.format(string, new Object[]{"\u26a1", b, b2});
        }
        int length = format.length() - 140;
        if (length <= 0) {
            return format;
        }
        int length2 = b.length() - length;
        format = length2 > 0 ? aj.e(b, length2) : TtmlNode.ANONYMOUS_REGION_ID;
        if (i != 0) {
            return String.format(string, new Object[]{"\u26a1", format, aVar.e, b2});
        }
        return String.format(string, new Object[]{"\u26a1", format, b2});
    }
}
