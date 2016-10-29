package tv.periscope.android.ui.love;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import dce;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import tv.periscope.android.api.Constants;
import tv.periscope.android.library.j;

/* compiled from: Twttr */
public class k {
    private static final Random a;
    private final Context b;
    private final List<String> c;
    private final Map<String, Bitmap> d;
    private final Map<String, Bitmap> e;
    private final String f;
    private int g;
    private double h;
    private String i;
    private dce j;
    private Bitmap k;
    private Bitmap l;

    static {
        a = new Random();
    }

    public k(Context context) {
        this.b = context;
        this.c = new ArrayList();
        this.d = new HashMap();
        this.e = new HashMap();
        this.f = b(context.getResources().getDisplayMetrics().densityDpi);
        this.h = ((double) context.getResources().getDisplayMetrics().densityDpi) / ((double) this.g);
    }

    private String b(int i) {
        switch (i) {
            case 120:
            case 160:
            case 240:
                this.g = 240;
                return "drawable-hdpi";
            case 320:
                this.g = 320;
                return "drawable-xhdpi";
            default:
                this.g = 480;
                return "drawable-xxhdpi";
        }
    }

    public void a(String str, List<String> list) {
        this.i = str;
        this.c.clear();
        if (list != null) {
            this.c.addAll(list);
        }
    }

    public void a(dce dce) {
        this.j = dce;
    }

    public HeartView a(int i) {
        Bitmap bitmap;
        Bitmap bitmap2 = null;
        HeartView heartView = new HeartView(this.b);
        if (this.c.isEmpty() || a.nextInt(6) != 0) {
            bitmap = null;
        } else {
            String str = (String) this.c.get(a.nextInt(this.c.size()));
            String a = a(str, this.f, "border");
            String a2 = a(str, this.f, "fill");
            bitmap = (Bitmap) this.d.get(a);
            bitmap2 = (Bitmap) this.e.get(a2);
            if (bitmap == null) {
                this.j.a(this.b, a, this.d, this.h);
            }
            if (bitmap2 == null) {
                this.j.a(this.b, a2, this.e, this.h);
            }
        }
        if (bitmap == null || bitmap2 == null) {
            if (this.k == null) {
                this.k = BitmapFactory.decodeResource(this.b.getResources(), j.ps__heart_border);
            }
            if (this.l == null) {
                this.l = BitmapFactory.decodeResource(this.b.getResources(), j.ps__heart_fill);
            }
            heartView.a(i, this.k, this.l);
        } else {
            heartView.a(i, bitmap, bitmap2);
        }
        return heartView;
    }

    private String a(String str, String str2, String str3) {
        return String.format(Constants.API_HEART_THEME_URL_FORMAT, new Object[]{this.i, str2, str, str3});
    }
}
