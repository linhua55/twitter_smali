package com.twitter.util.math;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View;
import com.twitter.util.serialization.n;
import java.util.Locale;

/* compiled from: Twttr */
public final class Size implements Parcelable {
    public static final Creator<Size> CREATOR;
    public static final n<Size> a;
    public static final Size b;
    private final int c;
    private final int d;

    static {
        a = new g(null);
        CREATOR = new f();
        b = new Size();
    }

    private Size() {
        this(0, 0);
    }

    private Size(int i, int i2) {
        this.c = i;
        this.d = i2;
    }

    public static Size a(int i, int i2) {
        int max = Math.max(i, 0);
        int max2 = Math.max(i2, 0);
        return (max == 0 && max2 == 0) ? b : new Size(max, max2);
    }

    public static Size a(float f, float f2) {
        return a((int) f, (int) f2);
    }

    public static Size a(int i) {
        return a(i, i);
    }

    public static Size a(double d) {
        return a((int) d);
    }

    public static Size a(Rect rect) {
        return a(rect.width(), rect.height());
    }

    public static Size a(Bitmap bitmap) {
        return a(bitmap.getWidth(), bitmap.getHeight());
    }

    public static Size a(Options options) {
        return a(options.outWidth, options.outHeight);
    }

    public static Size a(Drawable drawable) {
        return a(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    public static Size a(View view) {
        return a(view, true);
    }

    public static Size a(View view, boolean z) {
        return a(z ? view.getWidth() : view.getWidth() - (view.getPaddingLeft() + view.getPaddingRight()), z ? view.getHeight() : view.getHeight() - (view.getPaddingTop() + view.getPaddingBottom()));
    }

    public int a() {
        return this.c;
    }

    public int b() {
        return this.d;
    }

    public boolean c() {
        return this.c <= 0 || this.d <= 0;
    }

    public boolean d() {
        return this.c > this.d;
    }

    public float e() {
        return c() ? 0.0f : ((float) this.c) / ((float) this.d);
    }

    public boolean a(Size size) {
        return this.c * size.d > this.d * size.c;
    }

    public boolean b(Size size) {
        return this.c >= size.c && this.d >= size.d;
    }

    public Size a(float f) {
        return b(f, f);
    }

    public Size b(float f, float f2) {
        if (f == 0.0f && f2 == 0.0f) {
            return b;
        }
        return (f == 1.0f && f2 == 1.0f) ? this : a(((float) this.c) * f, ((float) this.d) * f2);
    }

    public Size a(Size size, boolean z) {
        if (size.b(this)) {
            return this;
        }
        if (z) {
            return c(size);
        }
        return a(Math.min(size.a(), this.c), Math.min(size.b(), this.d));
    }

    public Size c(Size size) {
        return size.b(e());
    }

    public Size b(float f) {
        float e = e();
        if (f == 0.0f || e == 0.0f || f == e) {
            return this;
        }
        if (f < e) {
            return a((int) (((float) this.d) * f), this.d);
        }
        return a(this.c, (int) (((float) this.c) / f));
    }

    public Rect f() {
        return new Rect(0, 0, this.c, this.d);
    }

    public RectF g() {
        return new RectF(0.0f, 0.0f, (float) this.c, (float) this.d);
    }

    public Rect b(int i, int i2) {
        int a = i - (a() / 2);
        int b = i2 - (b() / 2);
        return new Rect(a, b, a() + a, b() + b);
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && super.getClass() == obj.getClass() && d((Size) obj));
    }

    public boolean d(Size size) {
        return this == size || (size != null && this.c == size.c && this.d == size.d);
    }

    public int hashCode() {
        return (this.c << 16) + this.d;
    }

    public String toString() {
        return String.format(Locale.ENGLISH, "[w: %d, h: %d]", new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.d)});
    }

    public int describeContents() {
        return 0;
    }

    public Size(Parcel parcel) {
        this.c = parcel.readInt();
        this.d = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
    }
}
