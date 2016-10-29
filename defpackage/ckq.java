package defpackage;

import com.twitter.util.SynchronizedDateFormat;
import com.twitter.util.math.Size;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: Twttr */
/* renamed from: ckq */
public class ckq {
    public static final DateFormat a;

    static {
        a = new SynchronizedDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.US);
        a.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public static Size a(float[] fArr, float f, double d) {
        float f2 = fArr[0];
        float f3 = fArr[3];
        int round = (int) Math.round(Math.sqrt((double) ((f2 * f2) + (f3 * f3))) * ((double) f));
        return Size.a(round, (int) Math.round(((double) round) * d));
    }

    public static float a(float[] fArr) {
        return (float) Math.toDegrees(Math.atan2((double) fArr[3], (double) fArr[0]));
    }

    public static float a(float[] fArr, float f) {
        return fArr[2] * f;
    }

    public static float b(float[] fArr, float f) {
        return fArr[5] * f;
    }
}
