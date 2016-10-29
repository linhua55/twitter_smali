package com.twitter.android.commerce.view;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bdk;
import com.twitter.android.commerce.util.c;
import com.twitter.library.commerce.model.r;
import com.twitter.media.request.a;
import com.twitter.util.aj;
import com.twitter.util.serialization.m;
import defpackage.bcu;

/* compiled from: Twttr */
class v extends bdk<Cursor> {
    final /* synthetic */ OrderHistoryFragment a;

    v(OrderHistoryFragment orderHistoryFragment, Context context) {
        this.a = orderHistoryFragment;
        super(context, 1);
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2130968695, viewGroup, false);
        inflate.setTag(new x(inflate));
        return inflate;
    }

    public void a(View view, Context context, Cursor cursor) {
        a((r) m.a(cursor.getBlob(3), r.a), (x) view.getTag());
    }

    private void a(r rVar, x xVar) {
        int i;
        xVar.a.a(null);
        xVar.a.setOnClickListener(null);
        if (aj.b(rVar.c())) {
            xVar.a.a(a.a(rVar.c()));
            xVar.a.setOnClickListener(this.a);
        }
        xVar.b.setText(c.a(rVar.d()));
        xVar.c.setText(this.a.getString(2131362195, new Object[]{rVar.a(this.a.getResources())}));
        if ("CANCELED".equals(rVar.e())) {
            i = bcu.light_red;
        } else {
            i = bcu.dark_green;
        }
        xVar.c.setTextColor(this.a.getResources().getColor(i));
        xVar.d.setText(rVar.b());
        xVar.e.setText(this.a.getResources().getString(2131362261, new Object[]{rVar.a()}));
    }
}
