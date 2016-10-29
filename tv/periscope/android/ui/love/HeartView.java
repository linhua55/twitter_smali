package tv.periscope.android.ui.love;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.widget.ImageView;
import tv.periscope.android.library.j;

/* compiled from: Twttr */
public class HeartView extends ImageView {
    private static Paint a;
    private static SparseArray<PorterDuffColorFilter> b;
    private int c;
    private int d;
    private int e;

    static {
        a = new Paint(3);
        b = new SparseArray();
    }

    public HeartView(Context context) {
        super(context);
        a();
    }

    public HeartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public HeartView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        this.c = j.ps__heart_border;
        this.d = j.ps__heart_fill;
        setImageResource(this.c);
    }

    public void a(int i, Bitmap bitmap, Bitmap bitmap2) {
        setImageDrawable(new BitmapDrawable(getResources(), b(i, bitmap, bitmap2)));
    }

    public void a(int i, int i2, int i3) {
        this.c = i2;
        this.d = i3;
        setColor(i);
    }

    public void setColor(int i) {
        Resources resources = getResources();
        setImageDrawable(new BitmapDrawable(getResources(), b(i, BitmapFactory.decodeResource(resources, this.c), BitmapFactory.decodeResource(resources, this.d))));
    }

    public int getHeartHeight() {
        return this.e;
    }

    private Bitmap b(int i, Bitmap bitmap, Bitmap bitmap2) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = a;
        float width = ((float) (bitmap.getWidth() - bitmap2.getWidth())) / 2.0f;
        float height = ((float) (bitmap.getHeight() - bitmap2.getHeight())) / 2.0f;
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        ColorFilter colorFilter = (PorterDuffColorFilter) b.get(i);
        if (colorFilter == null) {
            colorFilter = new PorterDuffColorFilter(i, Mode.SRC_ATOP);
            b.put(i, colorFilter);
        }
        paint.setColorFilter(colorFilter);
        canvas.drawBitmap(bitmap2, width, height, paint);
        paint.setColorFilter(null);
        this.e = createBitmap.getHeight();
        return createBitmap;
    }
}
