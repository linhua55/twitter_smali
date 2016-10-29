package tv.periscope.android.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PorterDuff.Mode;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.util.Arrays;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class MaskImageView extends ImageView {
    private final Paint a;
    private Bitmap b;
    private Canvas c;
    private Path d;
    private RectF e;
    private float[] f;
    private MaskType g;
    private Drawable h;
    private int i;
    private int j;
    private int k;

    /* compiled from: Twttr */
    public enum MaskType {
        None,
        Oval,
        RoundRect;
        
        public static final MaskType[] d;

        static {
            d = values();
        }
    }

    public MaskImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Paint();
        a(context, attributeSet, i);
    }

    public MaskImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new Paint();
        a(context, attributeSet, 0);
    }

    public MaskImageView(Context context) {
        super(context);
        this.a = new Paint();
        a(context, null, 0);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        this.d = new Path();
        this.e = new RectF();
        this.g = MaskType.None;
        this.a.setAntiAlias(true);
        this.f = new float[8];
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.MaskImageView);
            this.g = MaskType.d[obtainStyledAttributes.getInteger(p.MaskImageView_ps__maskType, MaskType.None.ordinal())];
            if (this.g == MaskType.RoundRect) {
                float[] fArr = new float[4];
                Arrays.fill(fArr, obtainStyledAttributes.getDimension(p.MaskImageView_ps__cornerRadius, 0.0f));
                setCornerRadius(fArr);
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        if (this.h != drawable) {
            this.h = drawable;
            this.i = 0;
            if (drawable == null) {
                a();
            } else {
                a(getWidth(), getHeight());
            }
        }
        super.setImageDrawable(drawable);
    }

    public void setImageResource(int i) {
        if (this.i != i) {
            this.i = i;
            this.h = null;
            if (i == 0) {
                a();
            } else {
                a(getWidth(), getHeight());
            }
        }
        super.setImageResource(i);
    }

    private void a() {
        this.b = null;
        this.c = null;
        this.a.setShader(null);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (this.b == null || this.b.getHeight() != i6 || this.b.getWidth() != i5) {
            a(i5, i6);
        }
    }

    private void a(int i, int i2) {
        if (i != 0 && i2 != 0) {
            if (this.c != null && i == this.j && i2 == this.k) {
                this.c.drawColor(0, Mode.CLEAR);
                return;
            }
            this.b = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
            this.c = new Canvas(this.b);
            this.a.setShader(new BitmapShader(this.b, TileMode.CLAMP, TileMode.CLAMP));
            this.e.set(0.0f, 0.0f, (float) i, (float) i2);
            this.d.reset();
            if (this.g == MaskType.RoundRect) {
                this.d.addRoundRect(this.e, this.f, Direction.CW);
            } else {
                this.d.addOval(this.e, Direction.CW);
            }
            this.j = i;
            this.k = i2;
        }
    }

    protected void onDraw(Canvas canvas) {
        if (this.g == MaskType.None || (this.h == null && this.i == 0)) {
            super.onDraw(canvas);
            return;
        }
        super.onDraw(this.c);
        canvas.drawPath(this.d, this.a);
    }

    public void setMaskType(MaskType maskType) {
        this.g = maskType;
    }

    public void setCornerRadius(float[] fArr) {
        if (fArr.length < 4) {
            throw new IllegalArgumentException("Expected radius size 4, got: " + fArr.length);
        }
        for (int i = 0; i < this.f.length; i++) {
            this.f[i] = fArr[i / 2];
        }
        setMaskType(MaskType.RoundRect);
    }

    public float[] getCornerRadius() {
        return this.f;
    }
}
