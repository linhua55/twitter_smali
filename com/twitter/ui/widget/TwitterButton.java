package com.twitter.ui.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.preference.PreferenceManager;
import android.support.annotation.StyleRes;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.TextView.BufferType;
import com.twitter.android.mx;
import com.twitter.util.a;
import crv;
import cse;
import java.util.Arrays;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TwitterButton extends Button implements OnTouchListener {
    private static final SparseIntArray a;
    private static final int[] c;
    private float A;
    private float B;
    private final Rect C;
    private int D;
    private String E;
    private Bitmap F;
    private String G;
    private int H;
    private int I;
    private final Paint J;
    private int K;
    private int L;
    private int M;
    private boolean N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private float S;
    private float T;
    private int U;
    private Paint V;
    private Bitmap W;
    private Canvas aa;
    private Bitmap ab;
    private Canvas ac;
    private boolean ad;
    protected boolean b;
    private final Rect d;
    private int e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private float p;
    private boolean q;
    private boolean r;
    private final RectF s;
    private final Paint t;
    private int u;
    private int v;
    private final TextPaint w;
    private final Rect x;
    private boolean y;
    private int z;

    static {
        a = new SparseIntArray();
        c = new int[]{18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 40, 42, 44, 48, 52, 56, 60, 64, 68, 72, 80, 84, 90, 96, mx.AppCompatTheme_checkboxStyle, 112, 120, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS, 136};
    }

    private static int a(int i) {
        int length = c.length;
        if (i < c[0] || i > c[length - 1]) {
            return 0;
        }
        int binarySearch = Arrays.binarySearch(c, i);
        if (binarySearch < 0) {
            binarySearch = (binarySearch ^ -1) - 1;
        }
        return c[binarySearch];
    }

    public TwitterButton(Context context) {
        this(context, null);
    }

    public TwitterButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, crv.buttonStyle);
    }

    public TwitterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = false;
        this.d = new Rect();
        this.f = true;
        this.r = false;
        this.s = new RectF();
        this.t = new Paint(1);
        this.w = new TextPaint(129);
        this.x = new Rect();
        this.C = new Rect();
        this.J = new Paint(1);
        this.K = 0;
        this.L = 0;
        this.O = false;
        this.Q = true;
        a(context, attributeSet, i, 0);
    }

    public TwitterButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.b = false;
        this.d = new Rect();
        this.f = true;
        this.r = false;
        this.s = new RectF();
        this.t = new Paint(1);
        this.w = new TextPaint(129);
        this.x = new Rect();
        this.C = new Rect();
        this.J = new Paint(1);
        this.K = 0;
        this.L = 0;
        this.O = false;
        this.Q = true;
        a(context, attributeSet, i, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i, int i2) {
        int i3;
        float f = getResources().getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cse.TwitterButton, i, i2);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getContext());
        if (isInEditMode()) {
            i3 = 16;
        } else {
            i3 = Integer.parseInt(defaultSharedPreferences.getString("font_size", "16"));
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{16842901, 16843093}, i, i2);
        int dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(0, 0);
        this.n = obtainStyledAttributes2.getDimensionPixelSize(1, 0);
        obtainStyledAttributes2.recycle();
        this.w.setTextSize((float) dimensionPixelSize);
        this.w.setColor(this.u);
        if (isInEditMode()) {
            this.w.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        } else {
            this.w.setTypeface(ax.a(context).c);
        }
        float f2 = ((float) (i3 - 16)) * f;
        this.w.setTextSize(((float) dimensionPixelSize) + f2);
        this.n = (int) (f2 + ((float) this.n));
        this.D = obtainStyledAttributes.getDimensionPixelSize(cse.TwitterButton_iconAndLabelMargin, 0);
        this.G = obtainStyledAttributes.getString(cse.TwitterButton_nodpiBaseIconName);
        this.P = this.G != null;
        if (this.P) {
            boolean z;
            dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(cse.TwitterButton_iconSize, 0);
            this.F = c(dimensionPixelSize);
            if (this.F != null) {
                z = true;
            } else {
                z = false;
            }
            this.P = z;
            if (this.P && i3 != 16) {
                boolean z2;
                this.M = (int) (Math.ceil((double) ((i3 - 16) / 2)) * 4.0d);
                this.F = c(dimensionPixelSize);
                if (this.F != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.P = z2;
            }
            if (this.P) {
                this.K = this.F.getWidth();
                this.L = this.F.getHeight();
            }
        }
        a(obtainStyledAttributes, f);
        setFocusable(false);
        setOnTouchListener(this);
        this.r = true;
        if (!isEnabled()) {
            setEnabled(false);
        }
        obtainStyledAttributes.recycle();
    }

    private void a(TypedArray typedArray, float f) {
        this.g = typedArray.getColor(cse.TwitterButton_fillColor, 0);
        this.h = typedArray.getColor(cse.TwitterButton_fillPressedColor, b(this.g));
        this.i = typedArray.getColor(cse.TwitterButton_strokeColor, 0);
        this.j = typedArray.getColor(cse.TwitterButton_strokePressedColor, this.i);
        this.l = typedArray.getDimensionPixelSize(cse.TwitterButton_cornerRadius, 0);
        this.t.setStrokeWidth(f);
        this.q = typedArray.getBoolean(cse.TwitterButton_bounded, !a());
        if (this.q) {
            this.t.setColor(this.i);
        } else {
            this.t.setColor(this.g);
        }
        this.p = getResources().getDisplayMetrics().density;
        this.o = (int) (((float) this.o) * f);
        this.u = typedArray.getColor(cse.TwitterButton_labelColor, 0);
        this.v = typedArray.getColor(cse.TwitterButton_labelPressedColor, this.u);
        this.z = typedArray.getDimensionPixelSize(cse.TwitterButton_labelMargin, 0);
        this.N = typedArray.getBoolean(cse.TwitterButton_iconCanBeFlipped, true);
        this.H = typedArray.getColor(cse.TwitterButton_iconColor, 0);
        this.I = typedArray.getColor(cse.TwitterButton_iconPressedColor, this.H);
        this.U = typedArray.getDimensionPixelSize(cse.TwitterButton_iconMargin, 0);
        setIconLayout(typedArray.getInt(cse.TwitterButton_iconLayout, 0));
        this.ad = typedArray.getBoolean(cse.TwitterButton_knockout, false);
        if (this.ad) {
            b();
        }
    }

    private void setIconLayout(int i) {
        boolean z = true;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                this.R = a.a(getContext());
            case WireMessage.WIRE_CONTROL /*2*/:
                this.R = true;
            case WireMessage.WIRE_AUTH /*3*/:
                this.R = false;
            default:
                if (a.a(getContext())) {
                    z = false;
                }
                this.R = z;
        }
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.r) {
            setAlpha(z ? 1.0f : 0.6f);
            invalidate();
        }
    }

    public void setKnockout(boolean z) {
        if (this.ad != z) {
            b();
            this.ad = z;
            invalidate();
        }
    }

    public void setButtonAppearance(@StyleRes int i) {
        float f = getResources().getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(i, cse.TwitterButton);
        a(obtainStyledAttributes, f);
        invalidate();
        obtainStyledAttributes.recycle();
    }

    private boolean a() {
        return (this.g == -1 || this.g == 0) ? false : true;
    }

    private static Paint a(Paint paint, int i) {
        paint.setColorFilter(new PorterDuffColorFilter(i, Mode.SRC_IN));
        return paint;
    }

    private int b(int i) {
        if (Color.alpha(i) < MotionEventCompat.ACTION_MASK) {
            return Color.argb(Color.alpha(i) + 77, Color.red(i), Color.green(i), Color.blue(i));
        }
        a(i, -0.3d);
        return i;
    }

    private int a(int i, double d) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[2] = fArr[2] * ((float) (1.0d + d));
        return Color.HSVToColor(fArr);
    }

    private void b() {
        if (this.V == null) {
            this.V = new Paint();
            this.V.setXfermode(new PorterDuffXfermode(Mode.DST_OUT));
        }
    }

    private void a(int i, int i2) {
        this.ab = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        this.aa = new Canvas(this.ab);
        this.W = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        this.ac = new Canvas(this.W);
    }

    private Bitmap c(int i) {
        if (this.G == null) {
            return null;
        }
        Bitmap bitmap;
        int i2 = i + this.M;
        int i3 = a.get(i2);
        if (i3 == 0) {
            i3 = a(i2);
            if (i3 == 0) {
                return null;
            }
            a.put(i2, i3);
        }
        i3 = getResources().getIdentifier(this.G + "_" + i3 + "h", "drawable", getContext().getPackageName());
        if (i3 == 0) {
            bitmap = null;
        } else {
            try {
                bitmap = BitmapFactory.decodeResource(getResources(), i3);
            } catch (NotFoundException e) {
                return null;
            }
        }
        return bitmap;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = true;
        switch (motionEvent.getActionMasked()) {
            case mx.View_android_theme /*0*/:
                this.b = true;
                invalidate();
                break;
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
                this.b = false;
                invalidate();
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                int i;
                view.getHitRect(this.d);
                boolean z2 = !this.d.contains(view.getLeft() + ((int) motionEvent.getX()), view.getTop() + ((int) motionEvent.getY()));
                boolean z3 = this.b;
                if (z2) {
                    i = 0;
                } else {
                    i = 1;
                }
                if ((i ^ z3) != 0) {
                    if (this.b) {
                        z = false;
                    }
                    this.b = z;
                    invalidate();
                    break;
                }
                break;
        }
        c();
        return false;
    }

    public void setShowIcon(boolean z) {
        if (this.P && this.Q != z) {
            this.Q = z;
            invalidate();
        }
    }

    private boolean d() {
        return this.P && this.Q;
    }

    protected void c() {
        if (this.b) {
            this.k = this.j;
            this.t.setColor(this.h);
            this.w.setColor(this.v);
            a(this.J, this.I);
        } else {
            this.k = this.i;
            this.t.setColor(this.g);
            this.w.setColor(this.u);
            a(this.J, this.H);
        }
        this.t.setStyle(Style.FILL);
    }

    private void e() {
        boolean z = false;
        if (this.N && this.F != null) {
            Matrix matrix = new Matrix();
            matrix.preScale(-1.0f, 1.0f);
            Bitmap bitmap = this.F;
            this.F = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
            if (!this.O) {
                z = true;
            }
            this.O = z;
        }
    }

    public void setText(CharSequence charSequence, BufferType bufferType) {
        super.setText(charSequence, bufferType);
        requestLayout();
        invalidate();
    }

    protected void onMeasure(int i, int i2) {
        Object charSequence = getText().toString();
        int i3 = this.n;
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size2 = MeasureSpec.getSize(i2);
        this.y = !charSequence.isEmpty();
        this.w.getTextBounds(charSequence, 0, charSequence.length(), this.x);
        int width = this.x.width();
        if (this.y && d()) {
            width = (width + ((this.U + this.K) + this.D)) + this.z;
        } else if (this.y) {
            this.w.setTextAlign(Align.CENTER);
            width = (width + this.z) + this.z;
        } else if (d()) {
            width = (this.U + this.K) + this.U;
        } else {
            width = 0;
        }
        this.e = width;
        if (mode == 1073741824) {
            this.f = false;
        } else {
            size = mode == RtlSpacingHelper.UNDEFINED ? Math.min(width, size) : width;
        }
        if (mode2 != 1073741824) {
            size2 = mode2 == RtlSpacingHelper.UNDEFINED ? Math.min(i3, size2) : i3;
        }
        if (!this.y || size >= width) {
            this.E = charSequence;
        } else {
            if (d()) {
                width = size - (((this.U + this.K) + this.D) + this.z);
            } else {
                width = size - (this.z * 2);
            }
            this.E = TextUtils.ellipsize(charSequence, this.w, (float) width, getEllipsize()).toString();
            this.w.getTextBounds(this.E, 0, this.E.length(), this.x);
        }
        this.s.set(0.0f, 0.0f, (float) size, (float) size2);
        setMeasuredDimension(size, size2);
        this.m = size;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.ad && i > 0 && i2 > 0) {
            if (i != i3 || i2 != i4) {
                a(i, i2);
            }
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = this.m;
        int i6 = this.n;
        boolean z2 = this.R;
        if (this.q && !this.b) {
            this.s.inset(this.p / 2.0f, this.p / 2.0f);
        }
        if (!this.y && d()) {
            this.S = ((float) (i5 - this.F.getWidth())) / 2.0f;
        } else if (z2) {
            this.S = (float) this.U;
            if (this.O) {
                e();
            }
        } else {
            this.S = (float) ((i5 - this.U) - this.K);
            if (!this.O) {
                e();
            }
        }
        if (!d()) {
            this.A = (((this.E != null ? this.w.measureText(this.E) : 0.0f) - ((float) this.x.width())) / 2.0f) + ((((float) i5) / 2.0f) - ((float) this.x.left));
        } else if (z2) {
            this.w.setTextAlign(Align.LEFT);
            this.A = (float) (((this.U + this.K) + this.D) - this.x.left);
        } else {
            this.w.setTextAlign(Align.RIGHT);
            this.A = (float) (((i5 - this.U) - this.K) - this.D);
        }
        this.w.getTextBounds("X", 0, 1, this.C);
        this.B = (((float) i6) / 2.0f) + ((float) (this.C.height() / 2));
        this.T = (((float) i6) / 2.0f) - (((float) (this.L + this.M)) / 2.0f);
        if (!this.f && d() && this.y) {
            int i7 = (i5 - this.e) / 2;
            if (a.a(getContext())) {
                this.A -= (float) i7;
                this.S -= (float) i7;
                return;
            }
            this.A += (float) i7;
            this.S = ((float) i7) + this.S;
        }
    }

    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
        Canvas canvas2;
        int i = this.l;
        c();
        if (a() || this.q) {
            if (this.ad && this.aa == null) {
                a(getWidth(), getHeight());
            }
            canvas2 = this.ad ? this.aa : canvas;
            canvas2.drawRoundRect(this.s, (float) i, (float) i, this.t);
            if (this.q) {
                this.t.setColor(this.k);
                this.t.setStyle(Style.STROKE);
                canvas2.drawRoundRect(this.s, (float) i, (float) i, this.t);
            }
        }
        canvas2 = this.ad ? this.ac : canvas;
        if (d()) {
            canvas2.drawBitmap(this.F, this.S, this.T, this.J);
        }
        if (this.ad) {
            this.ac.drawColor(ViewCompat.MEASURED_STATE_MASK, Mode.CLEAR);
        }
        if (this.y) {
            canvas2.drawText(this.E, this.A, this.B, this.w);
        }
        if (this.ad) {
            this.aa.drawBitmap(this.W, 0.0f, 0.0f, this.V);
            canvas.drawBitmap(this.ab, 0.0f, 0.0f, null);
        }
    }
}
