package com.twitter.android;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bdl;
import bha;
import cca;
import chr;
import com.twitter.library.database.dm.d;
import com.twitter.util.aj;
import com.twitter.util.al;
import com.twitter.util.ui.a;
import defpackage.bjd;

/* compiled from: Twttr */
public class df extends bdl<cca> {
    private final Context a;
    private final long b;

    public df(Context context, long j) {
        super(context);
        this.a = context;
        this.b = j;
    }

    protected View a(Context context, cca cca, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(this.a).inflate(2130968762, viewGroup, false);
        inflate.setTag(new dg(this.a, inflate));
        return inflate;
    }

    protected void a(View view, Context context, cca cca) {
        CharSequence charSequence;
        int i;
        dg dgVar = (dg) view.getTag();
        d dVar = new d(cca);
        Resources resources = this.a.getResources();
        dk dkVar = new dk(dVar.m, this.b, resources.getString(2131362530));
        dgVar.a(dVar);
        if (dVar.h == 0) {
            charSequence = TtmlNode.ANONYMOUS_REGION_ID;
        } else {
            charSequence = al.a(resources, dVar.h);
        }
        dgVar.d.setText(charSequence);
        dgVar.a(dVar.d, dVar.e);
        dgVar.a(dVar.g);
        dgVar.a(((bha) new bjd().a(dkVar.g).b(dkVar.a).c(dkVar.f).a(resources).a(dkVar.d).b(this.b).a(dkVar.c).b(dkVar.e).a(dVar.i).b(dkVar.h).a(dkVar.b).q()).a());
        if (dVar.k) {
            i = 2130839228;
            charSequence = resources.getString(2131362465);
        } else if (dkVar.a && chr.a.contains(Integer.valueOf(dkVar.b))) {
            i = 2130839229;
            charSequence = resources.getString(2131362466);
        } else {
            charSequence = null;
            i = -1;
        }
        View view2 = dgVar.g;
        if (i != -1) {
            view2.setImageDrawable(ContextCompat.getDrawable(this.a, i));
            view2.setVisibility(0);
            view2.setContentDescription(charSequence);
            a.a(view2, 1);
            return;
        }
        view2.setVisibility(4);
        a.a(view2, 2);
    }

    public long getItemId(int i) {
        Cursor cursor = (Cursor) getItem(i);
        if (cursor == null) {
            return -1;
        }
        String string = cursor.getString(1);
        if (string == null) {
            return -1;
        }
        return a(string);
    }

    @VisibleForTesting
    long a(String str) {
        if (str.contains("-")) {
            str = str.split("-", 2)[1];
        }
        return aj.a(str, -1);
    }
}
