package defpackage;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.v7.recyclerview.BuildConfig;
import cwo;
import io.fabric.sdk.android.f;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* compiled from: Twttr */
/* renamed from: af */
public class af implements cwo<String> {
    public /* synthetic */ Object c(Context context) throws Exception {
        return a(context);
    }

    public String a(Context context) throws Exception {
        long nanoTime = System.nanoTime();
        String str = BuildConfig.VERSION_NAME;
        ZipInputStream zipInputStream = null;
        try {
            zipInputStream = b(context);
            str = a(zipInputStream);
            if (zipInputStream != null) {
                try {
                    zipInputStream.close();
                } catch (Throwable e) {
                    f.h().e("Beta", "Failed to close the APK file", e);
                }
            }
        } catch (Throwable e2) {
            f.h().e("Beta", "Failed to find this app in the PackageManager", e2);
            if (zipInputStream != null) {
                try {
                    zipInputStream.close();
                } catch (Throwable e22) {
                    f.h().e("Beta", "Failed to close the APK file", e22);
                }
            }
        } catch (Throwable e222) {
            f.h().e("Beta", "Failed to find the APK file", e222);
            if (zipInputStream != null) {
                try {
                    zipInputStream.close();
                } catch (Throwable e2222) {
                    f.h().e("Beta", "Failed to close the APK file", e2222);
                }
            }
        } catch (Throwable e22222) {
            f.h().e("Beta", "Failed to read the APK file", e22222);
            if (zipInputStream != null) {
                try {
                    zipInputStream.close();
                } catch (Throwable e222222) {
                    f.h().e("Beta", "Failed to close the APK file", e222222);
                }
            }
        } catch (Throwable th) {
            if (zipInputStream != null) {
                try {
                    zipInputStream.close();
                } catch (Throwable e2222222) {
                    f.h().e("Beta", "Failed to close the APK file", e2222222);
                }
            }
        }
        f.h().a("Beta", "Beta device token load took " + (((double) (System.nanoTime() - nanoTime)) / 1000000.0d) + "ms");
        return str;
    }

    ZipInputStream b(Context context) throws NameNotFoundException, FileNotFoundException {
        return new ZipInputStream(new FileInputStream(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).sourceDir));
    }

    String a(ZipInputStream zipInputStream) throws IOException {
        String name;
        do {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                return BuildConfig.VERSION_NAME;
            }
            name = nextEntry.getName();
        } while (!name.startsWith("assets/com.crashlytics.android.beta/dirfactor-device-token="));
        return name.substring("assets/com.crashlytics.android.beta/dirfactor-device-token=".length(), name.length() - 1);
    }
}
