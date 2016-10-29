package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.clearcut.b;
import com.google.android.gms.clearcut.d;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.f;
import dalvik.system.DexClassLoader;
import ht;
import hv;
import hw;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public abstract class zzal extends u {
    private static Method A;
    private static Method B;
    private static Method C;
    private static Method D;
    private static String E;
    private static String F;
    private static String G;
    private static long H;
    private static zzaq I;
    private static Random J;
    private static f K;
    private static boolean L;
    private static boolean M;
    static boolean j;
    protected static b k;
    protected static ht l;
    protected static int m;
    protected static boolean n;
    protected static boolean o;
    protected static boolean p;
    protected static boolean q;
    private static Method r;
    private static Method s;
    private static Method t;
    private static Method u;
    private static Method v;
    private static Method w;
    private static Method x;
    private static Method y;
    private static Method z;

    class zza extends Exception {
        public zza(Throwable th) {
            super(th);
        }
    }

    static {
        H = 0;
        j = false;
        k = null;
        J = new Random();
        K = f.b();
        n = false;
        o = false;
        p = false;
        q = false;
        M = false;
    }

    protected zzal(Context context, z zVar) {
        super(context, zVar);
        l = new ht();
        l.a = context.getPackageName();
    }

    static String a(Context context, z zVar) throws zza {
        if (F != null) {
            return F;
        }
        if (u == null) {
            throw new zza();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) u.invoke(null, new Object[]{context});
            if (byteBuffer == null) {
                throw new zza();
            }
            F = zVar.a(byteBuffer.array(), true);
            return F;
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static ArrayList<Long> a(MotionEvent motionEvent, DisplayMetrics displayMetrics) throws zza {
        if (v == null || motionEvent == null) {
            throw new zza();
        }
        try {
            return (ArrayList) v.invoke(null, new Object[]{motionEvent, displayMetrics});
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    protected static void a(int i, int i2) throws IOException {
        if (q && n && k != null) {
            d a = k.a(xs.a(l));
            a.b(i2);
            a.a(i);
            a.a(i);
        }
    }

    protected static synchronized void a(String str, Context context, z zVar) {
        synchronized (zzal.class) {
            if (!j) {
                try {
                    I = new zzaq(zVar, null);
                    E = str;
                    cj.a(context);
                    l(context);
                    H = c().longValue();
                    J = new Random();
                    try {
                        i = new o(context).a(b.c).b();
                        K = f.b();
                        L = K.a(context) == 0;
                        cj.a(context);
                        n = ((Boolean) cj.az.c()).booleanValue();
                        k = new b(context, "ADSHIELD", null, null);
                    } catch (NoClassDefFoundError e) {
                    }
                    M = K.b(context) > 0;
                    j = true;
                } catch (zza e2) {
                } catch (UnsupportedOperationException e3) {
                }
            }
        }
    }

    static String b() throws zza {
        if (E != null) {
            return E;
        }
        throw new zza();
    }

    static String b(Context context, z zVar) throws zza {
        if (G != null) {
            return G;
        }
        if (x == null) {
            throw new zza();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) x.invoke(null, new Object[]{context});
            if (byteBuffer == null) {
                throw new zza();
            }
            G = zVar.a(byteBuffer.array(), true);
            return G;
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    private static String b(byte[] bArr, String str) throws zza {
        try {
            return new String(I.a(bArr, str), Util.UTF_8);
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static Long c() throws zza {
        if (r == null) {
            throw new zza();
        }
        try {
            return (Long) r.invoke(null, new Object[0]);
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static String d() throws zza {
        if (t == null) {
            throw new zza();
        }
        try {
            return (String) t.invoke(null, new Object[0]);
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static String d(Context context) throws zza {
        if (w == null) {
            throw new zza();
        }
        try {
            String str = (String) w.invoke(null, new Object[]{context});
            if (str != null) {
                return str;
            }
            throw new zza();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static Long e() throws zza {
        if (s == null) {
            throw new zza();
        }
        try {
            return (Long) s.invoke(null, new Object[0]);
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static String e(Context context) throws zza {
        if (A == null) {
            throw new zza();
        }
        try {
            return (String) A.invoke(null, new Object[]{context});
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static Long f(Context context) throws zza {
        if (B == null) {
            throw new zza();
        }
        try {
            return (Long) B.invoke(null, new Object[]{context});
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    private void f() {
        if (q && k != null) {
            k.a(i, 100, TimeUnit.MILLISECONDS);
            i.c();
        }
    }

    static ArrayList<Long> g(Context context) throws zza {
        if (y == null) {
            throw new zza();
        }
        try {
            ArrayList<Long> arrayList = (ArrayList) y.invoke(null, new Object[]{context});
            if (arrayList != null && arrayList.size() == 2) {
                return arrayList;
            }
            throw new zza();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static int[] h(Context context) throws zza {
        if (z == null) {
            throw new zza();
        }
        try {
            return (int[]) z.invoke(null, new Object[]{context});
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static int i(Context context) throws zza {
        if (C == null) {
            throw new zza();
        }
        try {
            return ((Integer) C.invoke(null, new Object[]{context})).intValue();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static int j(Context context) throws zza {
        if (D == null) {
            throw new zza();
        }
        try {
            return ((Integer) D.invoke(null, new Object[]{context})).intValue();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    private void k(Context context) {
        if (L) {
            i.b();
            q = true;
            return;
        }
        q = false;
    }

    private static void l(Context context) throws zza {
        File file;
        File createTempFile;
        try {
            byte[] a = I.a(aa.a());
            byte[] a2 = I.a(a, aa.b());
            File cacheDir = context.getCacheDir();
            if (cacheDir == null) {
                cacheDir = context.getDir("dex", 0);
                if (cacheDir == null) {
                    throw new zza();
                }
            }
            file = cacheDir;
            createTempFile = File.createTempFile("ads", ".jar", file);
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(a2, 0, a2.length);
            fileOutputStream.close();
            DexClassLoader dexClassLoader = new DexClassLoader(createTempFile.getAbsolutePath(), file.getAbsolutePath(), null, context.getClassLoader());
            Class loadClass = dexClassLoader.loadClass(b(a, aa.k()));
            Class loadClass2 = dexClassLoader.loadClass(b(a, aa.y()));
            Class loadClass3 = dexClassLoader.loadClass(b(a, aa.s()));
            Class loadClass4 = dexClassLoader.loadClass(b(a, aa.o()));
            Class loadClass5 = dexClassLoader.loadClass(b(a, aa.A()));
            Class loadClass6 = dexClassLoader.loadClass(b(a, aa.m()));
            Class loadClass7 = dexClassLoader.loadClass(b(a, aa.w()));
            Class loadClass8 = dexClassLoader.loadClass(b(a, aa.u()));
            Class loadClass9 = dexClassLoader.loadClass(b(a, aa.i()));
            Class loadClass10 = dexClassLoader.loadClass(b(a, aa.g()));
            Class loadClass11 = dexClassLoader.loadClass(b(a, aa.e()));
            Class loadClass12 = dexClassLoader.loadClass(b(a, aa.q()));
            Class loadClass13 = dexClassLoader.loadClass(b(a, aa.c()));
            r = loadClass.getMethod(b(a, aa.l()), new Class[0]);
            s = loadClass2.getMethod(b(a, aa.z()), new Class[0]);
            t = loadClass3.getMethod(b(a, aa.t()), new Class[0]);
            u = loadClass4.getMethod(b(a, aa.p()), new Class[]{Context.class});
            v = loadClass5.getMethod(b(a, aa.B()), new Class[]{MotionEvent.class, DisplayMetrics.class});
            w = loadClass6.getMethod(b(a, aa.n()), new Class[]{Context.class});
            x = loadClass7.getMethod(b(a, aa.x()), new Class[]{Context.class});
            y = loadClass8.getMethod(b(a, aa.v()), new Class[]{Context.class});
            z = loadClass9.getMethod(b(a, aa.j()), new Class[]{Context.class});
            A = loadClass10.getMethod(b(a, aa.h()), new Class[]{Context.class});
            B = loadClass11.getMethod(b(a, aa.f()), new Class[]{Context.class});
            C = loadClass12.getMethod(b(a, aa.r()), new Class[]{Context.class});
            D = loadClass13.getMethod(b(a, aa.d()), new Class[]{Context.class});
            String name = createTempFile.getName();
            createTempFile.delete();
            new File(file, name.replace(".jar", ".dex")).delete();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        } catch (Throwable e22) {
            throw new zza(e22);
        } catch (Throwable e222) {
            throw new zza(e222);
        } catch (Throwable e2222) {
            throw new zza(e2222);
        } catch (Throwable e22222) {
            throw new zza(e22222);
        } catch (Throwable th) {
            String name2 = createTempFile.getName();
            createTempFile.delete();
            new File(file, name2.replace(".jar", ".dex")).delete();
        }
    }

    protected boolean a() {
        return M;
    }

    protected hv b(Context context) {
        hv hvVar = new hv();
        try {
            k(context);
            m = J.nextInt();
            a(0, m);
            try {
                hvVar.a = d();
                a(1, m);
            } catch (zza e) {
            }
            try {
                hvVar.b = b();
                a(2, m);
            } catch (zza e2) {
            }
            try {
                long longValue = c().longValue();
                hvVar.Q = Long.valueOf(longValue);
                if (H != 0) {
                    hvVar.q = Long.valueOf(longValue - H);
                    hvVar.v = Long.valueOf(H);
                }
                a(25, m);
            } catch (zza e3) {
            }
            try {
                ArrayList g = g(context);
                hvVar.y = Long.valueOf(((Long) g.get(0)).longValue());
                hvVar.z = Long.valueOf(((Long) g.get(1)).longValue());
                a(31, m);
            } catch (zza e4) {
            }
            try {
                hvVar.A = e();
                a(33, m);
            } catch (zza e5) {
            }
            try {
                if (!(o && p)) {
                    hvVar.w = a(context, this.h);
                    a(27, m);
                }
            } catch (zza e6) {
            }
            try {
                hvVar.x = b(context, this.h);
                a(29, m);
            } catch (zza e7) {
            }
            try {
                int[] h = h(context);
                hvVar.e = Long.valueOf((long) h[0]);
                hvVar.f = Long.valueOf((long) h[1]);
                a(5, m);
            } catch (zza e8) {
            }
            try {
                hvVar.l = Long.valueOf((long) i(context));
                a(12, m);
            } catch (zza e9) {
            }
            try {
                hvVar.c = Long.valueOf((long) j(context));
                a(3, m);
            } catch (zza e10) {
            }
            try {
                hvVar.B = e(context);
                a(34, m);
            } catch (zza e11) {
            }
            try {
                hvVar.C = f(context);
                a(35, m);
            } catch (zza e12) {
            }
            f();
        } catch (IOException e13) {
        }
        return hvVar;
    }

    protected hv c(Context context) {
        hv hvVar = new hv();
        k(context);
        m = J.nextInt();
        try {
            hvVar.b = b();
        } catch (zza e) {
        }
        try {
            hvVar.a = d();
        } catch (zza e2) {
        }
        try {
            hvVar.Q = c();
        } catch (zza e3) {
        }
        a(0, m);
        try {
            ArrayList a = a(this.a, this.g);
            hvVar.n = (Long) a.get(0);
            hvVar.o = (Long) a.get(1);
            if (((Long) a.get(2)).longValue() >= 0) {
                hvVar.p = (Long) a.get(2);
            }
            hvVar.D = (Long) a.get(3);
            hvVar.E = (Long) a.get(4);
            a(14, m);
        } catch (zza e4) {
        }
        try {
            if (this.c > 0) {
                hvVar.I = Long.valueOf(this.c);
            }
            if (this.d > 0) {
                hvVar.H = Long.valueOf(this.d);
            }
            if (this.e > 0) {
                hvVar.G = Long.valueOf(this.e);
            }
            if (this.f > 0) {
                hvVar.J = Long.valueOf(this.f);
            }
            try {
                int size = this.b.size() - 1;
                if (size > 0) {
                    hvVar.K = new hw[size];
                    for (int i = 0; i < size; i++) {
                        ArrayList a2 = a((MotionEvent) this.b.get(i), this.g);
                        hw hwVar = new hw();
                        hwVar.a = (Long) a2.get(0);
                        hwVar.b = (Long) a2.get(1);
                        hvVar.K[i] = hwVar;
                    }
                }
            } catch (zza e5) {
                hvVar.K = null;
            }
            try {
                hvVar.B = e(context);
            } catch (zza e6) {
            }
            try {
                hvVar.C = f(context);
            } catch (zza e7) {
            }
            f();
        } catch (IOException e8) {
        }
        return hvVar;
    }
}
