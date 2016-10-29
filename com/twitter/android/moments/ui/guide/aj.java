package com.twitter.android.moments.ui.guide;

import adp;
import ads;
import aia;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.android.moments.data.bf;
import com.twitter.android.moments.data.h;
import com.twitter.android.moments.data.s;
import com.twitter.android.moments.data.z;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.moments.ab;
import com.twitter.ui.widget.BadgeView;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import defpackage.cll;
import java.util.Collection;
import java.util.Set;

/* compiled from: Twttr */
class aj implements al, w {
    private final h a;
    private final p b;
    private final s c;
    private final aia d;
    private final MediaImageView e;
    private final TextView f;
    private final TextView g;
    private final TextView h;
    private final BadgeView i;
    private final f j;
    private final d k;
    private final adp l;
    private final Set<Long> m;
    private final bf n;
    private MomentModule o;

    aj(ViewGroup viewGroup, h hVar, bf bfVar, p pVar, s sVar, s sVar2, d dVar, aia aia, ads ads, Set<Long> set) {
        this.d = aia;
        this.a = hVar;
        this.n = bfVar;
        this.b = pVar;
        this.c = sVar;
        this.l = ads;
        this.m = set;
        this.k = dVar;
        this.e = (MediaImageView) viewGroup.findViewById(2131952793);
        this.f = (TextView) viewGroup.findViewById(2131952748);
        this.g = (TextView) viewGroup.findViewById(2131952750);
        this.h = (TextView) viewGroup.findViewById(2131952757);
        this.i = (BadgeView) viewGroup.findViewById(2131952792);
        this.j = new f(new i(viewGroup.findViewById(2131952791)), this.c, sVar2, n.a(this, new al[]{this.n}));
    }

    public Collection<View> b() {
        return (Collection) ar.d().a(new View[]{this.e, this.f, this.g, this.h}).b(this.d.c()).q();
    }

    public void a(MomentModule momentModule) {
        this.o = momentModule;
        ab b = momentModule.b();
        z.a(momentModule, this.e);
        this.f.setText(b.c);
        this.g.setText(momentModule.f());
        this.d.a(b);
        this.a.a(b);
        this.a.a(new ak(this));
        this.b.a(this.a.b());
        if (b.a()) {
            com.twitter.android.moments.ui.h.a(b, this.i, 2130839026, true);
            this.g.setVisibility(8);
        } else {
            this.i.setVisibility(8);
            this.g.setVisibility(0);
        }
        if (b.e) {
            this.h.setVisibility(0);
        } else {
            this.h.setVisibility(8);
        }
        cll d = momentModule.d();
        if (d != null) {
            this.n.a(d);
        } else {
            this.n.a();
        }
        this.j.a(b.b);
        if (this.k.aP_() && !this.m.contains(Long.valueOf(b.b))) {
            this.l.d(b.b);
            this.m.add(Long.valueOf(b.b));
        }
    }

    public void c() {
        if (this.o != null) {
            this.l.d(this.o.b().b);
            this.m.add(Long.valueOf(this.o.b().b));
        }
    }

    public View a() {
        return this.e;
    }
}
