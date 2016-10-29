package com.twitter.android.geo;

import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.Switch;
import android.widget.TextView;
import com.twitter.model.geo.d;

/* compiled from: Twttr */
public class k implements OnCheckedChangeListener {
    private final ViewGroup a;
    private final l b;
    private final TextView c;
    private boolean d;
    private boolean e;
    private final Interpolator f;

    public k(ViewGroup viewGroup, l lVar) {
        this.f = new DecelerateInterpolator();
        this.a = viewGroup;
        this.b = lVar;
        this.c = (TextView) viewGroup.findViewById(2131953081);
        ((Switch) viewGroup.findViewById(2131953082)).setOnCheckedChangeListener(this);
    }

    public void a() {
        if (!this.d) {
            this.a.animate().translationY(0.0f).setDuration(350).setInterpolator(this.f).start();
            this.d = true;
        }
    }

    public void b() {
        if (this.d) {
            this.a.animate().translationY((float) this.a.getHeight()).setDuration(350).setInterpolator(this.f).start();
            this.d = false;
        }
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.b.a(z);
        this.e = z;
    }

    public boolean c() {
        return this.e;
    }

    public void a(d dVar) {
        this.c.setText(this.c.getResources().getString(2131364318, new Object[]{a(dVar.a()), a(dVar.b())}));
        this.a.setVisibility(0);
    }

    private String a(double d) {
        return String.format("%.2f", new Object[]{Double.valueOf(d)});
    }
}
