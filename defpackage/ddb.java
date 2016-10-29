package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;

/* compiled from: Twttr */
/* renamed from: ddb */
public final class ddb {
    public static Point a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static int b(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        if (point.x <= point.y) {
            return 1;
        }
        return 2;
    }

    public static boolean c(Context context) {
        return ddb.b(context) == 1;
    }
}
