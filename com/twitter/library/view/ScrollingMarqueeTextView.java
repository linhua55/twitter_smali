package com.twitter.library.view;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View.BaseSavedState;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.al;
import defpackage.bcr;
import java.util.List;

/* compiled from: Twttr */
public class ScrollingMarqueeTextView extends TypefacesTextView {
    private int a;
    private boolean b;
    private Animation c;
    private Animation d;
    private List<w> e;
    private long f;
    private long g;
    private boolean h;
    private final Runnable i;

    /* compiled from: Twttr */
    class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        boolean a;

        static {
            CREATOR = new v();
        }

        SavedState(Parcelable parcelable, boolean z) {
            super(parcelable);
            this.a = z;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt() != 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a ? 1 : 0);
        }
    }

    public ScrollingMarqueeTextView(Context context) {
        this(context, null);
    }

    public ScrollingMarqueeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = new s(this);
        e();
        f();
    }

    public void onWindowFocusChanged(boolean z) {
        if (z && d()) {
            b();
        } else if (!z) {
            c();
        }
    }

    protected void onDetachedFromWindow() {
        c();
        super.onDetachedFromWindow();
    }

    public void a(List<w> list, long j, long j2) {
        this.e = list;
        this.f = al.b() + j;
        this.g = j2;
        this.h = true;
        a(0);
        b();
    }

    private void a() {
        if (d()) {
            this.b = false;
            this.a = 0;
            startAnimation(this.d);
            removeCallbacks(this.i);
            postDelayed(this.i, this.g);
        }
    }

    private void b() {
        if (d()) {
            long b = al.b();
            removeCallbacks(this.i);
            long j = b - this.f;
            if (Math.abs(j) < 10) {
                a();
            } else if (j <= 0) {
                postDelayed(this.i, -j);
            } else {
                postDelayed(this.i, ((((j + this.g) / this.g) * this.g) + this.f) - b);
            }
        }
    }

    private void c() {
        clearAnimation();
        removeCallbacks(this.i);
    }

    private boolean d() {
        return this.h && this.e != null && this.e.size() > 1 && this.g > 0;
    }

    private void b(int i) {
        int size = this.e.size();
        if (i >= size || size <= 1) {
            this.a = 0;
            a(0);
            this.b = true;
        } else {
            this.a = i;
            a(i);
        }
        setVisibility(0);
        startAnimation(this.c);
    }

    private void e() {
        this.c = AnimationUtils.loadAnimation(getContext(), bcr.status_bar_fade_in);
        this.c.setAnimationListener(new t(this));
        this.c.setFillAfter(true);
    }

    private void f() {
        this.d = AnimationUtils.loadAnimation(getContext(), bcr.status_bar_fade_out);
        this.d.setFillAfter(true);
        this.d.setAnimationListener(new u(this));
    }

    void a(int i) {
        setText(((w) this.e.get(i)).a());
    }

    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.b);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.b = savedState.a;
    }
}
