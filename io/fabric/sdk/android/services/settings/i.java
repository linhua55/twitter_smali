package io.fabric.sdk.android.services.settings;

import defpackage.cxg;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import org.json.JSONObject;

/* compiled from: Twttr */
class i implements g {
    private final p a;

    public i(p pVar) {
        this.a = pVar;
    }

    public JSONObject a() {
        Throwable e;
        Closeable closeable = null;
        f.h().a("Fabric", "Reading cached settings...");
        Closeable fileInputStream;
        try {
            JSONObject jSONObject;
            File file = new File(new cxg(this.a).a(), "com.crashlytics.settings.json");
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    jSONObject = new JSONObject(CommonUtils.a((InputStream) fileInputStream));
                    closeable = fileInputStream;
                } catch (Exception e2) {
                    e = e2;
                    try {
                        f.h().e("Fabric", "Failed to fetch cached settings", e);
                        CommonUtils.a(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    } catch (Throwable th) {
                        e = th;
                        closeable = fileInputStream;
                        CommonUtils.a(closeable, "Error while closing settings cache file.");
                        throw e;
                    }
                }
            }
            f.h().a("Fabric", "No cached settings found.");
            jSONObject = null;
            CommonUtils.a(closeable, "Error while closing settings cache file.");
            return jSONObject;
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            f.h().e("Fabric", "Failed to fetch cached settings", e);
            CommonUtils.a(fileInputStream, "Error while closing settings cache file.");
            return null;
        } catch (Throwable th2) {
            e = th2;
            CommonUtils.a(closeable, "Error while closing settings cache file.");
            throw e;
        }
    }

    public void a(long j, JSONObject jSONObject) {
        Closeable fileWriter;
        Throwable e;
        f.h().a("Fabric", "Writing settings to cache file...");
        if (jSONObject != null) {
            Closeable closeable = null;
            try {
                jSONObject.put("expires_at", j);
                fileWriter = new FileWriter(new File(new cxg(this.a).a(), "com.crashlytics.settings.json"));
                try {
                    fileWriter.write(jSONObject.toString());
                    fileWriter.flush();
                    CommonUtils.a(fileWriter, "Failed to close settings writer.");
                } catch (Exception e2) {
                    e = e2;
                    try {
                        f.h().e("Fabric", "Failed to cache settings", e);
                        CommonUtils.a(fileWriter, "Failed to close settings writer.");
                    } catch (Throwable th) {
                        e = th;
                        closeable = fileWriter;
                        CommonUtils.a(closeable, "Failed to close settings writer.");
                        throw e;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                fileWriter = null;
                f.h().e("Fabric", "Failed to cache settings", e);
                CommonUtils.a(fileWriter, "Failed to close settings writer.");
            } catch (Throwable th2) {
                e = th2;
                CommonUtils.a(closeable, "Failed to close settings writer.");
                throw e;
            }
        }
    }
}
