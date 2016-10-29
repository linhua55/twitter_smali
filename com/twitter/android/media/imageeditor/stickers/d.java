package com.twitter.android.media.imageeditor.stickers;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.v7.widget.GridLayoutManager.LayoutParams;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cjw;
import com.twitter.util.aj;
import com.twitter.util.collection.z;
import defpackage.ckp;
import defpackage.ckr;
import java.util.List;

/* compiled from: Twttr */
public class d extends Adapter<t> {
    private final Context a;
    private final List<ckp> b;
    private final SharedPreferences c;
    private i d;
    private j e;
    private final int f;
    private final int g;
    private int h;

    public /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        a((t) viewHolder, i);
    }

    public /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public d(Context context, List<ckp> list) {
        int i = 0;
        this.a = context;
        this.b = list;
        int i2 = 0;
        for (ckp ckp : list) {
            i2 = ckp.f.size() + i2;
        }
        this.f = i2;
        if (list.size() > 1) {
            i = list.size();
        }
        this.g = i;
        this.c = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public t a(ViewGroup viewGroup, int i) {
        if (i != 1) {
            return r.a(this.a);
        }
        View inflate = LayoutInflater.from(this.a).inflate(2130969422, viewGroup, false);
        if (this.h != 0) {
            ((LayoutParams) inflate.getLayoutParams()).setMargins(-this.h, 0, -this.h, 0);
        }
        return new h(this, inflate);
    }

    public void a(i iVar) {
        this.d = iVar;
    }

    public void a(j jVar) {
        this.e = jVar;
    }

    public void a(int i) {
        this.h = i;
    }

    public void a(t tVar, int i) {
        if (tVar instanceof u) {
            u uVar = (u) tVar;
            z b = b(i);
            if (b != null) {
                ckp ckp = (ckp) this.b.get(((Integer) b.a()).intValue());
                if (this.b.size() > 1) {
                    i = ((Integer) b.b()).intValue() - 1;
                }
                ckr ckr = (ckr) ckp.f.get(i);
                cjw a = ckr.a();
                r.a(a, uVar, new e(this, a, ckp));
                uVar.a.setOnLongClickListener(new f(this, ckr, uVar, a));
                return;
            }
            return;
        }
        h hVar = (h) tVar;
        z b2 = b(i);
        if (b2 != null) {
            int i2;
            ckp = (ckp) this.b.get(((Integer) b2.a()).intValue());
            TextView textView = (TextView) hVar.a.findViewById(2131953299);
            View findViewById = hVar.a.findViewById(2131953298);
            View findViewById2 = hVar.a.findViewById(2131953300);
            if (aj.b(ckp.e)) {
                textView.setVisibility(0);
                textView.setText(ckp.e);
            } else {
                textView.setVisibility(8);
            }
            if (ckp.g) {
                i2 = 0;
            } else {
                i2 = 8;
            }
            findViewById2.setVisibility(i2);
            if (i != 0) {
                findViewById.setVisibility(0);
            } else {
                findViewById.setVisibility(8);
            }
        }
    }

    public int getItemViewType(int i) {
        if (this.b.size() == 1) {
            return 2;
        }
        z b = b(i);
        if (b == null) {
            return 0;
        }
        if (((Integer) b.b()).intValue() == 0) {
            return 1;
        }
        return 2;
    }

    private z<Integer, Integer> b(int i) {
        int size = this.b.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            int size2 = ((ckp) this.b.get(i3)).f.size();
            if (i <= i2 + size2) {
                return z.a(Integer.valueOf(i3), Integer.valueOf(i - i2));
            }
            i2 += size2 + 1;
        }
        return null;
    }

    public int getItemCount() {
        return this.f + this.g;
    }
}
