package com.twitter.media.filters;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import com.twitter.media.MediaUtils;
import com.twitter.media.NativeInit;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Twttr */
public class Filters {
    private static final Map<Integer, String> a;
    private static final Map<String, Integer> b;
    private int c;
    private a d;
    private ContentResolver e;
    private ArrayList<Integer> f;

    private static native boolean nativeBlur(Context context, AssetFileDescriptor assetFileDescriptor, String str, FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, int i, int i2, boolean z, float f);

    private static native int nativeCreateBitmapImageSource(int i, Bitmap bitmap, boolean z);

    private static native int nativeCreateDynamicImageSource(int i, int i2, int i3);

    private static native int nativeCreateStaticImageSource(int i, AssetFileDescriptor assetFileDescriptor, int i2, int i3, boolean z, int i4, int i5, int i6, int i7);

    private static native void nativeDispose(int i, boolean z);

    private static native void nativeDisposeImageSource(int i, int i2);

    private static native boolean nativeFilter(int i, String str, int i2, Bitmap bitmap, float f, float f2);

    private static native boolean nativeFilterToFile(int i, String str, int i2, FileDescriptor fileDescriptor, float f, float f2);

    private static native String nativeGetFilterIdentifier(int i, int i2);

    private static native String[] nativeGetFilterIdentifiers(int i);

    private static native String nativeGetFilterName(int i, String str);

    private static native int nativeGetImageSourceTexId(int i, int i2);

    private static native int nativeInit(Context context, AssetFileDescriptor assetFileDescriptor, String str, boolean z);

    private static native boolean nativeRenderFilterPreview(int i, String str, int i2, float f, float f2, String str2, float f3);

    static {
        a = new HashMap();
        b = new HashMap();
        NativeInit.a();
        a.put(Integer.valueOf(0), "none");
        a.put(Integer.valueOf(1), "vignette");
        a.put(Integer.valueOf(2), "warm");
        a.put(Integer.valueOf(3), "cool");
        a.put(Integer.valueOf(4), "1963");
        a.put(Integer.valueOf(5), "1972");
        a.put(Integer.valueOf(6), "goldenhour");
        a.put(Integer.valueOf(7), "antique");
        a.put(Integer.valueOf(8), "bw");
        a.put(Integer.valueOf(9), "exposure");
        a.put(Integer.valueOf(10), "positive");
        a.put(Integer.valueOf(11), "warm");
        a.put(Integer.valueOf(12), "cool");
        a.put(Integer.valueOf(13), "balance");
        a.put(Integer.valueOf(14), "retro");
        a.put(Integer.valueOf(15), "x-pro");
        a.put(Integer.valueOf(16), "raven");
        for (Integer num : a.keySet()) {
            b.put(a.get(num), num);
        }
    }

    public Filters() {
        this.c = 0;
        this.f = new ArrayList();
    }

    public Filters(a aVar) {
        this.c = 0;
        this.f = new ArrayList();
        this.d = aVar;
    }

    public synchronized boolean a(Context context, AssetFileDescriptor assetFileDescriptor, boolean z) {
        boolean z2;
        boolean z3 = true;
        boolean z4 = false;
        synchronized (this) {
            this.e = context.getContentResolver();
            boolean z5;
            try {
                if (this.d == null) {
                    this.d = new a();
                    if (this.d.a()) {
                        z2 = true;
                    } else {
                        this.d = null;
                    }
                } else {
                    z2 = false;
                }
                try {
                    if (this.d.c()) {
                        try {
                            this.c = nativeInit(context, assetFileDescriptor, Build.MODEL, z);
                            z5 = this.c > 0;
                        } catch (Exception e) {
                            z5 = z2;
                            if (!z5) {
                                this.d.e();
                                this.d = null;
                            } else if (z3) {
                                this.d.d();
                            }
                            return z4;
                        } catch (Throwable th) {
                            th = th;
                            if (z2) {
                                if (z3) {
                                    this.d.d();
                                }
                                throw th;
                            }
                            this.d.e();
                            this.d = null;
                            return z4;
                        }
                    }
                    z3 = false;
                    z5 = false;
                    if (!z2 || z5) {
                        if (z3) {
                            this.d.d();
                            z4 = z5;
                        } else {
                            z4 = z5;
                        }
                    } else {
                        this.d.e();
                        this.d = null;
                    }
                } catch (Exception e2) {
                    z5 = z2;
                    z3 = false;
                    if (!z5) {
                        this.d.e();
                        this.d = null;
                    } else if (z3) {
                        this.d.d();
                    }
                    return z4;
                } catch (Throwable th2) {
                    th = th2;
                    z3 = false;
                    if (z2) {
                        this.d.e();
                        this.d = null;
                        return z4;
                    }
                    if (z3) {
                        this.d.d();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                z5 = false;
                z3 = false;
                if (!z5) {
                    this.d.e();
                    this.d = null;
                } else if (z3) {
                    this.d.d();
                }
                return z4;
            } catch (Throwable th3) {
                th = th3;
                z2 = false;
                z3 = false;
                if (z2) {
                    this.d.e();
                    this.d = null;
                    return z4;
                }
                Throwable th4;
                if (z3) {
                    this.d.d();
                }
                throw th4;
            }
        }
        return z4;
    }

    public int a(Uri uri, int i, int i2, boolean z) {
        return a(uri, i, i2, z, 0, 0, 0, 0);
    }

    public synchronized int a(Uri uri, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        if (this.c <= 0 || this.d == null || !this.d.c()) {
            i7 = 0;
        } else {
            AssetFileDescriptor assetFileDescriptor = null;
            try {
                assetFileDescriptor = this.e.openAssetFileDescriptor(uri, "r");
                i7 = nativeCreateStaticImageSource(this.c, assetFileDescriptor, i, i2, z, i3, i4, i5, i6);
                MediaUtils.a(assetFileDescriptor);
            } catch (Exception e) {
                MediaUtils.a(assetFileDescriptor);
                i7 = 0;
            } catch (Throwable th) {
                MediaUtils.a(assetFileDescriptor);
            }
            if (i7 != 0) {
                this.f.add(Integer.valueOf(i7));
            }
            this.d.d();
        }
        return i7;
    }

    public synchronized int a(Bitmap bitmap, boolean z) {
        int i;
        i = 0;
        if (this.c > 0 && this.d != null && this.d.c()) {
            try {
                i = nativeCreateBitmapImageSource(this.c, bitmap, z);
            } catch (Exception e) {
            }
            if (i != 0) {
                this.f.add(Integer.valueOf(i));
            }
            this.d.d();
        }
        return i;
    }

    public synchronized void a(int i) {
        if (this.c > 0 && this.d != null && this.d.c()) {
            try {
                nativeDisposeImageSource(this.c, i);
            } catch (Exception e) {
            }
            this.d.d();
        }
    }

    public synchronized boolean a(int i, int i2, float f, float f2, int i3, float f3) {
        boolean nativeRenderFilterPreview;
        if (this.c > 0) {
            try {
                nativeRenderFilterPreview = nativeRenderFilterPreview(this.c, (String) a.get(Integer.valueOf(i)), i2, f, f2, (String) a.get(Integer.valueOf(i3)), f3);
            } catch (Exception e) {
                nativeRenderFilterPreview = false;
            }
        } else {
            nativeRenderFilterPreview = false;
        }
        return nativeRenderFilterPreview;
    }

    public synchronized boolean a(int i, int i2, Bitmap bitmap, float f, float f2) {
        boolean z;
        if (this.c <= 0 || this.d == null || !this.d.c()) {
            z = false;
        } else {
            try {
                z = nativeFilter(this.c, (String) a.get(Integer.valueOf(i)), i2, bitmap, f, f2);
            } catch (Exception e) {
                z = false;
            }
            this.d.d();
        }
        return z;
    }

    public synchronized boolean a(int i, int i2, File file, float f, float f2) {
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            Closeable closeable = null;
            try {
                Closeable fileOutputStream = new FileOutputStream(file);
                try {
                    FileDescriptor fd = fileOutputStream.getFD();
                    if (this.c > 0 && this.d != null && this.d.c()) {
                        try {
                            z2 = nativeFilterToFile(this.c, (String) a.get(Integer.valueOf(i)), i2, fd, f, f2);
                        } catch (Exception e) {
                        }
                        this.d.d();
                    }
                    z = z2;
                    MediaUtils.a(fileOutputStream);
                } catch (IOException e2) {
                    closeable = fileOutputStream;
                    MediaUtils.a(closeable);
                    z = z2;
                    return z;
                }
            } catch (IOException e3) {
                MediaUtils.a(closeable);
                z = z2;
                return z;
            }
        }
        return z;
    }

    public synchronized String b(int i) {
        return (String) a.get(Integer.valueOf(i));
    }

    public synchronized int[] a() {
        int[] iArr;
        String[] nativeGetFilterIdentifiers = nativeGetFilterIdentifiers(this.c);
        if (nativeGetFilterIdentifiers == null || nativeGetFilterIdentifiers.length == 0) {
            iArr = null;
        } else {
            int[] iArr2 = new int[nativeGetFilterIdentifiers.length];
            for (int i = 0; i < nativeGetFilterIdentifiers.length; i++) {
                iArr2[i] = ((Integer) b.get(nativeGetFilterIdentifiers[i])).intValue();
            }
            iArr = iArr2;
        }
        return iArr;
    }

    public synchronized void b() {
        a(true);
    }

    public synchronized void a(boolean z) {
        if (this.c > 0) {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                a(((Integer) it.next()).intValue());
            }
            this.f.clear();
            boolean z2 = this.d != null && this.d.c();
            nativeDispose(this.c, z2);
            if (z2) {
                this.d.d();
            }
        }
        if (z && this.d != null) {
            this.d.e();
            this.d = null;
        }
    }

    public a c() {
        return this.d;
    }

    protected void finalize() throws Throwable {
        a(false);
        super.finalize();
    }
}
