package defpackage;

import android.content.Context;
import bbn;
import com.twitter.util.collection.ReferenceMap;
import com.twitter.util.h;
import com.twitter.util.k;
import cvi;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
/* renamed from: cus */
public class cus implements Closeable {
    private static final cuu a;
    private final Context b;
    private final String c;
    private final int d;
    private final int e;
    private final int f;
    private final ReferenceMap<String, File> g;
    private cuw h;
    private boolean i;

    static {
        a = new cuu();
    }

    public cus(Context context, String str, int i, int i2, int i3) {
        this.g = ReferenceMap.a();
        this.b = context;
        this.c = str;
        this.d = i;
        this.e = i2;
        this.f = i3;
    }

    private synchronized cuw a(boolean z) {
        cuw cuw;
        File file = null;
        synchronized (this) {
            h.c();
            if (!this.i && (this.h == null || this.h.a())) {
                File file2;
                this.h = null;
                int i = 0;
                File a = cvi.a(this.b);
                if (a != null) {
                    file2 = new File(a, this.c);
                    if (file2.mkdirs() || file2.exists()) {
                        i = this.e;
                    } else {
                        file2 = null;
                    }
                } else {
                    file2 = null;
                }
                if (file2 == null) {
                    a = this.b.getCacheDir();
                    if (a != null) {
                        file2 = new File(a, this.c);
                        if (file2.mkdirs() || file2.exists()) {
                            i = this.f;
                            file = file2;
                        }
                        if (file != null) {
                            try {
                                this.h = cuw.a(file, this.d, 1, (long) i);
                            } catch (Throwable e) {
                                if (!z) {
                                    bbn.a(e);
                                }
                            }
                        }
                    }
                }
                file = file2;
                if (file != null) {
                    this.h = cuw.a(file, this.d, 1, (long) i);
                }
            }
            cuw = this.h;
        }
        return cuw;
    }

    public synchronized void close() {
        if (this.h != null) {
            try {
                this.h.close();
            } catch (IOException e) {
            }
            this.h = null;
        }
        this.i = true;
    }

    public File a(String str) {
        h.c();
        File e = e(str);
        if (e == null || !e.exists()) {
            return null;
        }
        c(str);
        return e.exists() ? e : null;
    }

    public boolean b(String str) {
        File e = e(str);
        return e != null && e.exists();
    }

    public synchronized boolean c(String str) {
        boolean z = false;
        synchronized (this) {
            h.c();
            cuw a = a(false);
            if (a != null) {
                try {
                    z = a.a(cus.g(str));
                } catch (Throwable e) {
                    bbn.a(e);
                }
            }
        }
        return z;
    }

    public <T> boolean a(String str, File file) throws IOException {
        InputStream fileInputStream = new FileInputStream(file);
        try {
            boolean a = a(str, fileInputStream);
            return a;
        } finally {
            cvi.a(fileInputStream);
        }
    }

    public <T> boolean a(String str, T t, cuv<T> cuv_T) throws IOException {
        h.c();
        return a(str, t, cuv_T, true);
    }

    public boolean a(String str, InputStream inputStream) throws IOException {
        h.c();
        return a(str, inputStream, a, true);
    }

    private <T> boolean a(String str, T t, cuv<T> cuv_T, boolean z) throws IOException {
        Closeable closeable = null;
        boolean z2 = false;
        h.c();
        File e = e(str);
        if (e != null) {
            synchronized (e) {
                cuy f = f(str);
                if (f != null) {
                    boolean a;
                    try {
                        closeable = f.a(0);
                        a = cuv_T.a(t, closeable);
                        cvi.a(closeable);
                        a(f, a);
                    } catch (Throwable e2) {
                        if (f.a()) {
                            if (!z) {
                                bbn.a(e2);
                            }
                            cvi.a(closeable);
                            a(f, false);
                            a = false;
                        } else {
                            throw e2;
                        }
                    } catch (Throwable th) {
                        cvi.a(closeable);
                        a(f, false);
                    }
                    if (a) {
                        z2 = true;
                    } else if (z) {
                        synchronized (this) {
                            try {
                                this.h.close();
                            } catch (IOException e3) {
                            }
                            this.h = null;
                            a(false);
                        }
                        z2 = a(str, t, cuv_T, false);
                    }
                }
            }
        }
        return z2;
    }

    public synchronized boolean d(String str) {
        boolean z = false;
        synchronized (this) {
            h.c();
            cuw a = a(false);
            if (a != null) {
                File e = e(str);
                if (e != null) {
                    synchronized (e) {
                        try {
                            if (a.c(cus.g(str))) {
                                a.b();
                                z = true;
                            }
                        } catch (Throwable e2) {
                            bbn.a(e2);
                        }
                    }
                }
            }
        }
        return z;
    }

    private File e(String str) {
        h.c();
        synchronized (this.g) {
            File file = (File) this.g.a(str);
            if (file != null) {
                return file;
            }
            cuw a = a(false);
            if (a == null) {
                return null;
            }
            synchronized (this.g) {
                file = (File) this.g.a(str);
                if (file == null) {
                    file = a.a(cus.g(str), 0, false);
                    this.g.a(str, file);
                }
            }
            return file;
        }
    }

    private synchronized cuy f(String str) {
        cuy b;
        h.c();
        cuw a = a(false);
        if (a != null) {
            try {
                b = a.b(cus.g(str));
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
        b = null;
        return b;
    }

    private synchronized void a(cuy cuy, boolean z) {
        h.c();
        cuw a = a(false);
        if (a != null) {
            if (z) {
                try {
                    cuy.b();
                } catch (Throwable e) {
                    bbn.a(e);
                }
            } else {
                cuy.c();
            }
            a.b();
        }
    }

    private static String g(String str) {
        String a = k.a(str);
        if (a != null) {
            return a;
        }
        int length = str.length();
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < '\u0080' && (charAt == '_' || Character.isLetterOrDigit(charAt))) {
                stringBuilder.append(charAt);
            }
        }
        return stringBuilder.toString();
    }
}
