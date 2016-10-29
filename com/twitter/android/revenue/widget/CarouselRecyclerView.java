package com.twitter.android.revenue.widget;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;

/* compiled from: Twttr */
public class CarouselRecyclerView extends RecyclerView {
    private LinearLayoutManager a;
    private int b;
    private boolean c;
    private boolean d;
    private int e;
    private c f;

    public CarouselRecyclerView(Context context) {
        super(context);
        a(context);
    }

    public CarouselRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public CarouselRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.a = new a(context);
        setLayoutManager(this.a);
    }

    public void setOnItemChangeListener(c cVar) {
        this.f = cVar;
    }

    public void setPosition(int i) {
        scrollToPosition(i);
    }

    public int getPosition() {
        return this.b;
    }

    public void scrollToPosition(int i) {
        this.b = i;
        super.scrollToPosition(i);
    }

    public void onScrolled(int i, int i2) {
        this.c = i > 0;
    }

    public void onScrollStateChanged(int i) {
        boolean z = true;
        LinearLayoutManager linearLayoutManager = this.a;
        if (linearLayoutManager != null && linearLayoutManager.getItemCount() != 0) {
            if (1 == i) {
                this.e = this.b;
                this.d = true;
            } else if (2 == i) {
                if (this.d) {
                    r0 = this.c ? Math.min(getAdapter().getItemCount() - 1, this.e + 1) : Math.max(0, this.e - 1);
                    smoothScrollToPosition(r0);
                    if (r0 == this.b) {
                        z = false;
                    }
                    this.b = r0;
                    if (z) {
                        a(r0);
                    }
                }
                this.d = false;
            } else if (i == 0) {
                if (this.d) {
                    r0 = this.e;
                    smoothScrollToPosition(r0);
                    if (r0 == this.b) {
                        z = false;
                    }
                    this.b = r0;
                    if (z) {
                        a(r0);
                    }
                }
                this.d = false;
            }
        }
    }

    private void a(int i) {
        if (this.f != null) {
            this.f.a(i);
        }
    }
}
