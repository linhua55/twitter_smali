package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.x;

/* compiled from: Twttr */
/* renamed from: adh */
class adh implements cyw<x<TwitterUser>, Boolean> {
    final /* synthetic */ adg a;

    adh(adg adg) {
        this.a = adg;
    }

    public Boolean a(x<TwitterUser> xVar) {
        boolean z = xVar.c() && ((TwitterUser) xVar.b()).e();
        return Boolean.valueOf(z);
    }
}
