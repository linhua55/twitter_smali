package com.twitter.app.lists;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bdl;
import com.twitter.model.core.cg;

/* compiled from: Twttr */
public class e extends bdl<cg> {
    public e(Context context) {
        super(context);
    }

    protected View a(Context context, cg cgVar, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2130968945, viewGroup, false);
        inflate.setTag(new f(inflate));
        return inflate;
    }

    protected void a(View view, Context context, cg cgVar) {
        f fVar = (f) view.getTag();
        fVar.a.setText(cgVar.h);
        if (cgVar.b) {
            fVar.a.setCompoundDrawablesWithIntrinsicBounds(null, null, context.getResources().getDrawable(2130839446), null);
        } else {
            fVar.a.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
        }
        fVar.b.setText(context.getString(2131362906, new Object[]{cgVar.l}));
        fVar.e.a(cgVar.k);
    }

    public long getItemId(int i) {
        cg cgVar = (cg) getItem(i);
        return cgVar != null ? cgVar.bf_() : super.getItemId(i);
    }
}
