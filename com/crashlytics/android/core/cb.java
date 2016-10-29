package com.crashlytics.android.core;

import android.app.ActivityManager.RunningAppProcessInfo;
import android.os.Build.VERSION;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.common.IdManager.DeviceIdentifierType;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
class cb {
    private static final b a;
    private static final b b;

    static {
        a = b.a("0");
        b = b.a("Unity");
    }

    public static void a(CodedOutputStream codedOutputStream, String str, String str2, long j) throws Exception {
        codedOutputStream.a(1, b.a(str2));
        codedOutputStream.a(2, b.a(str));
        codedOutputStream.a(3, j);
    }

    public static void a(CodedOutputStream codedOutputStream, String str, String str2, String str3, String str4, String str5, int i, String str6) throws Exception {
        b a = b.a(str);
        b a2 = b.a(str2);
        b a3 = b.a(str3);
        b a4 = b.a(str4);
        b a5 = b.a(str5);
        b a6 = str6 != null ? b.a(str6) : null;
        codedOutputStream.g(7, 2);
        codedOutputStream.k(a(a, a2, a3, a4, a5, i, a6));
        codedOutputStream.a(1, a);
        codedOutputStream.a(2, a3);
        codedOutputStream.a(3, a4);
        codedOutputStream.g(5, 2);
        codedOutputStream.k(a(a2));
        codedOutputStream.a(1, a2);
        codedOutputStream.a(6, a5);
        if (a6 != null) {
            codedOutputStream.a(8, b);
            codedOutputStream.a(9, a6);
        }
        codedOutputStream.b(10, i);
    }

    public static void a(CodedOutputStream codedOutputStream, boolean z) throws Exception {
        b a = b.a(VERSION.RELEASE);
        b a2 = b.a(VERSION.CODENAME);
        codedOutputStream.g(8, 2);
        codedOutputStream.k(a(a, a2, z));
        codedOutputStream.b(1, 3);
        codedOutputStream.a(2, a);
        codedOutputStream.a(3, a2);
        codedOutputStream.a(4, z);
    }

    public static void a(CodedOutputStream codedOutputStream, String str, int i, String str2, int i2, long j, long j2, boolean z, Map<DeviceIdentifierType, String> map, int i3, String str3, String str4) throws Exception {
        b a = b.a(str);
        b a2 = a(str2);
        b a3 = a(str4);
        b a4 = a(str3);
        codedOutputStream.g(9, 2);
        codedOutputStream.k(a(i, a, a2, i2, j, j2, z, (Map) map, i3, a4, a3));
        codedOutputStream.a(1, a);
        codedOutputStream.b(3, i);
        codedOutputStream.a(4, a2);
        codedOutputStream.a(5, i2);
        codedOutputStream.a(6, j);
        codedOutputStream.a(7, j2);
        codedOutputStream.a(10, z);
        for (Entry entry : map.entrySet()) {
            codedOutputStream.g(11, 2);
            codedOutputStream.k(a((DeviceIdentifierType) entry.getKey(), (String) entry.getValue()));
            codedOutputStream.b(1, ((DeviceIdentifierType) entry.getKey()).protobufIndex);
            codedOutputStream.a(2, b.a((String) entry.getValue()));
        }
        codedOutputStream.a(12, i3);
        if (a4 != null) {
            codedOutputStream.a(13, a4);
        }
        if (a3 != null) {
            codedOutputStream.a(14, a3);
        }
    }

    public static void a(CodedOutputStream codedOutputStream, String str, String str2, String str3) throws Exception {
        if (str == null) {
            str = TtmlNode.ANONYMOUS_REGION_ID;
        }
        b a = b.a(str);
        b a2 = a(str2);
        b a3 = a(str3);
        int b = 0 + CodedOutputStream.b(1, a);
        if (str2 != null) {
            b += CodedOutputStream.b(2, a2);
        }
        if (str3 != null) {
            b += CodedOutputStream.b(3, a3);
        }
        codedOutputStream.g(6, 2);
        codedOutputStream.k(b);
        codedOutputStream.a(1, a);
        if (str2 != null) {
            codedOutputStream.a(2, a2);
        }
        if (str3 != null) {
            codedOutputStream.a(3, a3);
        }
    }

    public static void a(CodedOutputStream codedOutputStream, long j, String str, Throwable th, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, Map<String, String> map, ba baVar, RunningAppProcessInfo runningAppProcessInfo, int i, String str2, String str3, float f, int i2, boolean z, long j2, long j3) throws Exception {
        b bVar;
        b a = b.a(str2);
        if (str3 == null) {
            bVar = null;
        } else {
            bVar = b.a(str3.replace("-", TtmlNode.ANONYMOUS_REGION_ID));
        }
        b a2 = baVar.a();
        if (a2 == null) {
            f.h().a("CrashlyticsCore", "No log data to include with this event.");
        }
        baVar.b();
        codedOutputStream.g(10, 2);
        codedOutputStream.k(a(j, str, th, thread, stackTraceElementArr, threadArr, (List) list, 8, (Map) map, runningAppProcessInfo, i, a, bVar, f, i2, z, j2, j3, a2));
        codedOutputStream.a(1, j);
        codedOutputStream.a(2, b.a(str));
        a(codedOutputStream, th, thread, stackTraceElementArr, threadArr, (List) list, 8, a, bVar, (Map) map, runningAppProcessInfo, i);
        a(codedOutputStream, f, i2, z, i, j2, j3);
        a(codedOutputStream, a2);
    }

    private static void a(CodedOutputStream codedOutputStream, Throwable th, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, b bVar, b bVar2, Map<String, String> map, RunningAppProcessInfo runningAppProcessInfo, int i2) throws Exception {
        codedOutputStream.g(3, 2);
        codedOutputStream.k(a(th, thread, stackTraceElementArr, threadArr, (List) list, i, bVar, bVar2, (Map) map, runningAppProcessInfo, i2));
        a(codedOutputStream, th, thread, stackTraceElementArr, threadArr, list, i, bVar, bVar2);
        if (!(map == null || map.isEmpty())) {
            a(codedOutputStream, (Map) map);
        }
        if (runningAppProcessInfo != null) {
            codedOutputStream.a(3, runningAppProcessInfo.importance != 100);
        }
        codedOutputStream.a(4, i2);
    }

    private static void a(CodedOutputStream codedOutputStream, Throwable th, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, b bVar, b bVar2) throws Exception {
        codedOutputStream.g(1, 2);
        codedOutputStream.k(a(th, thread, stackTraceElementArr, threadArr, (List) list, i, bVar, bVar2));
        a(codedOutputStream, thread, stackTraceElementArr, 4, true);
        int length = threadArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            a(codedOutputStream, threadArr[i2], (StackTraceElement[]) list.get(i2), 0, false);
        }
        a(codedOutputStream, th, 1, i, 2);
        codedOutputStream.g(3, 2);
        codedOutputStream.k(a());
        codedOutputStream.a(1, a);
        codedOutputStream.a(2, a);
        codedOutputStream.a(3, 0);
        codedOutputStream.g(4, 2);
        codedOutputStream.k(a(bVar, bVar2));
        codedOutputStream.a(1, 0);
        codedOutputStream.a(2, 0);
        codedOutputStream.a(3, bVar);
        if (bVar2 != null) {
            codedOutputStream.a(4, bVar2);
        }
    }

    private static void a(CodedOutputStream codedOutputStream, Map<String, String> map) throws Exception {
        for (Entry entry : map.entrySet()) {
            codedOutputStream.g(2, 2);
            codedOutputStream.k(a((String) entry.getKey(), (String) entry.getValue()));
            codedOutputStream.a(1, b.a((String) entry.getKey()));
            String str = (String) entry.getValue();
            if (str == null) {
                str = TtmlNode.ANONYMOUS_REGION_ID;
            }
            codedOutputStream.a(2, b.a(str));
        }
    }

    private static void a(CodedOutputStream codedOutputStream, Throwable th, int i, int i2, int i3) throws Exception {
        int i4 = 0;
        codedOutputStream.g(i3, 2);
        codedOutputStream.k(a(th, 1, i2));
        codedOutputStream.a(1, b.a(th.getClass().getName()));
        String localizedMessage = th.getLocalizedMessage();
        if (localizedMessage != null) {
            codedOutputStream.a(3, b.a(localizedMessage));
        }
        for (StackTraceElement a : th.getStackTrace()) {
            a(codedOutputStream, 4, a, true);
        }
        Throwable cause = th.getCause();
        if (cause == null) {
            return;
        }
        if (i < i2) {
            a(codedOutputStream, cause, i + 1, i2, 6);
            return;
        }
        while (cause != null) {
            cause = cause.getCause();
            i4++;
        }
        codedOutputStream.a(7, i4);
    }

    private static void a(CodedOutputStream codedOutputStream, Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) throws Exception {
        codedOutputStream.g(1, 2);
        codedOutputStream.k(a(thread, stackTraceElementArr, i, z));
        codedOutputStream.a(1, b.a(thread.getName()));
        codedOutputStream.a(2, i);
        for (StackTraceElement a : stackTraceElementArr) {
            a(codedOutputStream, 3, a, z);
        }
    }

    private static void a(CodedOutputStream codedOutputStream, int i, StackTraceElement stackTraceElement, boolean z) throws Exception {
        int i2 = 4;
        codedOutputStream.g(i, 2);
        codedOutputStream.k(a(stackTraceElement, z));
        if (stackTraceElement.isNativeMethod()) {
            codedOutputStream.a(1, (long) Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            codedOutputStream.a(1, 0);
        }
        codedOutputStream.a(2, b.a(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            codedOutputStream.a(3, b.a(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            codedOutputStream.a(4, (long) stackTraceElement.getLineNumber());
        }
        if (!z) {
            i2 = 0;
        }
        codedOutputStream.a(5, i2);
    }

    private static void a(CodedOutputStream codedOutputStream, float f, int i, boolean z, int i2, long j, long j2) throws Exception {
        codedOutputStream.g(5, 2);
        codedOutputStream.k(a(f, i, z, i2, j, j2));
        codedOutputStream.a(1, f);
        codedOutputStream.c(2, i);
        codedOutputStream.a(3, z);
        codedOutputStream.a(4, i2);
        codedOutputStream.a(5, j);
        codedOutputStream.a(6, j2);
    }

    private static void a(CodedOutputStream codedOutputStream, b bVar) throws Exception {
        if (bVar != null) {
            codedOutputStream.g(6, 2);
            codedOutputStream.k(b(bVar));
            codedOutputStream.a(1, bVar);
        }
    }

    private static int a(b bVar, b bVar2, b bVar3, b bVar4, b bVar5, int i, b bVar6) {
        int b = ((0 + CodedOutputStream.b(1, bVar)) + CodedOutputStream.b(2, bVar3)) + CodedOutputStream.b(3, bVar4);
        int a = a(bVar2);
        b = (b + (a + (CodedOutputStream.j(5) + CodedOutputStream.l(a)))) + CodedOutputStream.b(6, bVar5);
        if (bVar6 != null) {
            b = (b + CodedOutputStream.b(8, b)) + CodedOutputStream.b(9, bVar6);
        }
        return b + CodedOutputStream.e(10, i);
    }

    private static int a(b bVar) {
        return 0 + CodedOutputStream.b(1, bVar);
    }

    private static int a(b bVar, b bVar2, boolean z) {
        return (((0 + CodedOutputStream.e(1, 3)) + CodedOutputStream.b(2, bVar)) + CodedOutputStream.b(3, bVar2)) + CodedOutputStream.b(4, z);
    }

    private static int a(DeviceIdentifierType deviceIdentifierType, String str) {
        return CodedOutputStream.e(1, deviceIdentifierType.protobufIndex) + CodedOutputStream.b(2, b.a(str));
    }

    private static int a(int i, b bVar, b bVar2, int i2, long j, long j2, boolean z, Map<DeviceIdentifierType, String> map, int i3, b bVar3, b bVar4) {
        int i4;
        int i5;
        int e = CodedOutputStream.e(3, i) + (0 + CodedOutputStream.b(1, bVar));
        if (bVar2 == null) {
            i4 = 0;
        } else {
            i4 = CodedOutputStream.b(4, bVar2);
        }
        i4 = ((((i4 + e) + CodedOutputStream.d(5, i2)) + CodedOutputStream.b(6, j)) + CodedOutputStream.b(7, j2)) + CodedOutputStream.b(10, z);
        if (map != null) {
            i5 = i4;
            for (Entry entry : map.entrySet()) {
                i4 = a((DeviceIdentifierType) entry.getKey(), (String) entry.getValue());
                i5 = (i4 + (CodedOutputStream.j(11) + CodedOutputStream.l(i4))) + i5;
            }
        } else {
            i5 = i4;
        }
        return (bVar4 == null ? 0 : CodedOutputStream.b(14, bVar4)) + ((i5 + CodedOutputStream.d(12, i3)) + (bVar3 == null ? 0 : CodedOutputStream.b(13, bVar3)));
    }

    private static int a(b bVar, b bVar2) {
        int b = ((0 + CodedOutputStream.b(1, 0)) + CodedOutputStream.b(2, 0)) + CodedOutputStream.b(3, bVar);
        if (bVar2 != null) {
            return b + CodedOutputStream.b(4, bVar2);
        }
        return b;
    }

    private static int a(long j, String str, Throwable th, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, Map<String, String> map, RunningAppProcessInfo runningAppProcessInfo, int i2, b bVar, b bVar2, float f, int i3, boolean z, long j2, long j3, b bVar3) {
        int b = (0 + CodedOutputStream.b(1, j)) + CodedOutputStream.b(2, b.a(str));
        int a = a(th, thread, stackTraceElementArr, threadArr, (List) list, i, bVar, bVar2, (Map) map, runningAppProcessInfo, i2);
        int j4 = b + (a + (CodedOutputStream.j(3) + CodedOutputStream.l(a)));
        a = a(f, i3, z, i2, j2, j3);
        a = (a + (CodedOutputStream.j(5) + CodedOutputStream.l(a))) + j4;
        if (bVar3 == null) {
            return a;
        }
        int b2 = b(bVar3);
        return a + (b2 + (CodedOutputStream.j(6) + CodedOutputStream.l(b2)));
    }

    private static int a(Throwable th, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, b bVar, b bVar2, Map<String, String> map, RunningAppProcessInfo runningAppProcessInfo, int i2) {
        int a = a(th, thread, stackTraceElementArr, threadArr, (List) list, i, bVar, bVar2);
        int j = 0 + (a + (CodedOutputStream.j(1) + CodedOutputStream.l(a)));
        if (map != null) {
            int i3 = j;
            for (Entry entry : map.entrySet()) {
                j = a((String) entry.getKey(), (String) entry.getValue());
                i3 = (j + (CodedOutputStream.j(2) + CodedOutputStream.l(j))) + i3;
            }
            a = i3;
        } else {
            a = j;
        }
        if (runningAppProcessInfo != null) {
            j = CodedOutputStream.b(3, runningAppProcessInfo.importance != 100) + a;
        } else {
            j = a;
        }
        return j + CodedOutputStream.d(4, i2);
    }

    private static int a(Throwable th, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, b bVar, b bVar2) {
        int a;
        int a2 = a(thread, stackTraceElementArr, 4, true);
        a2 = (a2 + (CodedOutputStream.j(1) + CodedOutputStream.l(a2))) + 0;
        int length = threadArr.length;
        int i2 = a2;
        for (a2 = 0; a2 < length; a2++) {
            a = a(threadArr[a2], (StackTraceElement[]) list.get(a2), 0, false);
            i2 += a + (CodedOutputStream.j(1) + CodedOutputStream.l(a));
        }
        a = a(th, 1, i);
        a = (a + (CodedOutputStream.j(2) + CodedOutputStream.l(a))) + i2;
        a2 = a();
        a += a2 + (CodedOutputStream.j(3) + CodedOutputStream.l(a2));
        a2 = a(bVar, bVar2);
        return a + (a2 + (CodedOutputStream.j(3) + CodedOutputStream.l(a2)));
    }

    private static int a(String str, String str2) {
        int b = CodedOutputStream.b(1, b.a(str));
        if (str2 == null) {
            str2 = TtmlNode.ANONYMOUS_REGION_ID;
        }
        return b + CodedOutputStream.b(2, b.a(str2));
    }

    private static int a(float f, int i, boolean z, int i2, long j, long j2) {
        return (((((0 + CodedOutputStream.b(1, f)) + CodedOutputStream.f(2, i)) + CodedOutputStream.b(3, z)) + CodedOutputStream.d(4, i2)) + CodedOutputStream.b(5, j)) + CodedOutputStream.b(6, j2);
    }

    private static int b(b bVar) {
        return CodedOutputStream.b(1, bVar);
    }

    private static int a(Throwable th, int i, int i2) {
        int i3 = 0;
        int b = CodedOutputStream.b(1, b.a(th.getClass().getName())) + 0;
        String localizedMessage = th.getLocalizedMessage();
        if (localizedMessage != null) {
            b += CodedOutputStream.b(3, b.a(localizedMessage));
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i4 = 0;
        while (i4 < length) {
            int a = a(stackTrace[i4], true);
            i4++;
            b = (a + (CodedOutputStream.j(4) + CodedOutputStream.l(a))) + b;
        }
        Throwable cause = th.getCause();
        if (cause == null) {
            return b;
        }
        if (i < i2) {
            i3 = a(cause, i + 1, i2);
            return b + (i3 + (CodedOutputStream.j(6) + CodedOutputStream.l(i3)));
        }
        while (cause != null) {
            cause = cause.getCause();
            i3++;
        }
        return b + CodedOutputStream.d(7, i3);
    }

    private static int a() {
        return ((0 + CodedOutputStream.b(1, a)) + CodedOutputStream.b(2, a)) + CodedOutputStream.b(3, 0);
    }

    private static int a(StackTraceElement stackTraceElement, boolean z) {
        int b;
        int i;
        if (stackTraceElement.isNativeMethod()) {
            b = CodedOutputStream.b(1, (long) Math.max(stackTraceElement.getLineNumber(), 0)) + 0;
        } else {
            b = CodedOutputStream.b(1, 0) + 0;
        }
        b += CodedOutputStream.b(2, b.a(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            b += CodedOutputStream.b(3, b.a(stackTraceElement.getFileName()));
        }
        if (stackTraceElement.isNativeMethod() || stackTraceElement.getLineNumber() <= 0) {
            i = b;
        } else {
            i = b + CodedOutputStream.b(4, (long) stackTraceElement.getLineNumber());
        }
        return CodedOutputStream.d(5, z ? 2 : 0) + i;
    }

    private static int a(Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) {
        int d = CodedOutputStream.d(2, i) + CodedOutputStream.b(1, b.a(thread.getName()));
        for (StackTraceElement a : stackTraceElementArr) {
            int a2 = a(a, z);
            d += a2 + (CodedOutputStream.j(3) + CodedOutputStream.l(a2));
        }
        return d;
    }

    private static b a(String str) {
        return str == null ? null : b.a(str);
    }
}
