package android.support.v4.os;

import android.os.Environment;
import java.io.File;

/* compiled from: Twttr */
class EnvironmentCompatKitKat {
    EnvironmentCompatKitKat() {
    }

    public static String getStorageState(File file) {
        return Environment.getStorageState(file);
    }
}
