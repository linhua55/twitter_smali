package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.twitter.model.moments.viewmodels.MomentPage.Type;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.model.moments.viewmodels.m;
import com.twitter.model.moments.viewmodels.v;
import com.twitter.model.moments.viewmodels.y;
import com.twitter.moments.core.ui.widget.sectionpager.a;
import com.twitter.moments.core.ui.widget.sectionpager.d;
import com.twitter.util.z;

/* compiled from: Twttr */
public class cn implements a, z<f> {
    private final ba a;
    private final f b;
    private final ViewGroup c;
    private final ProgressBar d;
    private final d e;
    private a f;
    private boolean g;

    cn(ba baVar, f fVar, ViewGroup viewGroup, ProgressBar progressBar, d dVar) {
        this.a = baVar;
        this.b = fVar;
        this.c = viewGroup;
        this.d = progressBar;
        this.e = dVar;
        fVar.a(this);
    }

    public static cn a(Context context, ba baVar, f fVar, d dVar) {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(2130969022, null, false);
        ProgressBar progressBar = (ProgressBar) viewGroup.findViewById(2131952801);
        if (!fVar.a() && (fVar instanceof y)) {
            int integer = context.getResources().getInteger(2131755057);
            if (fVar.d() == Type.a) {
                return new gj(baVar, (v) fVar, viewGroup, progressBar, integer);
            } else if (fVar.d() == Type.e) {
                return new gj(baVar, (m) fVar, viewGroup, progressBar, integer);
            }
        }
        return new cn(baVar, fVar, viewGroup, progressBar, dVar);
    }

    public View a() {
        return this.c;
    }

    public void b() {
        this.g = true;
        if (this.f != null) {
            this.f.b();
        }
    }

    public void c() {
        this.g = false;
        if (this.f != null) {
            this.f.c();
        }
    }

    public void d() {
        if (this.f != null) {
            this.f.d();
        }
        this.b.b(this);
    }

    public void a(float f) {
        if (this.f != null) {
            this.f.a(f);
        }
    }

    public void a(f fVar) {
        if (fVar.b()) {
            this.f = this.a.a(fVar.h());
        } else {
            this.f = this.a.a(this.b, this.e);
        }
        View a = this.f.a();
        this.c.addView(a);
        a(a);
        this.d.setVisibility(8);
        if (this.g) {
            this.f.b();
        }
    }

    protected void a(View view) {
    }
}
