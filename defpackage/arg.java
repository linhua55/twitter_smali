package defpackage;

import android.content.Context;
import com.google.android.exoplayer.extractor.ts.PsExtractor;
import java.util.regex.Pattern;

/* compiled from: Twttr */
/* renamed from: arg */
public class arg {
    private static final Pattern d;
    public int a;
    public long b;
    public String c;

    static {
        d = Pattern.compile("[\\s]*processor[\\s]*:[\\s]([0-9]+)");
    }

    public arg(Context context) {
        this.b = Runtime.getRuntime().maxMemory();
        int i = context.getResources().getDisplayMetrics().densityDpi;
        if (i < 160) {
            this.c = "ldpi";
        } else if (i == 160) {
            this.c = "mdpi";
        } else if (i <= PsExtractor.VIDEO_STREAM_MASK) {
            this.c = "hdpi";
        } else if (i <= 320) {
            this.c = "xhdpi";
        } else if (i <= 480) {
            this.c = "xxhdpi";
        } else if (i <= 640) {
            this.c = "xxxhdpi";
        } else {
            this.c = "xxxhdpi+";
        }
        new ari().execute(new Void[0]);
    }
}
