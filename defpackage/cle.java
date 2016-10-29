package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.moments.DisplayStyle;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.aj;
import com.twitter.util.object.f;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cle */
public final class cle extends f<clc> {
    ab a;
    Map<Long, cm> b;
    List<cks> c;
    clf d;
    DisplayStyle e;
    Map<Long, TwitterUser> f;
    String g;
    aj h;
    int i;

    public cle() {
        this.e = DisplayStyle.a;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public cle a(ab abVar) {
        this.a = abVar;
        return this;
    }

    public cle a(Map<Long, cm> map) {
        this.b = map;
        return this;
    }

    public cle a(List<cks> list) {
        this.c = list;
        return this;
    }

    public cle a(int i) {
        this.i = i;
        return this;
    }

    public cle a(clf clf) {
        this.d = clf;
        return this;
    }

    public cle a(DisplayStyle displayStyle) {
        this.e = displayStyle;
        return this;
    }

    public cle b(Map<Long, TwitterUser> map) {
        this.f = map;
        return this;
    }

    public cle a(String str) {
        this.g = str;
        return this;
    }

    public cle a(aj ajVar) {
        this.h = ajVar;
        return this;
    }

    public boolean bo_() {
        return (this.a == null || this.d == null || !e()) ? false : true;
    }

    protected clc d() {
        return new clc();
    }

    private boolean e() {
        return this.d == null || clc.j.contains(this.d.c);
    }
}
