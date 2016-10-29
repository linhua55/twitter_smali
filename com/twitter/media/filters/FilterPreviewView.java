package com.twitter.media.filters;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;

/* compiled from: Twttr */
public class FilterPreviewView extends GLTextureView {
    protected b a;
    private Context b;
    private int c;
    private a d;
    private d e;

    public FilterPreviewView(Context context) {
        super(context);
        this.b = context;
    }

    public FilterPreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = context;
    }

    public void a(Filters filters, a aVar) {
        this.d = aVar;
        setEGLContextClientVersion(2);
        setEGLContextFactory(new f(this.d));
        setEGLConfigChooser(new e());
        this.a = new b();
        setRenderer(this.a);
        this.a.a(this.b, filters);
        setRenderMode(0);
        this.a.a(this.e);
    }

    public void a(int i) {
    }

    public void a(Bitmap bitmap, boolean z) {
        if (this.a != null) {
            this.a.a(bitmap, z);
            b();
        }
    }

    public void setFilterId(int i) {
        if (this.a != null) {
            this.c = i;
            this.a.a(i);
            this.a.b(-1);
            b();
        }
    }

    public void setFilterRenderListener(d dVar) {
        if (this.a != null) {
            this.a.a(dVar);
        }
        this.e = dVar;
    }

    public float getFilterIntensity() {
        return this.a != null ? this.a.d() : 0.0f;
    }

    public void setFilterIntensity(float f) {
        if (this.a != null) {
            this.a.c(f);
            b();
        }
    }

    public float getVignetteSize() {
        return this.a != null ? this.a.c() : 0.0f;
    }

    public void a() {
        if (this.a != null) {
            this.a.a();
        }
    }
}
