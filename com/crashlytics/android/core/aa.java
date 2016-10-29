package com.crashlytics.android.core;

import am;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import cxf;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.settings.p;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Twttr */
class aa implements UncaughtExceptionHandler {
    static final FilenameFilter a;
    static final Comparator<File> b;
    static final Comparator<File> c;
    static final FilenameFilter d;
    private static final Pattern e;
    private static final Map<String, String> f;
    private static final String[] g;
    private final AtomicInteger h;
    private final UncaughtExceptionHandler i;
    private final cxf j;
    private final AtomicBoolean k;
    private final u l;
    private final IdManager m;
    private final f n;
    private final ba o;
    private final av p;
    private final String q;

    static {
        a = new ab();
        b = new ag();
        c = new ah();
        d = new ai();
        e = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
        f = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
        g = new String[]{"SessionUser", "SessionApp", "SessionOS", "SessionDevice"};
    }

    aa(UncaughtExceptionHandler uncaughtExceptionHandler, u uVar, IdManager idManager, cd cdVar, cxf cxf, f fVar) {
        this.h = new AtomicInteger(0);
        this.i = uncaughtExceptionHandler;
        this.l = uVar;
        this.m = idManager;
        this.n = fVar;
        this.q = cdVar.a();
        this.j = cxf;
        this.k = new AtomicBoolean(false);
        Context E = fVar.E();
        this.o = new ba(E, cxf);
        this.p = new av(E);
    }

    public synchronized void uncaughtException(Thread thread, Throwable th) {
        this.k.set(true);
        try {
            f.h().a("CrashlyticsCore", "Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
            this.p.b();
            this.l.a(new aj(this, new Date(), thread, th));
            f.h().a("CrashlyticsCore", "Crashlytics completed exception processing. Invoking default exception handler.");
            this.i.uncaughtException(thread, th);
            this.k.set(false);
        } catch (Throwable e) {
            f.h().e("CrashlyticsCore", "An error occurred in the uncaught exception handler", e);
            f.h().a("CrashlyticsCore", "Crashlytics completed exception processing. Invoking default exception handler.");
            this.i.uncaughtException(thread, th);
            this.k.set(false);
        } catch (Throwable th2) {
            f.h().a("CrashlyticsCore", "Crashlytics completed exception processing. Invoking default exception handler.");
            this.i.uncaughtException(thread, th);
            this.k.set(false);
        }
    }

    private void a(Date date, Thread thread, Throwable th) throws Exception {
        this.n.A();
        b(date, thread, th);
        d();
        l();
        f();
        if (!this.n.x()) {
            p();
        }
    }

    boolean a() {
        return this.k.get();
    }

    void a(long j, String str) {
        this.l.b(new ak(this, j, str));
    }

    void a(Thread thread, Throwable th) {
        this.l.a(new al(this, new Date(), thread, th));
    }

    void a(String str, String str2, String str3) {
        this.l.b(new am(this, str, str2, str3));
    }

    void a(Map<String, String> map) {
        this.l.b(new an(this, map));
    }

    void b() {
        this.l.b(new ac(this));
    }

    private String j() {
        File[] n = n();
        return n.length > 0 ? a(n[0]) : null;
    }

    private String k() {
        File[] n = n();
        return n.length > 1 ? a(n[1]) : null;
    }

    private String a(File file) {
        return file.getName().substring(0, 35);
    }

    boolean c() {
        return ((Boolean) this.l.a(new ad(this))).booleanValue();
    }

    private void l() throws Exception {
        Date date = new Date();
        String cVar = new c(this.m).toString();
        f.h().a("CrashlyticsCore", "Opening an new session with ID " + cVar);
        a(cVar, date);
        c(cVar);
        d(cVar);
        e(cVar);
        this.o.a(cVar);
    }

    void d() throws Exception {
        a(false);
    }

    private void a(boolean z) throws Exception {
        int i = z ? 1 : 0;
        a(i + 8);
        File[] n = n();
        if (n.length <= i) {
            f.h().a("CrashlyticsCore", "No open sessions to be closed.");
            return;
        }
        f(a(n[i]));
        f fVar = this.n;
        p B = f.B();
        if (B == null) {
            f.h().a("CrashlyticsCore", "Unable to close session. Settings are not loaded.");
        } else {
            a(n, i, B.c);
        }
    }

    private void a(File[] fileArr, int i, int i2) {
        f.h().a("CrashlyticsCore", "Closing open sessions.");
        while (i < fileArr.length) {
            File file = fileArr[i];
            String a = a(file);
            f.h().a("CrashlyticsCore", "Closing session: " + a);
            a(file, a, i2);
            i++;
        }
    }

    private void a(d dVar) {
        if (dVar != null) {
            try {
                dVar.a();
            } catch (Throwable e) {
                f.h().e("CrashlyticsCore", "Error closing session file stream in the presence of an exception", e);
            }
        }
    }

    private void a(String str) {
        for (File delete : b(str)) {
            delete.delete();
        }
    }

    private File[] b(String str) {
        return a(new ar(str));
    }

    private File[] m() {
        return a(a);
    }

    File[] e() {
        return a(new ap("BeginSession"));
    }

    private File[] n() {
        File[] e = e();
        Arrays.sort(e, b);
        return e;
    }

    private File[] a(FilenameFilter filenameFilter) {
        return b(q().listFiles(filenameFilter));
    }

    private File[] b(File[] fileArr) {
        return fileArr == null ? new File[0] : fileArr;
    }

    private void a(String str, int i) {
        cf.a(q(), new ap(str + "SessionEvent"), i, c);
    }

    void f() {
        cf.a(q(), a, 4, c);
    }

    private void a(int i) {
        int i2 = 0;
        Set hashSet = new HashSet();
        File[] n = n();
        int min = Math.min(i, n.length);
        for (int i3 = 0; i3 < min; i3++) {
            hashSet.add(a(n[i3]));
        }
        this.o.a(hashSet);
        File[] a = a(new ao());
        int length = a.length;
        while (i2 < length) {
            File file = a[i2];
            Object name = file.getName();
            Matcher matcher = e.matcher(name);
            matcher.matches();
            if (!hashSet.contains(matcher.group(1))) {
                f.h().a("CrashlyticsCore", "Trimming open session file: " + name);
                file.delete();
            }
            i2++;
        }
    }

    private File[] a(String str, File[] fileArr, int i) {
        if (fileArr.length <= i) {
            return fileArr;
        }
        f.h().a("CrashlyticsCore", String.format(Locale.US, "Trimming down to %d logged exceptions.", new Object[]{Integer.valueOf(i)}));
        a(str, i);
        return a(new ap(str + "SessionEvent"));
    }

    void g() {
        this.l.a(new ae(this));
    }

    void a(File[] fileArr) {
        o();
        for (File file : fileArr) {
            f.h().a("CrashlyticsCore", "Found invalid session part file: " + file);
            String a = a(file);
            FilenameFilter afVar = new af(this, a);
            f.h().a("CrashlyticsCore", "Deleting all part files for invalid session: " + a);
            for (File file2 : a(afVar)) {
                f.h().a("CrashlyticsCore", "Deleting session file: " + file2);
                file2.delete();
            }
        }
    }

    private void o() {
        File file = new File(this.n.w(), "invalidClsFiles");
        if (file.exists()) {
            if (file.isDirectory()) {
                for (File delete : file.listFiles()) {
                    delete.delete();
                }
            }
            file.delete();
        }
    }

    private void b(Date date, Thread thread, Throwable th) {
        Throwable e;
        Object obj;
        Closeable closeable;
        Flushable flushable = null;
        try {
            String j = j();
            if (j == null) {
                f.h().e("CrashlyticsCore", "Tried to write a fatal exception while no session was open.", null);
                CommonUtils.a(null, "Failed to flush to session begin file.");
                CommonUtils.a(null, "Failed to close fatal exception file output stream.");
                return;
            }
            f.c(j, th.getClass().getName());
            OutputStream dVar = new d(q(), j + "SessionCrash");
            try {
                flushable = CodedOutputStream.a(dVar);
                a(flushable, date, thread, th, "crash", true);
                CommonUtils.a(flushable, "Failed to flush to session begin file.");
                CommonUtils.a(dVar, "Failed to close fatal exception file output stream.");
            } catch (Exception e2) {
                e = e2;
                obj = dVar;
                try {
                    f.h().e("CrashlyticsCore", "An error occurred in the fatal exception logger", e);
                    CommonUtils.a(flushable, "Failed to flush to session begin file.");
                    CommonUtils.a(closeable, "Failed to close fatal exception file output stream.");
                } catch (Throwable th2) {
                    e = th2;
                    CommonUtils.a(flushable, "Failed to flush to session begin file.");
                    CommonUtils.a(closeable, "Failed to close fatal exception file output stream.");
                    throw e;
                }
            } catch (Throwable th3) {
                e = th3;
                obj = dVar;
                CommonUtils.a(flushable, "Failed to flush to session begin file.");
                CommonUtils.a(closeable, "Failed to close fatal exception file output stream.");
                throw e;
            }
        } catch (Exception e3) {
            e = e3;
            closeable = null;
            f.h().e("CrashlyticsCore", "An error occurred in the fatal exception logger", e);
            CommonUtils.a(flushable, "Failed to flush to session begin file.");
            CommonUtils.a(closeable, "Failed to close fatal exception file output stream.");
        } catch (Throwable th4) {
            e = th4;
            closeable = null;
            CommonUtils.a(flushable, "Failed to flush to session begin file.");
            CommonUtils.a(closeable, "Failed to close fatal exception file output stream.");
            throw e;
        }
    }

    private void a(am amVar) throws IOException {
        Closeable dVar;
        Throwable e;
        Flushable flushable = null;
        try {
            String k = k();
            if (k == null) {
                f.h().e("CrashlyticsCore", "Tried to write a native crash while no session was open.", null);
                CommonUtils.a(null, "Failed to flush to session begin file.");
                CommonUtils.a(null, "Failed to close fatal exception file output stream.");
                return;
            }
            f.c(k, String.format(Locale.US, "<native-crash [%s (%s)]>", new Object[]{amVar.b.b, amVar.b.a}));
            dVar = new d(q(), k + "SessionCrash");
            try {
                flushable = CodedOutputStream.a((OutputStream) dVar);
                bg.a(amVar, new ba(this.n.E(), this.j, k), new be(q()).b(k), flushable);
                CommonUtils.a(flushable, "Failed to flush to session begin file.");
                CommonUtils.a(dVar, "Failed to close fatal exception file output stream.");
            } catch (Exception e2) {
                e = e2;
                try {
                    f.h().e("CrashlyticsCore", "An error occurred in the native crash logger", e);
                    CommonUtils.a(flushable, "Failed to flush to session begin file.");
                    CommonUtils.a(dVar, "Failed to close fatal exception file output stream.");
                } catch (Throwable th) {
                    e = th;
                    CommonUtils.a(flushable, "Failed to flush to session begin file.");
                    CommonUtils.a(dVar, "Failed to close fatal exception file output stream.");
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            dVar = null;
            f.h().e("CrashlyticsCore", "An error occurred in the native crash logger", e);
            CommonUtils.a(flushable, "Failed to flush to session begin file.");
            CommonUtils.a(dVar, "Failed to close fatal exception file output stream.");
        } catch (Throwable th2) {
            e = th2;
            dVar = null;
            CommonUtils.a(flushable, "Failed to flush to session begin file.");
            CommonUtils.a(dVar, "Failed to close fatal exception file output stream.");
            throw e;
        }
    }

    private void c(Date date, Thread thread, Throwable th) {
        Throwable e;
        Object obj;
        Closeable closeable;
        Flushable flushable = null;
        String j = j();
        if (j == null) {
            f.h().e("CrashlyticsCore", "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        f.b(j, th.getClass().getName());
        try {
            f.h().a("CrashlyticsCore", "Crashlytics is logging non-fatal exception \"" + th + "\" from thread " + thread.getName());
            OutputStream dVar = new d(q(), j + "SessionEvent" + CommonUtils.a(this.h.getAndIncrement()));
            try {
                flushable = CodedOutputStream.a(dVar);
                a(flushable, date, thread, th, "error", false);
                CommonUtils.a(flushable, "Failed to flush to non-fatal file.");
                CommonUtils.a(dVar, "Failed to close non-fatal file output stream.");
            } catch (Exception e2) {
                e = e2;
                obj = dVar;
                try {
                    f.h().e("CrashlyticsCore", "An error occurred in the non-fatal exception logger", e);
                    CommonUtils.a(flushable, "Failed to flush to non-fatal file.");
                    CommonUtils.a(closeable, "Failed to close non-fatal file output stream.");
                    a(j, 64);
                } catch (Throwable th2) {
                    e = th2;
                    CommonUtils.a(flushable, "Failed to flush to non-fatal file.");
                    CommonUtils.a(closeable, "Failed to close non-fatal file output stream.");
                    throw e;
                }
            } catch (Throwable th3) {
                e = th3;
                obj = dVar;
                CommonUtils.a(flushable, "Failed to flush to non-fatal file.");
                CommonUtils.a(closeable, "Failed to close non-fatal file output stream.");
                throw e;
            }
        } catch (Exception e3) {
            e = e3;
            closeable = null;
            f.h().e("CrashlyticsCore", "An error occurred in the non-fatal exception logger", e);
            CommonUtils.a(flushable, "Failed to flush to non-fatal file.");
            CommonUtils.a(closeable, "Failed to close non-fatal file output stream.");
            a(j, 64);
        } catch (Throwable th4) {
            e = th4;
            closeable = null;
            CommonUtils.a(flushable, "Failed to flush to non-fatal file.");
            CommonUtils.a(closeable, "Failed to close non-fatal file output stream.");
            throw e;
        }
        try {
            a(j, 64);
        } catch (Throwable e4) {
            f.h().e("CrashlyticsCore", "An error occurred when trimming non-fatal files.", e4);
        }
    }

    private void a(String str, Date date) throws Exception {
        Closeable dVar;
        Throwable th;
        Flushable flushable = null;
        try {
            dVar = new d(q(), str + "BeginSession");
            try {
                flushable = CodedOutputStream.a((OutputStream) dVar);
                cb.a((CodedOutputStream) flushable, str, String.format(Locale.US, "Crashlytics Android SDK/%s", new Object[]{this.n.a()}), date.getTime() / 1000);
                CommonUtils.a(flushable, "Failed to flush to session begin file.");
                CommonUtils.a(dVar, "Failed to close begin session file.");
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.a(flushable, "Failed to flush to session begin file.");
                CommonUtils.a(dVar, "Failed to close begin session file.");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            dVar = null;
            CommonUtils.a(flushable, "Failed to flush to session begin file.");
            CommonUtils.a(dVar, "Failed to close begin session file.");
            throw th;
        }
    }

    private void c(String str) throws Exception {
        CodedOutputStream a;
        Throwable th;
        Object obj;
        Closeable closeable;
        Flushable flushable = null;
        try {
            OutputStream dVar = new d(q(), str + "SessionApp");
            try {
                a = CodedOutputStream.a(dVar);
            } catch (Throwable th2) {
                th = th2;
                obj = dVar;
                CommonUtils.a(flushable, "Failed to flush to session app file.");
                CommonUtils.a(closeable, "Failed to close session app file.");
                throw th;
            }
            try {
                cb.a(a, this.m.c(), this.n.i(), this.n.l(), this.n.k(), this.m.b(), DeliveryMechanism.a(this.n.j()).a(), this.q);
                CommonUtils.a(a, "Failed to flush to session app file.");
                CommonUtils.a(dVar, "Failed to close session app file.");
            } catch (Throwable th3) {
                obj = dVar;
                CodedOutputStream codedOutputStream = a;
                th = th3;
                Object obj2 = codedOutputStream;
                CommonUtils.a(flushable, "Failed to flush to session app file.");
                CommonUtils.a(closeable, "Failed to close session app file.");
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            closeable = null;
            CommonUtils.a(flushable, "Failed to flush to session app file.");
            CommonUtils.a(closeable, "Failed to close session app file.");
            throw th;
        }
    }

    private void d(String str) throws Exception {
        Throwable th;
        Flushable flushable = null;
        Closeable dVar;
        try {
            dVar = new d(q(), str + "SessionOS");
            try {
                flushable = CodedOutputStream.a((OutputStream) dVar);
                cb.a((CodedOutputStream) flushable, CommonUtils.g(this.n.E()));
                CommonUtils.a(flushable, "Failed to flush to session OS file.");
                CommonUtils.a(dVar, "Failed to close session OS file.");
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.a(flushable, "Failed to flush to session OS file.");
                CommonUtils.a(dVar, "Failed to close session OS file.");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            dVar = null;
            CommonUtils.a(flushable, "Failed to flush to session OS file.");
            CommonUtils.a(dVar, "Failed to close session OS file.");
            throw th;
        }
    }

    private void e(String str) throws Exception {
        Throwable th;
        Closeable closeable = null;
        Flushable flushable = null;
        try {
            OutputStream dVar = new d(q(), str + "SessionDevice");
            try {
                flushable = CodedOutputStream.a(dVar);
                Context E = this.n.E();
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                cb.a((CodedOutputStream) flushable, this.m.h(), CommonUtils.a(), Build.MODEL, Runtime.getRuntime().availableProcessors(), CommonUtils.b(), ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()), CommonUtils.f(E), this.m.i(), CommonUtils.h(E), Build.MANUFACTURER, Build.PRODUCT);
                CommonUtils.a(flushable, "Failed to flush session device info.");
                CommonUtils.a(dVar, "Failed to close session device file.");
            } catch (Throwable th2) {
                th = th2;
                Object obj = dVar;
                CommonUtils.a(flushable, "Failed to flush session device info.");
                CommonUtils.a(closeable, "Failed to close session device file.");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            CommonUtils.a(flushable, "Failed to flush session device info.");
            CommonUtils.a(closeable, "Failed to close session device file.");
            throw th;
        }
    }

    private void f(String str) throws Exception {
        Closeable dVar;
        Throwable th;
        Flushable flushable = null;
        try {
            dVar = new d(q(), str + "SessionUser");
            try {
                flushable = CodedOutputStream.a((OutputStream) dVar);
                ce g = g(str);
                if (g.a()) {
                    CommonUtils.a(flushable, "Failed to flush session user file.");
                    CommonUtils.a(dVar, "Failed to close session user file.");
                    return;
                }
                cb.a((CodedOutputStream) flushable, g.b, g.c, g.d);
                CommonUtils.a(flushable, "Failed to flush session user file.");
                CommonUtils.a(dVar, "Failed to close session user file.");
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.a(flushable, "Failed to flush session user file.");
                CommonUtils.a(dVar, "Failed to close session user file.");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            dVar = null;
            CommonUtils.a(flushable, "Failed to flush session user file.");
            CommonUtils.a(dVar, "Failed to close session user file.");
            throw th;
        }
    }

    private void a(CodedOutputStream codedOutputStream, Date date, Thread thread, Throwable th, String str, boolean z) throws Exception {
        Thread[] threadArr;
        Map treeMap;
        Context E = this.n.E();
        long time = date.getTime() / 1000;
        float c = CommonUtils.c(E);
        int a = CommonUtils.a(E, this.p.a());
        boolean d = CommonUtils.d(E);
        int i = E.getResources().getConfiguration().orientation;
        long b = CommonUtils.b() - CommonUtils.b(E);
        long b2 = CommonUtils.b(Environment.getDataDirectory().getPath());
        RunningAppProcessInfo a2 = CommonUtils.a(E.getPackageName(), E);
        List linkedList = new LinkedList();
        StackTraceElement[] stackTrace = th.getStackTrace();
        String n = this.n.n();
        String c2 = this.m.c();
        if (z) {
            Map allStackTraces = Thread.getAllStackTraces();
            threadArr = new Thread[allStackTraces.size()];
            int i2 = 0;
            for (Entry entry : allStackTraces.entrySet()) {
                threadArr[i2] = (Thread) entry.getKey();
                linkedList.add(entry.getValue());
                i2++;
            }
        } else {
            threadArr = new Thread[0];
        }
        if (CommonUtils.a(E, "com.crashlytics.CollectCustomKeys", true)) {
            Map g = this.n.g();
            treeMap = (g == null || g.size() <= 1) ? g : new TreeMap(g);
        } else {
            treeMap = new TreeMap();
        }
        cb.a(codedOutputStream, time, str, th, thread, stackTrace, threadArr, linkedList, treeMap, this.o, a2, i, c2, n, c, a, d, b, b2);
    }

    private void a(File file, String str, int i) {
        boolean z;
        f.h().a("CrashlyticsCore", "Collecting session parts for ID " + str);
        File[] a = a(new ap(str + "SessionCrash"));
        boolean z2 = a != null && a.length > 0;
        f.h().a("CrashlyticsCore", String.format(Locale.US, "Session %s has fatal exception: %s", new Object[]{str, Boolean.valueOf(z2)}));
        File[] a2 = a(new ap(str + "SessionEvent"));
        if (a2 == null || a2.length <= 0) {
            z = false;
        } else {
            z = true;
        }
        f.h().a("CrashlyticsCore", String.format(Locale.US, "Session %s has non-fatal exceptions: %s", new Object[]{str, Boolean.valueOf(z)}));
        if (z2 || z) {
            a(file, str, a(str, a2, i), z2 ? a[0] : null);
        } else {
            f.h().a("CrashlyticsCore", "No events present for session ID " + str);
        }
        f.h().a("CrashlyticsCore", "Removing session part files for ID " + str);
        a(str);
    }

    private void a(File file, String str, File[] fileArr, File file2) {
        Closeable dVar;
        Throwable e;
        boolean z = true;
        if (file2 == null) {
            z = false;
        }
        try {
            dVar = new d(q(), str);
            try {
                CodedOutputStream a = CodedOutputStream.a((OutputStream) dVar);
                f.h().a("CrashlyticsCore", "Collecting SessionStart data for session ID " + str);
                a(a, file);
                a.a(4, new Date().getTime() / 1000);
                a.a(5, z);
                a.a(11, 1);
                a.b(12, 3);
                a(a, str);
                a(a, fileArr, str);
                if (z) {
                    a(a, file2);
                }
                CommonUtils.a(a, "Error flushing session file stream");
                CommonUtils.a(dVar, "Failed to close CLS file");
            } catch (Exception e2) {
                e = e2;
                try {
                    f.h().e("CrashlyticsCore", "Failed to write session file for session ID: " + str, e);
                    CommonUtils.a(null, "Error flushing session file stream");
                    a((d) dVar);
                } catch (Throwable th) {
                    e = th;
                    CommonUtils.a(null, "Error flushing session file stream");
                    CommonUtils.a(dVar, "Failed to close CLS file");
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            dVar = null;
            f.h().e("CrashlyticsCore", "Failed to write session file for session ID: " + str, e);
            CommonUtils.a(null, "Error flushing session file stream");
            a((d) dVar);
        } catch (Throwable th2) {
            e = th2;
            dVar = null;
            CommonUtils.a(null, "Error flushing session file stream");
            CommonUtils.a(dVar, "Failed to close CLS file");
            throw e;
        }
    }

    private static void a(CodedOutputStream codedOutputStream, File[] fileArr, String str) {
        Arrays.sort(fileArr, CommonUtils.a);
        for (File name : fileArr) {
            try {
                f.h().a("CrashlyticsCore", String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", new Object[]{str, name.getName()}));
                a(codedOutputStream, name);
            } catch (Throwable e) {
                f.h().e("CrashlyticsCore", "Error writting non-fatal to session.", e);
            }
        }
    }

    private void a(CodedOutputStream codedOutputStream, String str) throws IOException {
        for (String str2 : g) {
            File[] a = a(new ap(str + str2));
            if (a.length == 0) {
                f.h().e("CrashlyticsCore", "Can't find " + str2 + " data for session ID " + str, null);
            } else {
                f.h().a("CrashlyticsCore", "Collecting " + str2 + " data for session ID " + str);
                a(codedOutputStream, a[0]);
            }
        }
    }

    private static void a(CodedOutputStream codedOutputStream, File file) throws IOException {
        Closeable fileInputStream;
        Throwable th;
        if (file.exists()) {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    a((InputStream) fileInputStream, codedOutputStream, (int) file.length());
                    CommonUtils.a(fileInputStream, "Failed to close file input stream.");
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    CommonUtils.a(fileInputStream, "Failed to close file input stream.");
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                CommonUtils.a(fileInputStream, "Failed to close file input stream.");
                throw th;
            }
        }
        f.h().e("CrashlyticsCore", "Tried to include a file that doesn't exist: " + file.getName(), null);
    }

    private static void a(InputStream inputStream, CodedOutputStream codedOutputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < bArr.length) {
            int read = inputStream.read(bArr, i2, bArr.length - i2);
            if (read < 0) {
                break;
            }
            i2 += read;
        }
        codedOutputStream.a(bArr);
    }

    private ce g(String str) {
        return a() ? new ce(this.n.p(), this.n.r(), this.n.q()) : new be(q()).a(str);
    }

    private void p() {
        for (File aqVar : m()) {
            this.l.a(new aq(this.n, aqVar));
        }
    }

    private File q() {
        return this.j.a();
    }
}
