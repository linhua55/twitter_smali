package com.twitter.library.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View.BaseSavedState;
import android.widget.ImageView;
import bcx;
import com.twitter.library.media.manager.c;
import com.twitter.library.media.manager.e;
import com.twitter.library.media.manager.f;
import com.twitter.library.media.manager.g;
import com.twitter.library.media.manager.l;
import com.twitter.media.model.AnimatedGifFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.util.a;
import com.twitter.model.media.EditableAnimatedGif;
import com.twitter.util.concurrent.j;
import defpackage.bdd;
import defpackage.bxk;
import java.util.List;

/* compiled from: Twttr */
public class AnimatedGifView extends ImageView {
    public static final j a;
    private final int b;
    private final Drawable c;
    private int d;
    private int e;
    private j f;
    private AnimatedGifFile g;
    private f h;
    private float i;
    private boolean j;
    private boolean k;
    private long l;
    private int m;
    private Bitmap n;
    private Canvas o;
    private int p;
    private bxk q;
    private String r;
    private j<?> s;
    private SavedState t;
    private final Runnable u;

    /* compiled from: Twttr */
    class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        final AnimatedGifFile a;
        final String b;
        final boolean c;
        final int d;
        final int e;
        final int f;
        final transient f g;

        static {
            CREATOR = new k();
        }

        SavedState(Parcelable parcelable, AnimatedGifView animatedGifView) {
            super(parcelable);
            this.a = animatedGifView.g;
            this.b = animatedGifView.r;
            this.c = animatedGifView.k;
            this.d = animatedGifView.m;
            this.e = animatedGifView.d;
            this.f = animatedGifView.e;
            this.g = animatedGifView.h;
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.a = (AnimatedGifFile) parcel.readParcelable(AnimatedGifFile.class.getClassLoader());
            this.b = parcel.readString();
            this.c = parcel.readInt() != 0;
            this.d = parcel.readInt();
            this.e = parcel.readInt();
            this.f = parcel.readInt();
            this.g = null;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.a, i);
            parcel.writeString(this.b);
            parcel.writeInt(this.c ? 1 : 0);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
        }
    }

    static {
        a = new d();
    }

    public AnimatedGifView(Context context) {
        this(context, null, 0);
    }

    public AnimatedGifView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AnimatedGifView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.u = new e(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.AnimatedGifView, i, 0);
        try {
            this.d = obtainStyledAttributes.getInt(bdd.AnimatedGifView_MinimumDurationMs, 0);
            this.e = obtainStyledAttributes.getInt(bdd.AnimatedGifView_MinimumRepeatCount, Integer.MAX_VALUE);
            this.b = obtainStyledAttributes.getColor(bdd.AnimatedGifView_GifBackgroundColor, 0);
            this.c = new ColorDrawable(this.b);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void setEditableAnimatedGif(EditableAnimatedGif editableAnimatedGif) {
        if (editableAnimatedGif == null) {
            g();
        } else {
            setAnimatedGifFile((AnimatedGifFile) editableAnimatedGif.k);
        }
    }

    public void setAnimatedGifFile(AnimatedGifFile animatedGifFile) {
        if (animatedGifFile == null) {
            g();
        } else if (!animatedGifFile.a(this.g)) {
            g();
            this.g = animatedGifFile;
            this.r = animatedGifFile.a().toString();
            invalidate();
        }
    }

    public void setResourceUri(String str) {
        if (!str.equals(this.r)) {
            g();
            this.r = str;
            invalidate();
        }
    }

    public boolean a() {
        if (this.h != null || this.r == null || this.s != null) {
            return false;
        }
        h();
        return true;
    }

    public void setMinRepeatCount(int i) {
        this.e = i;
    }

    public void setMinPlayDuration(int i) {
        this.d = i;
    }

    public MediaFile getMediaFile() {
        return this.h != null ? this.h.c : this.g;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g();
    }

    protected void onDraw(Canvas canvas) {
        if (this.h == null) {
            if (this.r != null && this.s == null) {
                h();
            }
            super.onDraw(canvas);
        } else if (this.h instanceof e) {
            e eVar = (e) this.h;
            if (this.k) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (this.j) {
                    this.l = elapsedRealtime - ((long) this.m);
                    this.j = false;
                }
                this.m = (int) (elapsedRealtime - this.l);
                int i = eVar.a.b;
                if (i == 0 || (this.m / i >= this.e && this.m >= this.d)) {
                    d();
                    super.onDraw(canvas);
                    return;
                }
                a(this.m % i);
                super.onDraw(canvas);
                i = ((int) (SystemClock.elapsedRealtime() - this.l)) % i;
                if (i >= this.q.c) {
                    int i2 = this.q.c + this.q.b;
                    if (i < i2) {
                        i = i2 - i;
                        if (i > 33) {
                            postDelayed(this.u, (long) i);
                            return;
                        }
                    }
                }
                invalidate();
                return;
            }
            super.onDraw(canvas);
        } else {
            super.onDraw(canvas);
        }
    }

    public void b() {
        if (this.e <= 0 && this.d <= 0) {
            d();
        } else if (!this.k) {
            this.k = true;
            this.j = true;
            invalidate();
            if (this.f != null) {
                this.f.c(this);
            }
        }
    }

    public void c() {
        if (this.h instanceof e) {
            e eVar = (e) this.h;
            removeCallbacks(this.u);
            this.k = false;
            int i = eVar.a.b;
            if (i > 0) {
                a(this.m % i);
            }
            invalidate();
            if (this.f != null) {
                this.f.d(this);
            }
        }
    }

    public void d() {
        this.m = 0;
        c();
    }

    public boolean e() {
        return this.k;
    }

    public void setListener(j jVar) {
        this.f = jVar;
    }

    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.r == null) {
            this.t = savedState;
            if (savedState.a != null) {
                setAnimatedGifFile(savedState.a);
                if (savedState.g != null) {
                    a(savedState.g);
                }
            } else if (savedState.b != null) {
                setResourceUri(savedState.b);
            }
        } else if (this.r.equals(savedState.b)) {
            this.t = savedState;
            if (savedState.g != null) {
                if (this.s != null) {
                    this.s.cancel(false);
                }
                a(savedState.g);
            }
        }
    }

    void f() {
        if (this.f != null) {
            this.f.b(this);
        }
    }

    void a(f fVar) {
        this.s = null;
        this.h = fVar;
        if (fVar instanceof g) {
            setImageBitmap(((g) fVar).a);
            if (this.f != null) {
                this.f.a(this);
                return;
            }
            return;
        }
        e eVar = (e) fVar;
        this.g = (AnimatedGifFile) eVar.c;
        this.p = 0;
        int i = eVar.a.b;
        if (i > 0) {
            this.i = ((float) eVar.b.duration()) / ((float) i);
        }
        this.n = a.a(this.g.e, Config.ARGB_8888);
        if (this.n != null) {
            this.o = new Canvas(this.n);
            setImageBitmap(this.n);
            if (this.f != null) {
                this.f.a(this);
            }
            if (this.t != null) {
                this.m = this.t.d;
                this.d = this.t.e;
                this.e = this.t.f;
                if (this.t.c) {
                    b();
                } else {
                    c();
                }
                this.t = null;
            }
        }
    }

    private void a(int i) {
        if (this.h instanceof e) {
            int i2;
            int i3;
            bxk bxk;
            e eVar = (e) this.h;
            List list = eVar.a.a;
            if (i >= ((bxk) list.get(this.p)).c) {
                i2 = this.p;
                i3 = i2;
                i2 = list.size();
            } else {
                i3 = 0;
                i2 = this.p;
            }
            for (int i4 = i3; i4 < i2; i4++) {
                bxk = (bxk) list.get(i4);
                if (bxk.b + bxk.c > i) {
                    this.p = i4;
                    break;
                }
            }
            bxk = (bxk) list.get(this.p);
            if (this.q != bxk) {
                this.q = bxk;
                this.o.drawColor(this.b);
                Movie movie = eVar.b;
                movie.setTime((int) ((((float) i) * this.i) + 0.5f));
                movie.draw(this.o, 0.0f, 0.0f);
            }
        }
    }

    private void g() {
        setImageDrawable(this.c);
        if (this.n != null) {
            this.n.recycle();
            this.n = null;
        }
        if (this.s != null) {
            this.s.cancel(false);
            this.s = null;
        }
        this.g = null;
        this.h = null;
        this.j = false;
        this.k = false;
        this.l = 0;
        this.m = 0;
        this.o = null;
        this.p = 0;
        this.q = null;
        this.r = null;
        this.t = null;
    }

    private void h() {
        j f = l.a(getContext()).i().f(((c) new c(this.r).a(this.g).b((String) getTag(bcx.ui_metric_scope))).a());
        this.s = f;
        f.b(new f(this, f));
        f.c(new h(this, f));
    }
}
