package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.ads.internal.formats.d;
import com.google.android.gms.ads.internal.formats.e;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.sz;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public class ab {
    public static View a(ps psVar) {
        if (psVar == null) {
            b.b("AdState is null");
            return null;
        } else if (b(psVar)) {
            return psVar.b.b();
        } else {
            try {
                j a = psVar.o.a();
                if (a != null) {
                    return (View) m.a(a);
                }
                b.d("View in mediation adapter is null.");
                return null;
            } catch (Throwable e) {
                b.d("Could not get View from mediation adapter.", e);
                return null;
            }
        }
    }

    private static d a(kq kqVar) throws RemoteException {
        return new d(kqVar.a(), kqVar.b(), kqVar.c(), kqVar.d(), kqVar.e(), kqVar.f(), kqVar.g(), kqVar.h(), null, kqVar.l());
    }

    private static e a(kt ktVar) throws RemoteException {
        return new e(ktVar.a(), ktVar.b(), ktVar.c(), ktVar.d(), ktVar.e(), ktVar.f(), null, ktVar.j());
    }

    static fj a(kq kqVar, kt ktVar, q qVar) {
        return new ag(kqVar, qVar, ktVar);
    }

    static fj a(CountDownLatch countDownLatch) {
        return new ae(countDownLatch);
    }

    private static String a(Bitmap bitmap) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap == null) {
            b.d("Bitmap is null. Returning empty string");
            return BuildConfig.VERSION_NAME;
        }
        bitmap.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
        return "data:image/png;base64," + Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
    }

    static String a(di diVar) {
        if (diVar == null) {
            b.d("Image is null. Returning empty string");
            return BuildConfig.VERSION_NAME;
        }
        try {
            Uri b = diVar.b();
            if (b != null) {
                return b.toString();
            }
        } catch (RemoteException e) {
            b.d("Unable to get image uri. Trying data uri next");
        }
        return b(diVar);
    }

    public static void a(ps psVar, q qVar) {
        if (b(psVar)) {
            sz szVar = psVar.b;
            View b = szVar.b();
            if (b == null) {
                b.d("AdWebView is null");
                return;
            }
            try {
                List list = psVar.n.n;
                if (list == null || list.isEmpty()) {
                    b.d("No template ids present in mediation response");
                    return;
                }
                kq h = psVar.o.h();
                kt i = psVar.o.i();
                if (list.contains("2") && h != null) {
                    h.b(m.a(b));
                    if (!h.j()) {
                        h.i();
                    }
                    szVar.l().a("/nativeExpressViewClicked", a(h, null, qVar));
                } else if (!list.contains("1") || i == null) {
                    b.d("No matching template id and mapper");
                } else {
                    i.b(m.a(b));
                    if (!i.h()) {
                        i.g();
                    }
                    szVar.l().a("/nativeExpressViewClicked", a(null, i, qVar));
                }
            } catch (Throwable e) {
                b.d("Error occurred while recording impression and registering for clicks", e);
            }
        }
    }

    private static void a(sz szVar, d dVar, String str) {
        szVar.l().a(new ac(dVar, str, szVar));
    }

    private static void a(sz szVar, e eVar, String str) {
        szVar.l().a(new ad(eVar, str, szVar));
    }

    private static void a(sz szVar, CountDownLatch countDownLatch) {
        szVar.l().a("/nativeExpressAssetsLoaded", a(countDownLatch));
        szVar.l().a("/nativeExpressAssetsLoadingFailed", b(countDownLatch));
    }

    public static boolean a(sz szVar, ju juVar, CountDownLatch countDownLatch) {
        boolean z = false;
        try {
            z = b(szVar, juVar, countDownLatch);
        } catch (Throwable e) {
            b.d("Unable to invoke load assets", e);
        } catch (RuntimeException e2) {
            countDownLatch.countDown();
            throw e2;
        }
        if (!z) {
            countDownLatch.countDown();
        }
        return z;
    }

    private static di b(Object obj) {
        return obj instanceof IBinder ? dj.a((IBinder) obj) : null;
    }

    static fj b(CountDownLatch countDownLatch) {
        return new af(countDownLatch);
    }

    private static String b(di diVar) {
        try {
            j a = diVar.a();
            if (a == null) {
                b.d("Drawable is null. Returning empty string");
                return BuildConfig.VERSION_NAME;
            }
            Drawable drawable = (Drawable) m.a(a);
            if (drawable instanceof BitmapDrawable) {
                return a(((BitmapDrawable) drawable).getBitmap());
            }
            b.d("Drawable is not an instance of BitmapDrawable. Returning empty string");
            return BuildConfig.VERSION_NAME;
        } catch (RemoteException e) {
            b.d("Unable to get drawable. Returning empty string");
            return BuildConfig.VERSION_NAME;
        }
    }

    private static JSONObject b(Bundle bundle, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bundle == null || TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject(str);
        Iterator keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String str2 = (String) keys.next();
            if (bundle.containsKey(str2)) {
                if ("image".equals(jSONObject2.getString(str2))) {
                    Object obj = bundle.get(str2);
                    if (obj instanceof Bitmap) {
                        jSONObject.put(str2, a((Bitmap) obj));
                    } else {
                        b.d("Invalid type. An image type extra should return a bitmap");
                    }
                } else if (bundle.get(str2) instanceof Bitmap) {
                    b.d("Invalid asset type. Bitmap should be returned only for image type");
                } else {
                    jSONObject.put(str2, String.valueOf(bundle.get(str2)));
                }
            }
        }
        return jSONObject;
    }

    private static void b(sz szVar) {
        OnClickListener A = szVar.A();
        if (A != null) {
            A.onClick(szVar.b());
        }
    }

    public static boolean b(ps psVar) {
        return (psVar == null || !psVar.m || psVar.n == null || psVar.n.k == null) ? false : true;
    }

    private static boolean b(sz szVar, ju juVar, CountDownLatch countDownLatch) throws RemoteException {
        View b = szVar.b();
        if (b == null) {
            b.d("AdWebView is null");
            return false;
        }
        b.setVisibility(4);
        List list = juVar.b.n;
        if (list == null || list.isEmpty()) {
            b.d("No template ids present in mediation response");
            return false;
        }
        a(szVar, countDownLatch);
        kq h = juVar.c.h();
        kt i = juVar.c.i();
        if (list.contains("2") && h != null) {
            a(szVar, a(h), juVar.b.m);
        } else if (!list.contains("1") || i == null) {
            b.d("No matching template id and mapper");
            return false;
        } else {
            a(szVar, a(i), juVar.b.m);
        }
        String str = juVar.b.k;
        String str2 = juVar.b.l;
        if (str2 != null) {
            szVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
        } else {
            szVar.loadData(str, "text/html", "UTF-8");
        }
        return true;
    }
}
