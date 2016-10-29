package com.twitter.android.highlights;

import android.content.Context;
import android.view.LayoutInflater;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class a implements ar {
    public int a(int i) {
        return 2130968890;
    }

    public int b(int i) {
        return 0;
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
        c cVar = (c) atVar;
        cVar.c.setOnClickListener(akVar);
        cVar.s.setBackgroundResource(0);
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        atVar.t.setVisibility(8);
        atVar.u.setVisibility(8);
        b bVar = (b) asVar;
        c cVar = (c) atVar;
        cVar.a.setText(bVar.b ? 2131362765 : 2131362764);
        switch (bVar.a) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                cVar.b.setText(context.getString(2131362762));
                cVar.c.setText(context.getString(2131362760));
            default:
                cVar.b.setText(context.getString(2131362763));
                cVar.c.setText(context.getString(2131362761));
        }
    }
}
