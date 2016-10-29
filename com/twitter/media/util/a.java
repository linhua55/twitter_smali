package com.twitter.media.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.o;
import com.twitter.util.collection.i;
import com.twitter.util.concurrent.e;
import com.twitter.util.math.Size;
import defpackage.bbn;
import defpackage.bbr;
import defpackage.cun;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class a {
    public static final PorterDuffXfermode a;
    public static final i<Bitmap> b;

    static {
        a = new PorterDuffXfermode(Mode.SRC_IN);
        b = new c(null);
    }

    public static Bitmap a(Bitmap bitmap) {
        try {
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), null, false);
        } catch (OutOfMemoryError e) {
            bbr.a(e);
            return null;
        }
    }

    public static Bitmap a(Bitmap bitmap, Rect rect, Matrix matrix, boolean z) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (matrix == null || matrix.isIdentity()) {
            if (rect == null) {
                return bitmap;
            }
            if (rect.width() == width && rect.height() == height) {
                return bitmap;
            }
        }
        if (rect == null) {
            return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, z);
        }
        try {
            int i = rect.top;
            int i2 = rect.left;
            return Bitmap.createBitmap(bitmap, i2, i, com.twitter.util.math.a.a(rect.width(), 0, width - i2), com.twitter.util.math.a.a(rect.height(), 0, height - i), matrix, z);
        } catch (OutOfMemoryError e) {
            bbr.a(e);
            return null;
        }
    }

    public static Bitmap a(Size size, Config config) {
        try {
            return Bitmap.createBitmap(size.a(), size.b(), config);
        } catch (OutOfMemoryError e) {
            bbr.a(e);
            return null;
        }
    }

    public static boolean a(Bitmap bitmap, File file, CompressFormat compressFormat, int i) {
        Closeable fileOutputStream;
        OutOfMemoryError e;
        Throwable th;
        Throwable e2;
        boolean z = false;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                z = bitmap.compress(compressFormat, com.twitter.util.math.a.a(i, 0, 100), fileOutputStream);
                cun.a(fileOutputStream);
            } catch (OutOfMemoryError e3) {
                e = e3;
                try {
                    bbr.a(e);
                    cun.a(fileOutputStream);
                    return z;
                } catch (Throwable th2) {
                    th = th2;
                    cun.a(fileOutputStream);
                    throw th;
                }
            } catch (IOException e4) {
                e2 = e4;
                bbn.a(e2);
                cun.a(fileOutputStream);
                return z;
            }
        } catch (OutOfMemoryError e5) {
            e = e5;
            fileOutputStream = null;
            bbr.a(e);
            cun.a(fileOutputStream);
            return z;
        } catch (IOException e6) {
            e2 = e6;
            fileOutputStream = null;
            bbn.a(e2);
            cun.a(fileOutputStream);
            return z;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            cun.a(fileOutputStream);
            throw th;
        }
        return z;
    }

    public static File a(Bitmap bitmap, CompressFormat compressFormat, int i) {
        String str = compressFormat == CompressFormat.PNG ? "png" : "jpg";
        o e = PlatformContext.f().e();
        File a = e.a(str);
        if (a != null && a(bitmap, a, compressFormat, i)) {
            return a;
        }
        e.b(a);
        return null;
    }

    public static int a(Config config) {
        switch (b.a[config.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return 4;
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return 2;
            default:
                return 1;
        }
    }

    @TargetApi(19)
    public static int b(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        if (VERSION.SDK_INT >= 19) {
            return bitmap.getAllocationByteCount();
        }
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public static void a(View view, e<Bitmap> eVar) {
        if (view != null) {
            if (view instanceof ImageView) {
                Drawable drawable = ((ImageView) view).getDrawable();
                if (drawable != null && (drawable instanceof BitmapDrawable)) {
                    Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                    if (bitmap != null) {
                        eVar.a(bitmap);
                    }
                }
            } else if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    a(viewGroup.getChildAt(i), (e) eVar);
                }
            }
        }
    }

    public static void a(Activity activity, e<Bitmap> eVar) {
        if (activity != null) {
            Window window = activity.getWindow();
            if (window != null) {
                a(window.getDecorView(), (e) eVar);
            }
            if (activity instanceof FragmentActivity) {
                List<Fragment> fragments = ((FragmentActivity) activity).getSupportFragmentManager().getFragments();
                if (fragments != null) {
                    for (Fragment fragment : fragments) {
                        if (fragment != null) {
                            a(fragment.getView(), (e) eVar);
                        }
                    }
                }
            }
        }
    }
}
