package defpackage;

import cb;
import com.facebook.common.memory.MemoryTrimType;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: ez */
public class ez implements el {
    public double a(MemoryTrimType memoryTrimType) {
        switch (fa.a[memoryTrimType.ordinal()]) {
            case p.View_android_focusable /*1*/:
                return 0.0d;
            case p.View_paddingStart /*2*/:
            case p.View_paddingEnd /*3*/:
            case p.View_theme /*4*/:
                return 1.0d;
            default:
                cb.c("NativeMemoryCacheTrimStrategy", "unknown trim type: %s", new Object[]{memoryTrimType});
                return 0.0d;
        }
    }
}
