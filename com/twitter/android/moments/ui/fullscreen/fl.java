package com.twitter.android.moments.ui.fullscreen;

import adi;
import aia;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bbl;
import bbn;
import com.twitter.android.moments.data.z;
import com.twitter.android.moments.ui.h;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.ui.widget.BadgeView;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.n;
import cym;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import rx.an;
import rx.o;
import rx.t;

/* compiled from: Twttr */
class fl {
    private final LayoutInflater a;
    private final o<Map<MomentModule, a>> b;
    private final ep c;
    private final adi d;
    private final t e;
    private List<MomentModule> f;
    private an g;
    private boolean h;

    fl(LayoutInflater layoutInflater, o<Map<MomentModule, a>> oVar, ep epVar, adi adi) {
        this(layoutInflater, oVar, epVar, adi, cym.a());
    }

    @VisibleForTesting
    fl(LayoutInflater layoutInflater, o<Map<MomentModule, a>> oVar, ep epVar, adi adi, t tVar) {
        this.f = n.g();
        this.a = layoutInflater;
        this.b = oVar;
        this.c = epVar;
        this.d = adi;
        this.e = tVar;
    }

    public void a(ViewGroup viewGroup) {
        if (this.g != null) {
            this.g.K_();
        }
        this.g = this.b.a(this.e).b(new fm(this, viewGroup));
    }

    public void a() {
        this.h = true;
        d();
    }

    public void b() {
        this.h = false;
    }

    public void c() {
        if (this.g != null) {
            this.g.K_();
            this.g = null;
        }
    }

    @VisibleForTesting
    void a(ViewGroup viewGroup, Map<MomentModule, a> map) {
        viewGroup.removeAllViews();
        Set a = MutableSet.a();
        this.f = n.a(map.keySet());
        Object obj = null;
        Object obj2 = null;
        for (Entry entry : map.entrySet()) {
            MomentModule momentModule = (MomentModule) entry.getKey();
            ab b = momentModule.b();
            if (!a.contains(Long.valueOf(b.b))) {
                Object obj3;
                a.add(Long.valueOf(b.b));
                if (obj2 == null) {
                    this.c.a((a) entry.getValue());
                    obj3 = 1;
                } else {
                    obj3 = obj2;
                }
                View inflate = this.a.inflate(2130969044, viewGroup, false);
                View inflate2 = this.a.inflate(2130968745, viewGroup, false);
                inflate2.setBackgroundColor(viewGroup.getResources().getColor(2131886299));
                viewGroup.addView(inflate2);
                z.a(momentModule, (MediaImageView) inflate.findViewById(2131952793));
                ((TextView) inflate.findViewById(2131952748)).setText(b.c);
                TextView textView = (TextView) inflate.findViewById(2131952750);
                textView.setText(momentModule.f());
                aia.b(inflate).a(b);
                BadgeView badgeView = (BadgeView) inflate.findViewById(2131952792);
                if (b.a()) {
                    h.a(b, badgeView, 2130839495, true);
                    textView.setVisibility(8);
                } else {
                    badgeView.setVisibility(8);
                    textView.setVisibility(0);
                }
                inflate.findViewById(2131952757).setVisibility(momentModule.b().e ? 0 : 8);
                viewGroup.addView(inflate);
                inflate.setOnClickListener(new fn(this, entry));
                d();
                obj2 = obj3;
            } else if (obj == null) {
                bbn.a(new bbl(new IllegalStateException("Got duplicate moment in suggestions")));
                obj = 1;
            }
        }
    }

    private void d() {
        if (this.h) {
            for (MomentModule b : this.f) {
                this.d.a(b.b());
            }
            this.f = n.g();
        }
    }
}
