package tv.periscope.android.ui.love;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Path;
import android.view.View;
import android.view.ViewGroup;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import tv.periscope.android.library.i;
import tv.periscope.android.library.l;

/* compiled from: Twttr */
public abstract class a {
    private static final Random a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;

    public abstract void a();

    public abstract void a(HeartView heartView, ViewGroup viewGroup, boolean z);

    static {
        a = new Random();
    }

    public a(Context context) {
        Resources resources = context.getResources();
        this.b = resources.getDimensionPixelOffset(i.ps__heart_anim_init_x);
        this.c = resources.getDimensionPixelOffset(i.ps__heart_anim_init_y);
        this.d = resources.getDimensionPixelOffset(i.ps__heart_anim_bezier_x_rand);
        this.e = resources.getDimensionPixelOffset(i.ps__heart_anim_length);
        this.f = resources.getDimensionPixelOffset(i.ps__heart_anim_length_rand);
        this.g = resources.getInteger(l.ps__heart_anim_bezier_factor);
        this.h = resources.getDimensionPixelOffset(i.ps__heart_anim_x_point_factor);
    }

    public Path a(AtomicInteger atomicInteger, HeartView heartView, View view, int i) {
        Random random = a;
        int nextInt = random.nextInt(this.d);
        int nextInt2 = random.nextInt(this.d);
        int height = (view.getHeight() - this.c) - (heartView.getHeartHeight() / 4);
        int nextInt3 = random.nextInt(this.f) + ((atomicInteger.intValue() * 15) + (this.e * i));
        int i2 = (int) (((float) nextInt3) / ((float) this.g));
        int i3 = this.h + nextInt;
        int i4 = this.h + nextInt2;
        int i5 = height - nextInt3;
        int i6 = height - (nextInt3 / 2);
        Path path = new Path();
        path.moveTo((float) this.b, (float) height);
        path.cubicTo((float) this.b, (float) (height - i2), (float) i3, (float) (i6 + i2), (float) i3, (float) i6);
        path.moveTo((float) i3, (float) i6);
        path.cubicTo((float) i3, (float) (i6 - i2), (float) i4, (float) (i5 + i2), (float) i4, (float) i5);
        return path;
    }

    public float b() {
        return (a.nextFloat() * 28.6f) - 14.3f;
    }
}
