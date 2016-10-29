package com.twitter.android.client.notifications;

import android.content.Intent;
import android.text.SpannableString;
import bha;
import bjz;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.i;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ar;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
class b extends ac {
    final /* synthetic */ DMNotif a;
    private final Set<String> b;

    b(DMNotif dMNotif, ad adVar, String str, long j) {
        this.a = dMNotif;
        super(adVar, str, j);
        ar a = ar.a(adVar.v.size());
        for (i iVar : adVar.v) {
            a.c(iVar.i);
        }
        this.b = (Set) a.q();
    }

    public boolean a() {
        return this.c.v.size() > 1 && this.b.contains(this.c.k);
    }

    protected List<i> b() {
        return CollectionUtils.d(this.c.v);
    }

    public String c() {
        String str;
        if (aj.b(this.c.x.b.d)) {
            str = this.c.x.b.d + '\u2007';
        } else {
            str = TtmlNode.ANONYMOUS_REGION_ID;
        }
        return str + '@' + this.d;
    }

    public String d() {
        return this.a.c();
    }

    public String e() {
        return this.a.d();
    }

    public int f() {
        return 2130839906;
    }

    public Intent g() {
        return DMNotif.b(this.f, this.c.k);
    }

    public String h() {
        return "message";
    }

    public SpannableString a(String str, String str2, byte[] bArr) {
        boolean a = this.a.n();
        SpannableString spannableString = new SpannableString(((bha) new bjz().b(false).a(this.f.getResources()).a(this.c.i).b(this.c.x.b.b).a(str).a(a).b(str2).a(0).b(DMNotif.b(bArr)).q()).toString());
        if (a) {
            a(spannableString, str);
        }
        return spannableString;
    }
}
