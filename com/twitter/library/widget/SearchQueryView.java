package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.twitter.internal.android.widget.PopupEditText;
import defpackage.bct;
import defpackage.bdd;

/* compiled from: Twttr */
public class SearchQueryView extends PopupEditText {
    private y e;
    private final int f;

    public SearchQueryView(Context context) {
        this(context, null, bct.searchQueryViewStyle);
    }

    public SearchQueryView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.searchQueryViewStyle);
    }

    public SearchQueryView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.SearchQueryView, i, 0);
        this.f = obtainStyledAttributes.getInt(bdd.SearchQueryView_clearDrawablePosition, -1);
        obtainStyledAttributes.recycle();
    }

    protected boolean a(int i) {
        return this.e != null && i == this.f && this.e.a(this);
    }

    public void setOnClearClickListener(y yVar) {
        this.e = yVar;
    }
}
