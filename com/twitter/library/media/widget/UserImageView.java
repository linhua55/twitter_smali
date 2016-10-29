package com.twitter.library.media.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import bct;
import bcu;
import bdd;
import cfg;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.util.af;
import com.twitter.library.util.p;
import com.twitter.media.request.b;
import com.twitter.media.request.i;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;
import com.twitter.media.ui.image.config.d;
import com.twitter.media.ui.image.config.f;
import com.twitter.media.ui.image.config.g;
import com.twitter.media.util.a;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.collection.e;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;

/* compiled from: Twttr */
public class UserImageView extends MediaImageView {
    private static final int[] a;
    private static final e<String, Bitmap> i;
    private static int j;
    private int k;
    private int l;
    private boolean m;
    private cfg n;
    private c o;
    private GradientDrawable p;
    private StateListDrawable q;
    private boolean r;
    private int s;
    private float[] t;

    static {
        a = new int[]{16842919};
        i = new e(5, null);
        j = 0;
    }

    public UserImageView(Context context) {
        this(context, null);
    }

    public UserImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.userImageViewStyle);
    }

    public UserImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, new RichImageView(context), true);
        this.k = -3;
        this.l = -3;
        this.r = true;
        Resources resources = getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.UserImageView, i, 0);
        CharSequence string = obtainStyledAttributes.getString(bdd.UserImageView_userImageSize);
        int i2;
        if (aj.b(string) && (string.charAt(0) == '-' || string.startsWith("0x"))) {
            i2 = obtainStyledAttributes.getInt(bdd.UserImageView_userImageSize, -3);
            this.l = i2;
            this.k = i2;
        } else {
            i2 = obtainStyledAttributes.getDimensionPixelSize(bdd.UserImageView_userImageSize, -3);
            this.l = i2;
            this.k = i2;
        }
        g a = obtainStyledAttributes.getInteger(bdd.UserImageView_roundingStrategy, 0) == CommonRoundingStrategy.e ? CommonRoundingStrategy.c : d.a((float) obtainStyledAttributes.getDimensionPixelSize(bdd.UserImageView_imageCornerRadius, 0));
        this.s = resources.getColor(bcu.placeholder_bg);
        if (j == 0) {
            j = resources.getColor(bcu.light_transparent_black);
        }
        setRoundingStrategy(a);
        obtainStyledAttributes.recycle();
        setImageType("profile");
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b();
    }

    public LayoutParams getLayoutParams() {
        LayoutParams layoutParams = super.getLayoutParams();
        a(layoutParams);
        return layoutParams;
    }

    protected void onMeasure(int i, int i2) {
        if (getLayoutParams() == null) {
            throw new IllegalStateException("Must set size before trying the measure the view");
        }
        b();
        if (c()) {
            getImageView().invalidate();
        }
        super.onMeasure(i, i2);
    }

    public void setSize(int i) {
        a(i, i);
    }

    public void a(int i, int i2) {
        this.k = i;
        this.l = i2;
        if (b()) {
            requestLayout();
            a();
        }
        if (c()) {
            getImageView().invalidate();
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        b();
    }

    public boolean a(TwitterUser twitterUser) {
        return a(twitterUser, true);
    }

    public boolean a(TwitterUser twitterUser, boolean z) {
        if (twitterUser != null) {
            return a(twitterUser.e, twitterUser.c, z);
        }
        return a(null);
    }

    public boolean a(String str, long j, boolean z) {
        return a(af.a(j, str), z, null);
    }

    public boolean a(String str) {
        return a(str, true, null);
    }

    public boolean a(String str, com.twitter.media.request.c cVar) {
        return a(str, true, cVar);
    }

    public boolean a(String str, boolean z, com.twitter.media.request.c cVar) {
        b a = UserImageRequest.a(str);
        if (cVar != null) {
            a.a((i) cVar);
        }
        return super.a(a.a(this.n).a(this.o), z);
    }

    public boolean a(b bVar, boolean z) {
        throw new UnsupportedOperationException("Use setUser or setUserImageUrl");
    }

    public void setTransformation(cfg cfg) {
        this.n = cfg;
        b requestBuilder = getRequestBuilder();
        if (requestBuilder != null) {
            requestBuilder.a(cfg);
            aG_();
        }
    }

    public void setCropRectangle(c cVar) {
        this.o = cVar;
        b requestBuilder = getRequestBuilder();
        if (requestBuilder != null) {
            requestBuilder.a(cVar);
            aG_();
        }
    }

    public void setDefaultDrawableColor(int i) {
        this.s = i;
    }

    public void setDefaultDrawable(Drawable drawable) {
        b(drawable, true);
    }

    public void b(@DimenRes int i, @ColorRes int i2) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        int color = ContextCompat.getColor(getContext(), i2);
        setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        setBorderSize(dimensionPixelSize);
        setRoundingStrategy(CommonRoundingStrategy.b);
        setBackground(p.a(this, dimensionPixelSize, color));
    }

    private void b(Drawable drawable, boolean z) {
        super.setDefaultDrawable(drawable);
        this.m = z;
        if (!this.m && this.e == null) {
            d();
        }
    }

    protected f getRoundingConfig() {
        return f.a((float) UserImageRequest.a(this.k), (float) UserImageRequest.a(this.l), (float) this.h);
    }

    protected void a() {
        super.a();
        RichImageView richImageView = (RichImageView) getImageView();
        this.t = richImageView.getCornerRadii();
        this.q = a(this.t);
        a(richImageView);
        d();
    }

    public void a(boolean z) {
        if (this.r != z) {
            this.r = z;
            a((RichImageView) getImageView());
        }
    }

    private void a(RichImageView richImageView) {
        richImageView.setOverlayDrawable(this.r ? this.q : null);
    }

    private boolean b() {
        return a(super.getLayoutParams());
    }

    private boolean a(LayoutParams layoutParams) {
        if (layoutParams != null) {
            int a = (UserImageRequest.a(this.k) + getPaddingLeft()) + getPaddingRight();
            int a2 = (UserImageRequest.a(this.l) + getPaddingTop()) + getPaddingBottom();
            if (!(layoutParams.width == a && layoutParams.height == a2)) {
                layoutParams.width = a;
                layoutParams.height = a2;
                return true;
            }
        }
        return false;
    }

    private boolean c() {
        int paddingRight = getPaddingRight() + (UserImageRequest.a(this.k) + getPaddingLeft());
        int paddingBottom = getPaddingBottom() + (UserImageRequest.a(this.l) + getPaddingTop());
        if (!(this.e instanceof GradientDrawable) || (this.e.getIntrinsicWidth() == paddingRight && this.e.getIntrinsicHeight() == paddingBottom)) {
            return false;
        }
        ((GradientDrawable) this.e).setSize(paddingRight, paddingBottom);
        return true;
    }

    private StateListDrawable a(float[] fArr) {
        StateListDrawable stateListDrawable;
        if (this.q != null) {
            stateListDrawable = this.q;
        } else {
            StateListDrawable stateListDrawable2 = new StateListDrawable();
            this.p = new GradientDrawable();
            this.p.setColor(j);
            stateListDrawable2.addState(a, this.p);
            stateListDrawable = stateListDrawable2;
        }
        Object obj = (fArr == null || fArr.length != 8) ? null : 1;
        if (obj != null) {
            this.p.setCornerRadii(fArr);
        } else {
            this.p.setCornerRadius(0.0f);
        }
        return stateListDrawable;
    }

    private void d() {
        if (this.e == null || !this.m) {
            int paddingRight = getPaddingRight() + (UserImageRequest.a(this.k) + getPaddingLeft());
            int paddingBottom = getPaddingBottom() + (UserImageRequest.a(this.l) + getPaddingTop());
            int i = this.s;
            float[] fArr = this.t;
            Size a = Size.a(paddingRight, paddingBottom);
            String a2 = a(a, fArr, i);
            Bitmap bitmap = (Bitmap) i.a(a2);
            if (bitmap == null) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(i);
                gradientDrawable.setSize(paddingRight, paddingBottom);
                boolean z = fArr != null && fArr.length == 8;
                if (z) {
                    gradientDrawable.setCornerRadii(fArr);
                } else {
                    gradientDrawable.setCornerRadius(0.0f);
                }
                bitmap = a.a(a, Config.ARGB_8888);
                if (bitmap != null) {
                    Canvas canvas = new Canvas(bitmap);
                    gradientDrawable.setBounds(0, 0, a.a(), a.b());
                    gradientDrawable.draw(canvas);
                    i.a(a2, bitmap);
                }
            }
            b(new BitmapDrawable(getResources(), bitmap), false);
        }
    }

    private static String a(Size size, float[] fArr, int i) {
        StringBuilder stringBuilder = new StringBuilder(size.toString());
        stringBuilder.append("_color_");
        stringBuilder.append(i);
        if (fArr != null) {
            for (float f : fArr) {
                stringBuilder.append("_");
                stringBuilder.append(f);
            }
        }
        return stringBuilder.toString();
    }
}
