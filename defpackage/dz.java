package defpackage;

import android.os.Build.VERSION;
import cb;
import com.facebook.common.memory.MemoryTrimType;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: dz */
public class dz implements el {
    public double a(MemoryTrimType memoryTrimType) {
        switch (ea.a[memoryTrimType.ordinal()]) {
            case p.View_android_focusable /*1*/:
                if (VERSION.SDK_INT >= 21) {
                    return MemoryTrimType.a.a();
                }
                return 0.0d;
            case p.View_paddingStart /*2*/:
            case p.View_paddingEnd /*3*/:
            case p.View_theme /*4*/:
                return 1.0d;
            default:
                cb.c("BitmapMemoryCacheTrimStrategy", "unknown trim type: %s", new Object[]{memoryTrimType});
                return 0.0d;
        }
    }
}
