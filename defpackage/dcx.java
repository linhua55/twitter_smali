package defpackage;

import android.content.res.Resources;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import tv.periscope.android.library.o;

/* compiled from: Twttr */
/* renamed from: dcx */
public final class dcx {
    private static final DecimalFormat a;
    private static final DecimalFormatSymbols b;

    static {
        a = new DecimalFormat();
        b = new DecimalFormatSymbols();
    }

    public static String a(Resources resources, long j, boolean z) {
        a.setDecimalFormatSymbols(b);
        if (!z) {
            return a.format(j);
        }
        if (((double) j) / 1000000.0d >= 1.0d) {
            return resources.getString(o.ps__number_format_millions, new Object[]{a.format(Math.floor(r0 * 10.0d) / 10.0d)});
        }
        if (((double) j) / 1000.0d < 1.0d) {
            return a.format(j);
        }
        return resources.getString(o.ps__number_format_thousands, new Object[]{a.format(Math.floor(r0 * 10.0d) / 10.0d)});
    }
}
