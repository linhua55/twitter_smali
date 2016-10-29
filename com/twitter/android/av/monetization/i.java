package com.twitter.android.av.monetization;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.twitter.app.common.inject.v;
import com.twitter.model.av.p;
import defpackage.apk;
import java.util.Collection;
import java.util.Set;

/* compiled from: Twttr */
public class i extends v implements OnClickListener, OnCheckedChangeListener, apk<Set<Integer>> {
    private final Context a;
    private final n b;
    private final p c;
    private final TextView d;
    private final View e;
    private final j f;

    public i(Context context, LayoutInflater layoutInflater, n nVar, p pVar, j jVar) {
        this.a = context;
        View inflate = layoutInflater.inflate(2130968984, null, false);
        this.b = nVar;
        this.b.a(this);
        this.c = pVar;
        CompoundButton compoundButton = (CompoundButton) inflate.findViewById(2131952703);
        compoundButton.setChecked(this.c.a());
        compoundButton.setOnCheckedChangeListener(this);
        this.d = (TextView) inflate.findViewById(2131952705);
        f();
        this.e = inflate.findViewById(2131952704);
        this.e.setOnClickListener(this);
        d();
        this.f = jVar;
        a(inflate);
    }

    public void a(int i, Set<Integer> set) {
        if (i == -1) {
            this.c.a((Collection) set);
            f();
            this.f.c();
        }
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.c.a(z);
        d();
        this.f.c();
    }

    public void onClick(View view) {
        this.b.c(new l(this.c.b()));
    }

    private void d() {
        this.e.setVisibility(this.c.a() ? 0 : 8);
    }

    private void f() {
        int size = this.c.b().size();
        Resources resources = this.a.getResources();
        if (size > 0) {
            this.d.setText(resources.getQuantityString(2131492873, size, new Object[]{Integer.valueOf(size)}));
            return;
        }
        this.d.setText(resources.getString(2131363040));
    }
}
