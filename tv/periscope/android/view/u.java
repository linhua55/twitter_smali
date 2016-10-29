package tv.periscope.android.view;

import android.content.Context;
import android.graphics.Typeface;
import defpackage.dcv;
import java.util.HashMap;

/* compiled from: Twttr */
public class u {
    private static final HashMap<String, Typeface> a;

    static {
        a = new HashMap();
    }

    public static Typeface a(Context context, String str) {
        Typeface typeface;
        synchronized (a) {
            if (!a.containsKey(str)) {
                try {
                    a.put(str, Typeface.createFromAsset(context.getAssets(), str));
                } catch (Throwable e) {
                    dcv.b("PsTypefaces", "Could not get cached typeface " + str, e);
                    typeface = null;
                }
            }
            typeface = (Typeface) a.get(str);
        }
        return typeface;
    }
}
