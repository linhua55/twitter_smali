package tv.periscope.android.view;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import defpackage.ddb;
import tv.periscope.android.library.h;
import tv.periscope.android.library.k;
import tv.periscope.android.library.m;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class FuzzyBalls extends RelativeLayout {
    private static final ArgbEvaluator a;
    private ImageView b;
    private ImageView c;
    private ImageView d;
    private ImageView e;
    private AnimatorUpdateListener f;
    private AnimatorUpdateListener g;
    private AnimatorUpdateListener h;
    private AnimatorUpdateListener i;
    private int j;
    private int k;
    private int l;
    private int m;

    static {
        a = new ArgbEvaluator();
    }

    public FuzzyBalls(Context context) {
        super(context);
        b();
    }

    public FuzzyBalls(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public FuzzyBalls(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b();
    }

    private void b() {
        LayoutInflater.from(getContext()).inflate(m.ps__fuzzy_ball, this, true);
        this.b = (ImageView) findViewById(k.ball_1);
        this.c = (ImageView) findViewById(k.ball_2);
        this.d = (ImageView) findViewById(k.ball_3);
        this.e = (ImageView) findViewById(k.ball_4);
        int color = getResources().getColor(h.ps__dark_grey);
        ColorFilter porterDuffColorFilter = new PorterDuffColorFilter(color, Mode.SRC_ATOP);
        this.j = color;
        this.k = color;
        this.l = color;
        this.m = color;
        this.b.setColorFilter(porterDuffColorFilter);
        this.c.setColorFilter(porterDuffColorFilter);
        this.d.setColorFilter(porterDuffColorFilter);
        this.e.setColorFilter(porterDuffColorFilter);
        this.f = new h(this);
        this.g = new i(this);
        this.h = new j(this);
        this.i = new k(this);
        c();
    }

    public void a() {
        c();
    }

    private void c() {
        Point a = ddb.a(getContext());
        float max = ((float) Math.max(a.x, a.y)) * 0.618f;
        a(this.b, max);
        a(this.c, max);
        a(this.d, max);
        a(this.e, max);
    }

    private void a(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        layoutParams.width = (int) f;
        layoutParams.height = (int) f;
        view.setLayoutParams(layoutParams);
    }

    public void a(Bitmap bitmap, int i, long j) {
        int pixel;
        int pixel2;
        int pixel3;
        int width = bitmap.getWidth() / 4;
        int width2 = (bitmap.getWidth() / 4) * 3;
        int height = bitmap.getHeight() / 4;
        int height2 = (bitmap.getHeight() / 4) * 3;
        switch (i) {
            case p.View_android_focusable /*1*/:
                pixel = bitmap.getPixel(width, height2);
                pixel2 = bitmap.getPixel(width, height);
                pixel3 = bitmap.getPixel(width2, height2);
                height = bitmap.getPixel(width2, height);
                break;
            case p.View_paddingStart /*2*/:
                pixel = bitmap.getPixel(width2, height2);
                pixel2 = bitmap.getPixel(width, height2);
                pixel3 = bitmap.getPixel(width2, height);
                height = bitmap.getPixel(width, height);
                break;
            case p.View_paddingEnd /*3*/:
                pixel = bitmap.getPixel(width2, height);
                pixel2 = bitmap.getPixel(width2, height2);
                pixel3 = bitmap.getPixel(width, height);
                height = bitmap.getPixel(width, height2);
                break;
            default:
                pixel = bitmap.getPixel(width, height);
                pixel2 = bitmap.getPixel(width2, height);
                pixel3 = bitmap.getPixel(width, height2);
                height = bitmap.getPixel(width2, height2);
                break;
        }
        a(pixel, pixel2, pixel3, height, j);
    }

    public void a(int i, int i2, int i3, int i4, long j) {
        a(this.f, this.j, i, j);
        this.j = i;
        a(this.g, this.k, i2, j);
        this.k = i2;
        a(this.h, this.l, i3, j);
        this.l = i3;
        a(this.i, this.m, i4, j);
        this.m = i4;
    }

    private void a(AnimatorUpdateListener animatorUpdateListener, int i, int i2, long j) {
        ValueAnimator ofObject = ValueAnimator.ofObject(a, new Object[]{Integer.valueOf(i), Integer.valueOf(i2)});
        ofObject.addUpdateListener(animatorUpdateListener);
        ofObject.setDuration(j).start();
    }
}
