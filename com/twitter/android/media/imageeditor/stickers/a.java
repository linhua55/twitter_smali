package com.twitter.android.media.imageeditor.stickers;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.support.v4.view.PagerAdapter;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.twitter.util.collection.n;
import com.twitter.util.ui.r;
import defpackage.cka;
import defpackage.ckp;
import java.util.List;

/* compiled from: Twttr */
class a extends PagerAdapter {
    private final Context a;
    private final List<ckp> b;
    private final List<ckp> c;
    private final j d;
    private i e;

    a(Context context, cka cka, j jVar) {
        this.a = context;
        this.b = cka.a;
        this.c = cka.b;
        this.d = jVar;
    }

    public void a(i iVar) {
        this.e = iVar;
    }

    public int getCount() {
        return this.c.isEmpty() ? this.b.size() : this.b.size() + 1;
    }

    public boolean isViewFromObject(View view, Object obj) {
        return view.equals(obj);
    }

    public int getItemPosition(Object obj) {
        if (((View) obj).getTag() instanceof List) {
            return 0;
        }
        int indexOf = this.b.indexOf((ckp) ((View) obj).getTag());
        if (indexOf != -1) {
            return !this.c.isEmpty() ? indexOf + 1 : indexOf;
        } else {
            return -2;
        }
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Adapter dVar;
        View frameLayout = new FrameLayout(this.a);
        RecyclerView recyclerView = new RecyclerView(this.a);
        if (i != 0 || this.c.isEmpty()) {
            List list = this.b;
            if (!this.c.isEmpty()) {
                i--;
            }
            ckp ckp = (ckp) list.get(i);
            dVar = new d(this.a, n.b(ckp));
            recyclerView.setTag(ckp);
        } else {
            d dVar2 = new d(this.a, this.c);
            recyclerView.setTag(this.c);
            dVar = dVar2;
        }
        recyclerView.setAdapter(dVar);
        dVar.a(this.d);
        Resources resources = recyclerView.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(2131690503);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(2131690502);
        Point a = r.a((WindowManager) this.a.getSystemService("window"));
        dimensionPixelSize += dimensionPixelSize2 * 2;
        int max = Math.max(4, Math.round(((float) a.x) / ((float) dimensionPixelSize)));
        int i2 = (a.x - (dimensionPixelSize * max)) / 2;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.a, max, 1, false);
        gridLayoutManager.setSpanSizeLookup(new b(this, dVar, max));
        recyclerView.setLayoutManager(gridLayoutManager);
        if (i2 > 0) {
            recyclerView.setPadding(dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2);
            recyclerView.setClipToPadding(false);
            dVar.a(i2);
        }
        recyclerView.addItemDecoration(r.a(dimensionPixelSize2));
        frameLayout.addView(recyclerView);
        dVar.a(this.e);
        viewGroup.addView(frameLayout);
        return frameLayout;
    }

    public ckp a(int i) {
        return (ckp) this.b.get(i);
    }

    public boolean a() {
        return !this.c.isEmpty();
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }
}
