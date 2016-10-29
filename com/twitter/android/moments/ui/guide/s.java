package com.twitter.android.moments.ui.guide;

import adt;
import aeq;
import aew;
import aex;
import aia;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.bf;
import com.twitter.android.moments.data.bn;
import com.twitter.android.moments.data.h;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.model.moments.ab;
import com.twitter.ui.widget.BadgeView;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import com.twitter.util.z;
import defpackage.cll;
import java.util.Collection;

/* compiled from: Twttr */
abstract class s<T extends MomentModule> implements al, z<ab> {
    protected final Context a;
    protected final e a_;
    protected final h b;
    protected final ViewGroup c;
    protected final View d;
    protected final TextView e;
    protected final TextView f;
    protected final TextView g;
    protected final BadgeView h;
    protected final LayoutInflater i;
    protected final p k;
    protected final com.twitter.android.moments.data.s l;
    private final f m;
    private final bf n;
    private final aia o;
    private ab p;

    s(Context context, aia aia, p pVar, LayoutInflater layoutInflater, ViewGroup viewGroup, e eVar, com.twitter.android.moments.data.s sVar, com.twitter.android.moments.data.s sVar2, ag agVar, adt adt, bn bnVar) {
        this.a = context;
        this.o = aia;
        this.k = pVar;
        this.i = layoutInflater;
        this.c = viewGroup;
        this.a_ = eVar;
        this.l = sVar;
        this.e = (TextView) this.c.findViewById(2131952748);
        this.f = (TextView) this.c.findViewById(2131952750);
        this.g = (TextView) this.c.findViewById(2131952757);
        this.h = (BadgeView) this.c.findViewById(2131952792);
        this.d = this.c.findViewById(2131952796);
        BadgeableRichImageView badgeableRichImageView = (BadgeableRichImageView) this.c.findViewById(2131952797);
        this.b = new h(new aeq(this.c), agVar, adt);
        this.n = new bf(new aew(aex.a(context.getResources(), this.c, 2131952763, 2131952764)), bnVar);
        com.twitter.android.moments.data.s sVar3 = sVar2;
        this.m = new f(badgeableRichImageView, this.l, sVar3, n.a(this, new al[]{this.n}));
    }

    public Collection<View> b() {
        return ar.a(this.e, new View[]{this.g, this.f});
    }

    public void a(MomentModule momentModule) {
        this.p = momentModule.b();
        b(this.p);
        a(momentModule.d());
        this.m.a(this.p.b);
    }

    private void b(ab abVar) {
        this.e.setText(abVar.c);
        this.f.setText(abVar.i);
        this.o.a(abVar);
        this.b.a(abVar);
        this.b.a(new t(this));
        this.k.a(this.b.b());
        if (abVar.a()) {
            com.twitter.android.moments.ui.h.a(abVar, this.h, 2130839495, true);
            this.f.setVisibility(8);
        } else {
            this.h.setVisibility(8);
            this.f.setVisibility(0);
        }
        if (abVar.e) {
            this.g.setVisibility(0);
        } else {
            this.g.setVisibility(8);
        }
    }

    private void a(cll cll) {
        if (cll != null) {
            this.d.setBackgroundResource(2130837636);
            this.n.a(cll);
            return;
        }
        this.d.setBackgroundResource(2130837637);
        this.n.a();
    }

    public void a(ab abVar) {
        if (this.p != null && this.p.b == abVar.b) {
            this.p = abVar;
            b(this.p);
        }
    }

    public void a() {
        this.b.a();
        this.n.a();
    }
}
