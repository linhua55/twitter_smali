package io.fabric.sdk.android;

import android.os.SystemClock;
import android.text.TextUtils;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.Closeable;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: Twttr */
class k implements Callable<Map<String, r>> {
    final String a;

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    k(String str) {
        this.a = str;
    }

    public Map<String, r> a() throws Exception {
        Map<String, r> hashMap = new HashMap();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        ZipFile b = b();
        Enumeration entries = b.entries();
        int i = 0;
        while (entries.hasMoreElements()) {
            int i2 = i + 1;
            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
            if (zipEntry.getName().startsWith("fabric/") && zipEntry.getName().length() > "fabric/".length()) {
                r a = a(zipEntry, b);
                if (a != null) {
                    hashMap.put(a.a(), a);
                    f.h().b("Fabric", String.format("Found kit:[%s] version:[%s]", new Object[]{a.a(), a.b()}));
                }
            }
            i = i2;
        }
        if (b != null) {
            try {
                b.close();
            } catch (IOException e) {
            }
        }
        f.h().b("Fabric", "finish scanning in " + (SystemClock.elapsedRealtime() - elapsedRealtime) + " reading:" + i);
        return hashMap;
    }

    private r a(ZipEntry zipEntry, ZipFile zipFile) {
        Throwable e;
        Closeable inputStream;
        try {
            inputStream = zipFile.getInputStream(zipEntry);
            try {
                Properties properties = new Properties();
                properties.load(inputStream);
                Object property = properties.getProperty("fabric-identifier");
                Object property2 = properties.getProperty("fabric-version");
                String property3 = properties.getProperty("fabric-build-type");
                if (TextUtils.isEmpty(property) || TextUtils.isEmpty(property2)) {
                    throw new IllegalStateException("Invalid format of fabric file," + zipEntry.getName());
                }
                r rVar = new r(property, property2, property3);
                CommonUtils.a(inputStream);
                return rVar;
            } catch (IOException e2) {
                e = e2;
                try {
                    f.h().e("Fabric", "Error when parsing fabric properties " + zipEntry.getName(), e);
                    CommonUtils.a(inputStream);
                    return null;
                } catch (Throwable th) {
                    e = th;
                    CommonUtils.a(inputStream);
                    throw e;
                }
            }
        } catch (IOException e3) {
            e = e3;
            inputStream = null;
            f.h().e("Fabric", "Error when parsing fabric properties " + zipEntry.getName(), e);
            CommonUtils.a(inputStream);
            return null;
        } catch (Throwable th2) {
            e = th2;
            inputStream = null;
            CommonUtils.a(inputStream);
            throw e;
        }
    }

    protected ZipFile b() throws IOException {
        return new ZipFile(this.a);
    }
}
