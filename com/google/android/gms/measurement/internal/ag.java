package com.google.android.gms.measurement.internal;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.vj;
import com.google.android.gms.internal.wr;
import com.google.android.gms.internal.ws;
import com.google.android.gms.internal.wt;
import com.google.android.gms.internal.wu;
import com.google.android.gms.internal.wv;
import com.google.android.gms.internal.ww;
import com.google.android.gms.internal.wx;
import com.google.android.gms.internal.zzsn;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.BitSet;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class ag extends ck {
    ag(bx bxVar) {
        super(bxVar);
    }

    private Object a(int i, Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Float)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf((long) ((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf((long) ((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf((long) ((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
        } else if (obj instanceof Double) {
            return Float.valueOf((float) ((Double) obj).doubleValue());
        } else {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return null;
            }
            String valueOf = String.valueOf(obj);
            return valueOf.length() > i ? z ? valueOf.substring(0, i) : null : valueOf;
        }
    }

    private void a(String str, String str2, int i, Object obj) {
        if (obj == null) {
            s().w().a(str + " value can't be null. Ignoring " + str, str2);
        } else if (!(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                String valueOf = String.valueOf(obj);
                if (valueOf.length() > i) {
                    s().w().a("Ignoring " + str + ". Value is too long. name, value length", str2, Integer.valueOf(valueOf.length()));
                }
            }
        }
    }

    private static void a(StringBuilder stringBuilder, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            stringBuilder.append("  ");
        }
    }

    private static void a(StringBuilder stringBuilder, int i, wv wvVar) {
        if (wvVar != null) {
            a(stringBuilder, i);
            stringBuilder.append("bundle {\n");
            a(stringBuilder, i, "protocol_version", wvVar.a);
            a(stringBuilder, i, "platform", wvVar.i);
            a(stringBuilder, i, "gmp_version", wvVar.q);
            a(stringBuilder, i, "uploading_gmp_version", wvVar.r);
            a(stringBuilder, i, "gmp_app_id", wvVar.y);
            a(stringBuilder, i, "app_id", wvVar.o);
            a(stringBuilder, i, "app_version", wvVar.p);
            a(stringBuilder, i, "dev_cert_hash", wvVar.v);
            a(stringBuilder, i, "app_store", wvVar.n);
            a(stringBuilder, i, "upload_timestamp_millis", wvVar.d);
            a(stringBuilder, i, "start_timestamp_millis", wvVar.e);
            a(stringBuilder, i, "end_timestamp_millis", wvVar.f);
            a(stringBuilder, i, "previous_bundle_start_timestamp_millis", wvVar.g);
            a(stringBuilder, i, "previous_bundle_end_timestamp_millis", wvVar.h);
            a(stringBuilder, i, "app_instance_id", wvVar.u);
            a(stringBuilder, i, "resettable_device_id", wvVar.s);
            a(stringBuilder, i, "limited_ad_tracking", wvVar.t);
            a(stringBuilder, i, "os_version", wvVar.j);
            a(stringBuilder, i, "device_model", wvVar.k);
            a(stringBuilder, i, "user_default_language", wvVar.l);
            a(stringBuilder, i, "time_zone_offset_minutes", wvVar.m);
            a(stringBuilder, i, "bundle_sequential_index", wvVar.w);
            a(stringBuilder, i, "service_upload", wvVar.z);
            a(stringBuilder, i, "health_monitor", wvVar.x);
            a(stringBuilder, i, wvVar.c);
            a(stringBuilder, i, wvVar.A);
            a(stringBuilder, i, wvVar.b);
            a(stringBuilder, i);
            stringBuilder.append("}\n");
        }
    }

    private static void a(StringBuilder stringBuilder, int i, String str, ww wwVar) {
        int i2 = 0;
        if (wwVar != null) {
            int i3;
            int i4;
            int i5 = i + 1;
            a(stringBuilder, i5);
            stringBuilder.append(str);
            stringBuilder.append(" {\n");
            if (wwVar.b != null) {
                a(stringBuilder, i5 + 1);
                stringBuilder.append("results: ");
                long[] jArr = wwVar.b;
                int length = jArr.length;
                i3 = 0;
                i4 = 0;
                while (i3 < length) {
                    Long valueOf = Long.valueOf(jArr[i3]);
                    int i6 = i4 + 1;
                    if (i4 != 0) {
                        stringBuilder.append(", ");
                    }
                    stringBuilder.append(valueOf);
                    i3++;
                    i4 = i6;
                }
                stringBuilder.append('\n');
            }
            if (wwVar.a != null) {
                a(stringBuilder, i5 + 1);
                stringBuilder.append("status: ");
                long[] jArr2 = wwVar.a;
                int length2 = jArr2.length;
                i3 = 0;
                while (i2 < length2) {
                    Long valueOf2 = Long.valueOf(jArr2[i2]);
                    i4 = i3 + 1;
                    if (i3 != 0) {
                        stringBuilder.append(", ");
                    }
                    stringBuilder.append(valueOf2);
                    i2++;
                    i3 = i4;
                }
                stringBuilder.append('\n');
            }
            a(stringBuilder, i5);
            stringBuilder.append("}\n");
        }
    }

    private static void a(StringBuilder stringBuilder, int i, String str, Object obj) {
        if (obj != null) {
            a(stringBuilder, i + 1);
            stringBuilder.append(str);
            stringBuilder.append(": ");
            stringBuilder.append(obj);
            stringBuilder.append('\n');
        }
    }

    private static void a(StringBuilder stringBuilder, int i, wr[] wrVarArr) {
        if (wrVarArr != null) {
            int i2 = i + 1;
            for (wr wrVar : wrVarArr) {
                if (wrVar != null) {
                    a(stringBuilder, i2);
                    stringBuilder.append("audience_membership {\n");
                    a(stringBuilder, i2, "audience_id", wrVar.a);
                    a(stringBuilder, i2, "new_audience", wrVar.d);
                    a(stringBuilder, i2, "current_data", wrVar.b);
                    a(stringBuilder, i2, "previous_data", wrVar.c);
                    a(stringBuilder, i2);
                    stringBuilder.append("}\n");
                }
            }
        }
    }

    private static void a(StringBuilder stringBuilder, int i, ws[] wsVarArr) {
        if (wsVarArr != null) {
            int i2 = i + 1;
            for (ws wsVar : wsVarArr) {
                if (wsVar != null) {
                    a(stringBuilder, i2);
                    stringBuilder.append("event {\n");
                    a(stringBuilder, i2, "name", wsVar.b);
                    a(stringBuilder, i2, "timestamp_millis", wsVar.c);
                    a(stringBuilder, i2, "previous_timestamp_millis", wsVar.d);
                    a(stringBuilder, i2, "count", wsVar.e);
                    a(stringBuilder, i2, wsVar.a);
                    a(stringBuilder, i2);
                    stringBuilder.append("}\n");
                }
            }
        }
    }

    private static void a(StringBuilder stringBuilder, int i, wt[] wtVarArr) {
        if (wtVarArr != null) {
            int i2 = i + 1;
            for (wt wtVar : wtVarArr) {
                if (wtVar != null) {
                    a(stringBuilder, i2);
                    stringBuilder.append("event {\n");
                    a(stringBuilder, i2, "name", wtVar.a);
                    a(stringBuilder, i2, "string_value", wtVar.b);
                    a(stringBuilder, i2, "int_value", wtVar.c);
                    a(stringBuilder, i2, "float_value", wtVar.d);
                    a(stringBuilder, i2);
                    stringBuilder.append("}\n");
                }
            }
        }
    }

    private static void a(StringBuilder stringBuilder, int i, wx[] wxVarArr) {
        if (wxVarArr != null) {
            int i2 = i + 1;
            for (wx wxVar : wxVarArr) {
                if (wxVar != null) {
                    a(stringBuilder, i2);
                    stringBuilder.append("user_property {\n");
                    a(stringBuilder, i2, "set_timestamp_millis", wxVar.a);
                    a(stringBuilder, i2, "name", wxVar.b);
                    a(stringBuilder, i2, "string_value", wxVar.c);
                    a(stringBuilder, i2, "int_value", wxVar.d);
                    a(stringBuilder, i2, "float_value", wxVar.e);
                    a(stringBuilder, i2);
                    stringBuilder.append("}\n");
                }
            }
        }
    }

    public static boolean a(Context context, Class<? extends Service> cls) {
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, cls), 4);
            if (serviceInfo != null && serviceInfo.enabled) {
                return true;
            }
        } catch (NameNotFoundException e) {
        }
        return false;
    }

    public static boolean a(Context context, Class<? extends BroadcastReceiver> cls, boolean z) {
        try {
            ActivityInfo receiverInfo = context.getPackageManager().getReceiverInfo(new ComponentName(context, cls), 2);
            if (receiverInfo != null && receiverInfo.enabled && (!z || receiverInfo.exported)) {
                return true;
            }
        } catch (NameNotFoundException e) {
        }
        return false;
    }

    public static boolean a(Bundle bundle) {
        return bundle.getLong("_c") == 1;
    }

    static boolean a(String str) {
        bm.a(str);
        return str.charAt(0) != '_';
    }

    public static boolean a(String str, String str2) {
        return (str == null && str2 == null) ? true : str == null ? false : str.equals(str2);
    }

    public static boolean a(long[] jArr, int i) {
        return i < jArr.length * 64 && (jArr[i / 64] & (1 << (i % 64))) != 0;
    }

    public static long[] a(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        long[] jArr = new long[length];
        int i = 0;
        while (i < length) {
            jArr[i] = 0;
            int i2 = 0;
            while (i2 < 64 && (i * 64) + i2 < bitSet.length()) {
                if (bitSet.get((i * 64) + i2)) {
                    jArr[i] = jArr[i] | (1 << i2);
                }
                i2++;
            }
            i++;
        }
        return jArr;
    }

    public static String b(wu wuVar) {
        if (wuVar == null) {
            return BuildConfig.VERSION_NAME;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("\nbatch {\n");
        if (wuVar.a != null) {
            for (wv wvVar : wuVar.a) {
                if (wvVar != null) {
                    a(stringBuilder, 1, wvVar);
                }
            }
        }
        stringBuilder.append("}\n");
        return stringBuilder.toString();
    }

    static long c(byte[] bArr) {
        long j = null;
        bm.a((Object) bArr);
        bm.a(bArr.length > 0);
        long j2 = 0;
        int length = bArr.length - 1;
        while (length >= 0 && length >= bArr.length - 8) {
            j2 += (((long) bArr[length]) & 255) << j;
            j += 8;
            length--;
        }
        return j2;
    }

    static MessageDigest e(String str) {
        int i = 0;
        while (i < 2) {
            try {
                MessageDigest instance = MessageDigest.getInstance(str);
                if (instance != null) {
                    return instance;
                }
                i++;
            } catch (NoSuchAlgorithmException e) {
            }
        }
        return null;
    }

    public static boolean g(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    private int h(String str) {
        return "_ldl".equals(str) ? u().z() : u().y();
    }

    public Object a(String str, Object obj) {
        return a(g(str) ? u().x() : u().w(), obj, false);
    }

    public void a(Bundle bundle, String str, Object obj) {
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof Float) {
            bundle.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
        } else if (str != null) {
            s().w().a("Not putting event parameter. Invalid value type. name, type", str, obj.getClass().getSimpleName());
        }
    }

    public void a(wt wtVar, Object obj) {
        bm.a(obj);
        wtVar.b = null;
        wtVar.c = null;
        wtVar.d = null;
        if (obj instanceof String) {
            wtVar.b = (String) obj;
        } else if (obj instanceof Long) {
            wtVar.c = (Long) obj;
        } else if (obj instanceof Float) {
            wtVar.d = (Float) obj;
        } else {
            s().b().a("Ignoring invalid (type) event param value", obj);
        }
    }

    public void a(wx wxVar, Object obj) {
        bm.a(obj);
        wxVar.c = null;
        wxVar.d = null;
        wxVar.e = null;
        if (obj instanceof String) {
            wxVar.c = (String) obj;
        } else if (obj instanceof Long) {
            wxVar.d = (Long) obj;
        } else if (obj instanceof Float) {
            wxVar.e = (Float) obj;
        } else {
            s().b().a("Ignoring invalid (type) user attribute value", obj);
        }
    }

    void a(String str, int i, String str2) {
        if (str2 == null) {
            throw new IllegalArgumentException(str + " name is required and can't be null");
        } else if (str2.length() == 0) {
            throw new IllegalArgumentException(str + " name is required and can't be empty");
        } else {
            char charAt = str2.charAt(0);
            if (Character.isLetter(charAt) || charAt == '_') {
                int i2 = 1;
                while (i2 < str2.length()) {
                    char charAt2 = str2.charAt(i2);
                    if (charAt2 == '_' || Character.isLetterOrDigit(charAt2)) {
                        i2++;
                    } else {
                        throw new IllegalArgumentException(str + " name must consist of letters, digits or _ (underscores)");
                    }
                }
                if (str2.length() > i) {
                    throw new IllegalArgumentException(str + " name is too long. The maximum supported length is " + i);
                }
                return;
            }
            throw new IllegalArgumentException(str + " name must start with a letter or _");
        }
    }

    public boolean a(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(l().a() - j) > j2;
    }

    public byte[] a(wu wuVar) {
        try {
            byte[] bArr = new byte[wuVar.e()];
            zzsn a = zzsn.a(bArr);
            wuVar.a(a);
            a.b();
            return bArr;
        } catch (IOException e) {
            s().b().a("Data loss. Failed to serialize batch", e);
            return null;
        }
    }

    public byte[] a(byte[] bArr) throws IOException {
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            s().b().a("Failed to gzip content", e);
            throw e;
        }
    }

    public void b(String str) {
        a(NotificationCompatApi21.CATEGORY_EVENT, u().c(), str);
    }

    public void b(String str, Object obj) {
        if ("_ldl".equals(str)) {
            a("user attribute referrer", str, h(str), obj);
        } else {
            a("user attribute", str, h(str), obj);
        }
    }

    public byte[] b(byte[] bArr) throws IOException {
        try {
            InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
        } catch (IOException e) {
            s().b().a("Failed to ungzip content", e);
            throw e;
        }
    }

    public Object c(String str, Object obj) {
        return "_ldl".equals(str) ? a(h(str), obj, true) : a(h(str), obj, false);
    }

    public void c(String str) {
        a("user attribute", u().v(), str);
    }

    public long d(byte[] bArr) {
        bm.a((Object) bArr);
        MessageDigest e = e("MD5");
        if (e != null) {
            return c(e.digest(bArr));
        }
        s().b().a("Failed to get MD5");
        return 0;
    }

    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    public void d(String str) {
        a("event param", u().v(), str);
    }

    public /* bridge */ /* synthetic */ void e() {
        super.e();
    }

    public /* bridge */ /* synthetic */ void f() {
        super.f();
    }

    @WorkerThread
    public boolean f(String str) {
        f();
        if (m().checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        s().y().a("Permission not granted", str);
        return false;
    }

    public /* bridge */ /* synthetic */ ai g() {
        return super.g();
    }

    public /* bridge */ /* synthetic */ d h() {
        return super.h();
    }

    public /* bridge */ /* synthetic */ ba i() {
        return super.i();
    }

    public /* bridge */ /* synthetic */ aq j() {
        return super.j();
    }

    public /* bridge */ /* synthetic */ i k() {
        return super.k();
    }

    public /* bridge */ /* synthetic */ vj l() {
        return super.l();
    }

    public /* bridge */ /* synthetic */ Context m() {
        return super.m();
    }

    public /* bridge */ /* synthetic */ ak n() {
        return super.n();
    }

    public /* bridge */ /* synthetic */ ag o() {
        return super.o();
    }

    public /* bridge */ /* synthetic */ bs p() {
        return super.p();
    }

    public /* bridge */ /* synthetic */ u q() {
        return super.q();
    }

    public /* bridge */ /* synthetic */ bt r() {
        return super.r();
    }

    public /* bridge */ /* synthetic */ bc s() {
        return super.s();
    }

    public /* bridge */ /* synthetic */ bn t() {
        return super.t();
    }

    public /* bridge */ /* synthetic */ aj u() {
        return super.u();
    }
}
