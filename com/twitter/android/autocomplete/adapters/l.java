package com.twitter.android.autocomplete.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.provider.z;

/* compiled from: Twttr */
public class l extends h<String, z> {
    private final int a;

    public l(Context context) {
        this(context, 2130969499);
    }

    public l(Context context, int i) {
        super(context);
        this.a = i;
    }

    public View a(Context context, z zVar, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(this.a, null);
        k kVar = new k(inflate);
        kVar.a.setDefaultDrawable(context.getResources().getDrawable(2130837647));
        inflate.setTag(kVar);
        return inflate;
    }

    public void a(View view, Context context, z zVar) {
        k kVar = (k) view.getTag();
        kVar.a.a(zVar.d);
        kVar.b.setText(zVar.c);
        if (zVar.a()) {
            kVar.c.setVisibility(0);
        } else {
            kVar.c.setVisibility(8);
        }
        kVar.d.setText("@" + zVar.b);
    }

    public long getItemId(int i) {
        z zVar = (z) getItem(i);
        return zVar != null ? zVar.a : -1;
    }
}
