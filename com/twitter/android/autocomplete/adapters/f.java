package com.twitter.android.autocomplete.adapters;

import android.content.Context;
import android.view.View;
import com.twitter.android.provider.z;
import com.twitter.model.core.p;
import defpackage.bcu;
import java.util.Set;

/* compiled from: Twttr */
public class f extends l {
    private Set<Long> a;

    public f(Context context) {
        super(context, 2130968989);
    }

    public void a(View view, Context context, z zVar) {
        super.a(view, context, zVar);
        k kVar = (k) view.getTag();
        view.setBackgroundResource(2130837628);
        if (p.l(zVar.f)) {
            view.setEnabled(true);
            view.setAlpha(1.0f);
            kVar.e.setVisibility(8);
            long j = zVar.a;
            if (this.a == null || !this.a.contains(Long.valueOf(j))) {
                kVar.f.setVisibility(8);
                return;
            }
            view.setBackgroundColor(context.getResources().getColor(bcu.section_divider_color));
            kVar.f.setVisibility(0);
            return;
        }
        view.setEnabled(false);
        view.setAlpha(0.3f);
        kVar.e.setVisibility(0);
        kVar.f.setVisibility(8);
    }

    public void a(Set<Long> set) {
        this.a = set;
        notifyDataSetChanged();
    }
}
