package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import com.twitter.android.mx;
import com.twitter.model.media.foundmedia.c;
import com.twitter.refresh.widget.RefreshableListView;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public class GifCategoriesView extends RefreshableListView {
    final OnClickListener a;
    final int b;
    final int c;
    boolean d;
    ak e;
    private final aj f;

    public GifCategoriesView(Context context) {
        this(context, null, 0);
    }

    public GifCategoriesView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GifCategoriesView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new ah(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.GifCategoriesView, i, 0);
        try {
            this.b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.c = obtainStyledAttributes.getInt(1, 0);
            this.f = new aj(this, Collections.emptyList());
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void setGifCategoriesListener(ak akVar) {
        this.e = akVar;
        if (akVar == null) {
            setRefreshListener(null);
        } else {
            setRefreshListener(new ai(this, akVar));
        }
        setAdapter(this.f);
    }

    public void setPlayAnimation(boolean z) {
        if (this.d != z) {
            this.d = z;
            if (this.f != null) {
                this.f.notifyDataSetChanged();
            }
        }
    }

    public void a(List<c> list) {
        this.f.a(list);
    }
}
