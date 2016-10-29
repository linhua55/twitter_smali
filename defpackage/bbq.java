package defpackage;

import com.twitter.config.AppConfig;
import com.twitter.util.m;
import java.text.NumberFormat;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: bbq */
public class bbq extends bbl {
    public bbq(OutOfMemoryError outOfMemoryError) {
        a(outOfMemoryError);
        try {
            NumberFormat integerInstance = NumberFormat.getIntegerInstance(Locale.ENGLISH);
            StringBuilder stringBuilder = new StringBuilder(100);
            Runtime runtime = Runtime.getRuntime();
            stringBuilder.append("JVM Update: ").append(m.e(m.b() - AppConfig.m().g())).append("\nHeap Max: ").append(integerInstance.format(runtime.maxMemory())).append("\nHeap Total: ").append(integerInstance.format(runtime.totalMemory())).append("\nHeap Used: ").append(integerInstance.format(runtime.totalMemory() - runtime.freeMemory())).append("\nHeap Free: ").append(integerInstance.format(runtime.freeMemory()));
            a("OutOfMemoryErrorLog.java_report", stringBuilder.toString());
        } catch (Throwable th) {
        }
    }
}
