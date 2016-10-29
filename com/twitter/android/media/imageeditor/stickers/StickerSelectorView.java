package com.twitter.android.media.imageeditor.stickers;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import cjw;
import com.twitter.ui.view.LockableViewPager;
import com.twitter.util.ui.r;
import defpackage.bcu;
import defpackage.cka;
import java.util.List;

/* compiled from: Twttr */
public class StickerSelectorView extends FrameLayout implements j {
    private final LockableViewPager a;
    private final StickerTabLayout b;
    private final View c;
    private final RecyclerView d;
    private final ProgressBar e;
    private final View f;
    private a g;
    private i h;
    private n i;

    public StickerSelectorView(Context context) {
        this(context, null);
    }

    public StickerSelectorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickerSelectorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        View inflate = LayoutInflater.from(context).inflate(2130969424, this);
        this.a = (LockableViewPager) inflate.findViewById(2131953302);
        this.b = (StickerTabLayout) inflate.findViewById(2131953301);
        this.b.setTabMode(0);
        this.b.setTabGravity(1);
        this.c = findViewById(2131953304);
        this.d = (RecyclerView) findViewById(2131953305);
        this.e = (ProgressBar) findViewById(2131952050);
        if (VERSION.SDK_INT < 21) {
            this.e.getIndeterminateDrawable().setColorFilter(ContextCompat.getColor(context, bcu.white), Mode.SRC_IN);
        }
        this.f = findViewById(2131953297);
        this.f.findViewById(2131952658).setOnClickListener(new k(this));
        this.d.setLayoutManager(new GridLayoutManager(context, 3, 1, false));
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(2131690503);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(2131690502);
        this.d.addItemDecoration(new l(this, (r.a((WindowManager) context.getSystemService("window")).x - (dimensionPixelSize * 3)) / 8, dimensionPixelSize2));
        this.d.setClickable(true);
        this.c.setOnClickListener(new m(this));
    }

    public void setRetryStickerCatalogListener(n nVar) {
        this.i = nVar;
    }

    public void setStickerSelectedListener(i iVar) {
        this.h = iVar;
        if (this.g != null) {
            this.g.a(iVar);
        }
    }

    public void setStickerCategoryData(cka cka) {
        this.e.setVisibility(8);
        if (cka != null) {
            this.f.setVisibility(8);
            this.g = new a(getContext(), cka, this);
            this.g.a(this.h);
            this.a.setAdapter(this.g);
            this.b.setupWithViewPager(this.a);
            return;
        }
        this.f.setVisibility(0);
    }

    public void a(List<cjw> list, q qVar) {
        this.d.setAdapter(new o(getContext(), list, qVar));
        this.c.setVisibility(0);
        this.a.setPagingEnabled(false);
    }

    public void a() {
        this.c.setVisibility(8);
        this.a.setPagingEnabled(true);
    }
}
