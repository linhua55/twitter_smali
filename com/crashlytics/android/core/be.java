package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
class be {
    private static final Charset a;
    private final File b;

    static {
        a = Charset.forName(Util.UTF_8);
    }

    public be(File file) {
        this.b = file;
    }

    public void a(String str, ce ceVar) {
        Closeable bufferedWriter;
        Throwable e;
        File c = c(str);
        Closeable closeable = null;
        try {
            String a = a(ceVar);
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(c), a));
            try {
                bufferedWriter.write(a);
                bufferedWriter.flush();
                CommonUtils.a(bufferedWriter, "Failed to close user metadata file.");
            } catch (Exception e2) {
                e = e2;
                try {
                    f.h().e("CrashlyticsCore", "Error serializing user metadata.", e);
                    CommonUtils.a(bufferedWriter, "Failed to close user metadata file.");
                } catch (Throwable th) {
                    e = th;
                    closeable = bufferedWriter;
                    CommonUtils.a(closeable, "Failed to close user metadata file.");
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            bufferedWriter = null;
            f.h().e("CrashlyticsCore", "Error serializing user metadata.", e);
            CommonUtils.a(bufferedWriter, "Failed to close user metadata file.");
        } catch (Throwable th2) {
            e = th2;
            CommonUtils.a(closeable, "Failed to close user metadata file.");
            throw e;
        }
    }

    public ce a(String str) {
        Throwable e;
        File c = c(str);
        if (!c.exists()) {
            return ce.a;
        }
        Closeable fileInputStream;
        try {
            fileInputStream = new FileInputStream(c);
            try {
                ce e2 = e(CommonUtils.a(fileInputStream));
                CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
                return e2;
            } catch (Exception e3) {
                e = e3;
                try {
                    f.h().e("CrashlyticsCore", "Error deserializing user metadata.", e);
                    CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
                    return ce.a;
                } catch (Throwable th) {
                    e = th;
                    CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
                    throw e;
                }
            }
        } catch (Exception e4) {
            e = e4;
            fileInputStream = null;
            f.h().e("CrashlyticsCore", "Error deserializing user metadata.", e);
            CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
            return ce.a;
        } catch (Throwable th2) {
            e = th2;
            fileInputStream = null;
            CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
            throw e;
        }
    }

    public void a(String str, Map<String, String> map) {
        Throwable e;
        File d = d(str);
        Closeable closeable = null;
        Closeable bufferedWriter;
        try {
            String a = a((Map) map);
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d), a));
            try {
                bufferedWriter.write(a);
                bufferedWriter.flush();
                CommonUtils.a(bufferedWriter, "Failed to close key/value metadata file.");
            } catch (Exception e2) {
                e = e2;
                try {
                    f.h().e("CrashlyticsCore", "Error serializing key/value metadata.", e);
                    CommonUtils.a(bufferedWriter, "Failed to close key/value metadata file.");
                } catch (Throwable th) {
                    e = th;
                    closeable = bufferedWriter;
                    CommonUtils.a(closeable, "Failed to close key/value metadata file.");
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            bufferedWriter = null;
            f.h().e("CrashlyticsCore", "Error serializing key/value metadata.", e);
            CommonUtils.a(bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Throwable th2) {
            e = th2;
            CommonUtils.a(closeable, "Failed to close key/value metadata file.");
            throw e;
        }
    }

    public Map<String, String> b(String str) {
        Closeable fileInputStream;
        Throwable e;
        File d = d(str);
        if (!d.exists()) {
            return Collections.emptyMap();
        }
        try {
            fileInputStream = new FileInputStream(d);
            try {
                Map<String, String> f = f(CommonUtils.a(fileInputStream));
                CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
                return f;
            } catch (Exception e2) {
                e = e2;
                try {
                    f.h().e("CrashlyticsCore", "Error deserializing user metadata.", e);
                    CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
                    return Collections.emptyMap();
                } catch (Throwable th) {
                    e = th;
                    CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            f.h().e("CrashlyticsCore", "Error deserializing user metadata.", e);
            CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
            return Collections.emptyMap();
        } catch (Throwable th2) {
            e = th2;
            fileInputStream = null;
            CommonUtils.a(fileInputStream, "Failed to close user metadata file.");
            throw e;
        }
    }

    private File c(String str) {
        return new File(this.b, str + "user" + ".meta");
    }

    private File d(String str) {
        return new File(this.b, str + "keys" + ".meta");
    }

    private static ce e(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        return new ce(a(jSONObject, "userId"), a(jSONObject, "userName"), a(jSONObject, "userEmail"));
    }

    private static String a(ce ceVar) throws JSONException {
        return new bf(ceVar).toString();
    }

    private static Map<String, String> f(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        Map<String, String> hashMap = new HashMap();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str2 = (String) keys.next();
            hashMap.put(str2, a(jSONObject, str2));
        }
        return hashMap;
    }

    private static String a(Map<String, String> map) throws JSONException {
        return new JSONObject(map).toString();
    }

    private static String a(JSONObject jSONObject, String str) {
        return !jSONObject.isNull(str) ? jSONObject.optString(str, null) : null;
    }
}
