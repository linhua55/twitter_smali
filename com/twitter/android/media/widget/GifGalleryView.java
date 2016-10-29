package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import com.twitter.android.mx;
import com.twitter.model.media.foundmedia.f;
import com.twitter.refresh.widget.RefreshableListView;

/* compiled from: Twttr */
public class GifGalleryView extends RefreshableListView {
    final OnClickListener a;
    final OnLongClickListener b;
    int c;
    int d;
    boolean e;
    aq f;
    ap g;

    public GifGalleryView(Context context) {
        this(context, null, 0);
    }

    public GifGalleryView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GifGalleryView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new am(this);
        this.b = new an(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.GifGalleryView, i, 0);
        try {
            this.c = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.d = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void setItemClickListener(aq aqVar) {
        this.f = aqVar;
        if (aqVar == null) {
            setRefreshListener(null);
        } else {
            setRefreshListener(new ao(this, aqVar));
        }
    }

    public void a(Iterable<f> iterable, boolean z) {
        setAdapter(new ap(this, iterable, z));
    }

    public void b(Iterable<f> iterable, boolean z) {
        if (this.g != null) {
            this.g.a(iterable, z);
        }
    }

    public void setAdapter(ap apVar) {
        super.setAdapter(apVar);
        this.g = apVar;
    }

    public void setPlayAnimation(boolean z) {
        if (this.e != z) {
            this.e = z;
            if (this.g != null && this.g.getCount() > 0) {
                this.g.notifyDataSetChanged();
            }
        }
    }

    public int getFirstVisibleItemIndex() {
        if (this.g == null) {
            return 0;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof ar) && childAt.getBottom() >= 0) {
                as asVar = ((ar) childAt).a;
                if (asVar != null) {
                    return asVar.b;
                }
            }
        }
        return 0;
    }

    public int getFirstVisibleItemOffsetPixels() {
        if (this.g == null) {
            return 0;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof ar) && childAt.getBottom() >= 0) {
                return childAt.getTop();
            }
        }
        return 0;
    }

    public void a(int i, int i2) {
        if (this.g != null) {
            int b = this.g.b(i);
            if (b >= 0) {
                if (c()) {
                    b++;
                }
                setSelectionFromTop(b, i2);
            }
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.g != null) {
            this.g.a(i3 - i);
        }
        super.onLayout(z, i, i2, i3, i4);
    }
}
