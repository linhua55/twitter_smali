package com.twitter.android.businessprofiles.gallery;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* compiled from: Twttr */
public class MediaGalleryView extends FrameLayout {
    private RecyclerView a;
    private a b;

    public MediaGalleryView(Context context) {
        this(context, null);
    }

    public MediaGalleryView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaGalleryView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (RecyclerView) findViewById(2131952701);
        this.a.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.b = new a(getContext(), 1, null, null, null);
        this.a.setAdapter(this.b);
    }

    public void setAdapter(a aVar) {
        this.b = aVar;
        this.a.setAdapter(this.b);
    }

    public a getAdapter() {
        return this.b;
    }
}
