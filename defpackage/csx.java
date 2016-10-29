package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Process;
import com.twitter.util.j;
import cvi;
import java.io.File;

/* compiled from: Twttr */
/* renamed from: csx */
public final class csx {
    public static File a(Context context) {
        j.c();
        cvi.d(new File("/data/anr/traces.txt"));
        Process.sendSignal(Process.myPid(), 3);
        File file = new File("/data/anr/traces.txt");
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
        }
        long j = 1000;
        while (!file.exists()) {
            try {
                Thread.sleep(1000);
                j += 1000;
                if (j > 3000) {
                    return null;
                }
            } catch (InterruptedException e2) {
            }
        }
        File c = cvi.c(context);
        if (c == null) {
            return null;
        }
        File file2 = new File(c, "tfa-traces.txt");
        if (!cvi.b(file, file2)) {
            file2 = null;
        }
        return file2;
    }

    public static void a(Activity activity, File file) {
        if (!activity.isFinishing()) {
            String str = "[twitter-android thread dump]";
            csw.a(activity, file, "[twitter-android thread dump]", 5000);
        }
    }

    public static void b(Context context) {
        j.c();
        File c = cvi.c(context);
        if (c != null) {
            cvi.d(new File(c, "tfa-traces.txt"));
        }
    }
}
