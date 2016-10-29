package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@oi
public class oh implements UncaughtExceptionHandler {
    private UncaughtExceptionHandler a;
    private UncaughtExceptionHandler b;
    private Context c;
    private VersionInfoParcel d;

    public oh(Context context, VersionInfoParcel versionInfoParcel, UncaughtExceptionHandler uncaughtExceptionHandler, UncaughtExceptionHandler uncaughtExceptionHandler2) {
        this.a = uncaughtExceptionHandler;
        this.b = uncaughtExceptionHandler2;
        this.c = context;
        this.d = versionInfoParcel;
    }

    public static oh a(Context context, Thread thread, VersionInfoParcel versionInfoParcel) {
        if (context == null || thread == null || versionInfoParcel == null) {
            return null;
        }
        if (!a(context)) {
            return null;
        }
        UncaughtExceptionHandler uncaughtExceptionHandler = thread.getUncaughtExceptionHandler();
        UncaughtExceptionHandler ohVar = new oh(context, versionInfoParcel, uncaughtExceptionHandler, Thread.getDefaultUncaughtExceptionHandler());
        if (uncaughtExceptionHandler != null && (uncaughtExceptionHandler instanceof oh)) {
            return (oh) uncaughtExceptionHandler;
        }
        try {
            thread.setUncaughtExceptionHandler(ohVar);
            return ohVar;
        } catch (Throwable e) {
            b.c("Fail to set UncaughtExceptionHandler.", e);
            return null;
        }
    }

    private static boolean a(Context context) {
        return ((Boolean) cj.g.c()).booleanValue();
    }

    private Throwable b(Throwable th) {
        if (((Boolean) cj.h.c()).booleanValue()) {
            return th;
        }
        LinkedList linkedList = new LinkedList();
        while (th != null) {
            linkedList.push(th);
            th = th.getCause();
        }
        Throwable th2 = null;
        while (!linkedList.isEmpty()) {
            Throwable th3;
            Throwable th4 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th4.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th4.getClass().getName(), "<filtered>", "<filtered>", 1));
            int i = 0;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (a(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    i = 1;
                } else if (b(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                } else {
                    arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                }
            }
            if (i != 0) {
                th3 = th2 == null ? new Throwable(th4.getMessage()) : new Throwable(th4.getMessage(), th2);
                th3.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            } else {
                th3 = th2;
            }
            th2 = th3;
        }
        return th2;
    }

    String a(Class cls, Throwable th, boolean z) {
        Writer stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return new Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", VERSION.RELEASE).appendQueryParameter("api", String.valueOf(VERSION.SDK_INT)).appendQueryParameter("device", ar.e().d()).appendQueryParameter("js", this.d.b).appendQueryParameter("appid", this.c.getApplicationContext().getPackageName()).appendQueryParameter("exceptiontype", cls.getName()).appendQueryParameter("stacktrace", stringWriter.toString()).appendQueryParameter("eids", TextUtils.join(",", cj.a())).appendQueryParameter("trapped", String.valueOf(z)).toString();
    }

    public void a(Throwable th, boolean z) {
        if (a(this.c)) {
            Throwable b = b(th);
            if (b != null) {
                Class cls = th.getClass();
                List arrayList = new ArrayList();
                arrayList.add(a(cls, b, z));
                ar.e().a(this.c, this.d.b, arrayList, ar.h().h());
            }
        }
    }

    protected boolean a(String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return z;
        }
        if (str.startsWith("com.google.android.gms.ads")) {
            return true;
        }
        if (str.startsWith("com.google.ads")) {
            return true;
        }
        try {
            return Class.forName(str).isAnnotationPresent(oi.class);
        } catch (Throwable e) {
            b.a("Fail to check class type for class " + str, e);
            return z;
        }
    }

    protected boolean a(Throwable th) {
        boolean z = true;
        if (th == null) {
            return false;
        }
        boolean z2 = false;
        boolean z3 = false;
        while (th != null) {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (a(stackTraceElement.getClassName())) {
                    z3 = true;
                }
                if (getClass().getName().equals(stackTraceElement.getClassName())) {
                    z2 = true;
                }
            }
            th = th.getCause();
        }
        if (!z3 || r2) {
            z = false;
        }
        return z;
    }

    protected boolean b(String str) {
        return TextUtils.isEmpty(str) ? false : str.startsWith("android.") || str.startsWith("java.");
    }

    public void uncaughtException(Thread thread, Throwable th) {
        if (a(th)) {
            if (Looper.getMainLooper().getThread() != thread) {
                a(th, true);
                return;
            }
            a(th, false);
        }
        if (this.a != null) {
            this.a.uncaughtException(thread, th);
        } else if (this.b != null) {
            this.b.uncaughtException(thread, th);
        }
    }
}
