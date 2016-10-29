package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.media.AudioManager;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.support.annotation.Nullable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.google.android.gms.ads.internal.ah;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.n;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public class qw {
    public static final Handler a;
    private final Object b;
    private boolean c;
    private String d;
    private boolean e;

    static {
        a = new qe(Looper.getMainLooper());
    }

    public qw() {
        this.b = new Object();
        this.c = true;
        this.e = false;
    }

    private JSONArray a(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Object a : collection) {
            a(jSONArray, a);
        }
        return jSONArray;
    }

    private JSONObject a(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            a(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public static void a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            a.post(runnable);
        }
    }

    private void a(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(a((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(a((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(a((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONArray.put(a((Object[]) obj));
        } else {
            jSONArray.put(obj);
        }
    }

    private void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONObject.put(str, a((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, a((Map) obj));
        } else if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, a((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, a(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    private boolean a(KeyguardManager keyguardManager) {
        return keyguardManager == null ? false : keyguardManager.inKeyguardRestrictedInputMode();
    }

    private boolean a(PowerManager powerManager) {
        return powerManager == null || powerManager.isScreenOn();
    }

    private boolean k(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null ? false : powerManager.isScreenOn();
    }

    public Bitmap a(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    public DisplayMetrics a(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public PopupWindow a(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, z);
    }

    public String a(Context context, View view, AdSizeParcel adSizeParcel) {
        String str = null;
        if (((Boolean) cj.Z.c()).booleanValue()) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("width", adSizeParcel.f);
                jSONObject2.put("height", adSizeParcel.c);
                jSONObject.put("size", jSONObject2);
                jSONObject.put("activity", f(context));
                if (!adSizeParcel.e) {
                    JSONArray jSONArray = new JSONArray();
                    while (view != null) {
                        ViewParent parent = view.getParent();
                        if (parent != null) {
                            int i = -1;
                            if (parent instanceof ViewGroup) {
                                i = ((ViewGroup) parent).indexOfChild(view);
                            }
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("type", parent.getClass().getName());
                            jSONObject3.put("index_of_child", i);
                            jSONArray.put(jSONObject3);
                        }
                        View view2 = (parent == null || !(parent instanceof View)) ? null : (View) parent;
                        view = view2;
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("parents", jSONArray);
                    }
                }
                str = jSONObject.toString();
            } catch (Throwable e) {
                b.d("Fail to get view hierarchy json", e);
            }
        }
        return str;
    }

    public String a(Context context, y yVar, String str) {
        if (yVar != null) {
            try {
                Uri parse = Uri.parse(str);
                if (yVar.c(parse)) {
                    parse = yVar.a(parse, context);
                }
                str = parse.toString();
            } catch (Exception e) {
            }
        }
        return str;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String a(android.content.Context r4, java.lang.String r5) {
        /*
        r3 = this;
        r1 = r3.b;
        monitor-enter(r1);
        r0 = r3.d;	 Catch:{ all -> 0x005f }
        if (r0 == 0) goto L_0x000b;
    L_0x0007:
        r0 = r3.d;	 Catch:{ all -> 0x005f }
        monitor-exit(r1);	 Catch:{ all -> 0x005f }
    L_0x000a:
        return r0;
    L_0x000b:
        r0 = com.google.android.gms.ads.internal.ar.g();	 Catch:{ Exception -> 0x0098 }
        r0 = r0.a(r4);	 Catch:{ Exception -> 0x0098 }
        r3.d = r0;	 Catch:{ Exception -> 0x0098 }
    L_0x0015:
        r0 = r3.d;	 Catch:{ all -> 0x005f }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ all -> 0x005f }
        if (r0 == 0) goto L_0x0068;
    L_0x001d:
        r0 = com.google.android.gms.ads.internal.client.aa.a();	 Catch:{ all -> 0x005f }
        r0 = r0.b();	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x0062;
    L_0x0027:
        r0 = 0;
        r3.d = r0;	 Catch:{ all -> 0x005f }
        r0 = a;	 Catch:{ all -> 0x005f }
        r2 = new com.google.android.gms.internal.qx;	 Catch:{ all -> 0x005f }
        r2.<init>(r3, r4);	 Catch:{ all -> 0x005f }
        r0.post(r2);	 Catch:{ all -> 0x005f }
    L_0x0034:
        r0 = r3.d;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x0068;
    L_0x0038:
        r0 = r3.b;	 Catch:{ InterruptedException -> 0x003e }
        r0.wait();	 Catch:{ InterruptedException -> 0x003e }
        goto L_0x0034;
    L_0x003e:
        r0 = move-exception;
        r0 = r3.b();	 Catch:{ all -> 0x005f }
        r3.d = r0;	 Catch:{ all -> 0x005f }
        r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x005f }
        r0.<init>();	 Catch:{ all -> 0x005f }
        r2 = "Interrupted, use default user agent: ";
        r0 = r0.append(r2);	 Catch:{ all -> 0x005f }
        r2 = r3.d;	 Catch:{ all -> 0x005f }
        r0 = r0.append(r2);	 Catch:{ all -> 0x005f }
        r0 = r0.toString();	 Catch:{ all -> 0x005f }
        com.google.android.gms.ads.internal.util.client.b.d(r0);	 Catch:{ all -> 0x005f }
        goto L_0x0034;
    L_0x005f:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x005f }
        throw r0;
    L_0x0062:
        r0 = r3.c(r4);	 Catch:{ Exception -> 0x0090 }
        r3.d = r0;	 Catch:{ Exception -> 0x0090 }
    L_0x0068:
        r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x005f }
        r0.<init>();	 Catch:{ all -> 0x005f }
        r2 = r3.d;	 Catch:{ all -> 0x005f }
        r0 = r0.append(r2);	 Catch:{ all -> 0x005f }
        r2 = " (Mobile; ";
        r0 = r0.append(r2);	 Catch:{ all -> 0x005f }
        r0 = r0.append(r5);	 Catch:{ all -> 0x005f }
        r2 = ")";
        r0 = r0.append(r2);	 Catch:{ all -> 0x005f }
        r0 = r0.toString();	 Catch:{ all -> 0x005f }
        r3.d = r0;	 Catch:{ all -> 0x005f }
        r0 = r3.d;	 Catch:{ all -> 0x005f }
        monitor-exit(r1);	 Catch:{ all -> 0x005f }
        goto L_0x000a;
    L_0x0090:
        r0 = move-exception;
        r0 = r3.b();	 Catch:{ all -> 0x005f }
        r3.d = r0;	 Catch:{ all -> 0x005f }
        goto L_0x0068;
    L_0x0098:
        r0 = move-exception;
        goto L_0x0015;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.qw.a(android.content.Context, java.lang.String):java.lang.String");
    }

    public String a(sz szVar, String str) {
        return a(szVar.getContext(), szVar.n(), str);
    }

    public String a(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder stringBuilder = new StringBuilder(AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
        char[] cArr = new char[ItemAnimator.FLAG_MOVED];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return stringBuilder.toString();
            }
            stringBuilder.append(cArr, 0, read);
        }
    }

    public String a(String str) {
        return Uri.parse(str).buildUpon().query(null).build().toString();
    }

    public Map<String, String> a(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : ar.g().a(uri)) {
            hashMap.put(str, uri.getQueryParameter(str));
        }
        return hashMap;
    }

    JSONArray a(Object[] objArr) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Object a : objArr) {
            a(jSONArray, a);
        }
        return jSONArray;
    }

    public JSONObject a(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                a(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            throw new JSONException("Could not convert map to JSON: " + e.getMessage());
        }
    }

    public void a(Activity activity, OnGlobalLayoutListener onGlobalLayoutListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            window.getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public void a(Activity activity, OnScrollChangedListener onScrollChangedListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            window.getDecorView().getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
        }
    }

    public void a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public void a(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(a(context, str));
    }

    public void a(Context context, String str, String str2) {
        List arrayList = new ArrayList();
        arrayList.add(str2);
        a(context, str, arrayList);
    }

    public void a(Context context, @Nullable String str, String str2, Bundle bundle, boolean z) {
        if (z) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            bundle.putString("os", VERSION.RELEASE);
            bundle.putString("api", String.valueOf(VERSION.SDK_INT));
            bundle.putString("device", ar.e().d());
            bundle.putString("appid", applicationContext.getPackageName());
            bundle.putString("eids", TextUtils.join(",", cj.a()));
            if (str != null) {
                bundle.putString("js", str);
            } else {
                bundle.putString("gmscore_version", Integer.toString(n.zzaj(context)));
            }
        }
        Builder appendQueryParameter = new Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str3 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        ar.e().a(context, str, appendQueryParameter.toString());
    }

    public void a(Context context, String str, List<String> list) {
        for (String sbVar : list) {
            new sb(context, str, sbVar).g();
        }
    }

    public void a(Context context, String str, List<String> list, String str2) {
        for (String sbVar : list) {
            new sb(context, str, sbVar, str2).g();
        }
    }

    public void a(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        a(context, str, z, httpURLConnection, false);
    }

    public void a(Context context, String str, boolean z, HttpURLConnection httpURLConnection, String str2) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(z);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", str2);
        httpURLConnection.setUseCaches(false);
    }

    public void a(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(z);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", a(context, str));
        httpURLConnection.setUseCaches(z2);
    }

    public boolean a() {
        return this.c;
    }

    public boolean a(Context context) {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, AccessibilityNodeInfoCompat.ACTION_CUT);
        if (resolveActivity == null || resolveActivity.activityInfo == null) {
            b.d("Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.");
            return false;
        }
        boolean z;
        String str = "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".";
        if ((resolveActivity.activityInfo.configChanges & 16) == 0) {
            b.d(String.format(str, new Object[]{"keyboard"}));
            z = false;
        } else {
            z = true;
        }
        if ((resolveActivity.activityInfo.configChanges & 32) == 0) {
            b.d(String.format(str, new Object[]{"keyboardHidden"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) == 0) {
            b.d(String.format(str, new Object[]{"orientation"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY) == 0) {
            b.d(String.format(str, new Object[]{"screenLayout"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY) == 0) {
            b.d(String.format(str, new Object[]{"uiMode"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT) == 0) {
            b.d(String.format(str, new Object[]{"screenSize"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & ItemAnimator.FLAG_MOVED) != 0) {
            return z;
        }
        b.d(String.format(str, new Object[]{"smallestScreenSize"}));
        return false;
    }

    public boolean a(Context context, Bitmap bitmap, String str) {
        bm.c("saveImageToFile must not be called on the main UI thread.");
        try {
            OutputStream openFileOutput = context.openFileOutput(str, 0);
            bitmap.compress(CompressFormat.PNG, 100, openFileOutput);
            openFileOutput.close();
            bitmap.recycle();
            return true;
        } catch (Throwable e) {
            b.b("Fail to save file", e);
            return false;
        }
    }

    public boolean a(PackageManager packageManager, String str, String str2) {
        return packageManager.checkPermission(str2, str) == 0;
    }

    public boolean a(View view, Context context) {
        KeyguardManager keyguardManager = null;
        Context applicationContext = context.getApplicationContext();
        PowerManager powerManager = applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null;
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return a(view, powerManager, keyguardManager);
    }

    public boolean a(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        return view.getVisibility() == 0 && view.isShown() && a(powerManager) && (ar.e().a() || !a(keyguardManager));
    }

    public boolean a(ClassLoader classLoader, Class<?> cls, String str) {
        boolean z = false;
        try {
            z = cls.isAssignableFrom(Class.forName(str, false, classLoader));
        } catch (Throwable th) {
        }
        return z;
    }

    public int[] a(Activity activity) {
        Window window = activity.getWindow();
        if (window == null || window.findViewById(16908290) == null) {
            return e();
        }
        return new int[]{window.findViewById(16908290).getWidth(), window.findViewById(16908290).getHeight()};
    }

    public int b(@Nullable View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        return parent == null ? -1 : ((AdapterView) parent).getPositionForView(view);
    }

    public int b(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            b.d("Could not parse value:" + e);
            return 0;
        }
    }

    public Bitmap b(Context context, String str) {
        bm.c("getBackgroundImage must not be called on the main UI thread.");
        try {
            InputStream openFileInput = context.openFileInput(str);
            Bitmap decodeStream = BitmapFactory.decodeStream(openFileInput);
            openFileInput.close();
            return decodeStream;
        } catch (Exception e) {
            b.b("Fail to get background image");
            return null;
        }
    }

    String b() {
        StringBuffer stringBuffer = new StringBuffer(AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
        stringBuffer.append("Mozilla/5.0 (Linux; U; Android");
        if (VERSION.RELEASE != null) {
            stringBuffer.append(" ").append(VERSION.RELEASE);
        }
        stringBuffer.append("; ").append(Locale.getDefault());
        if (Build.DEVICE != null) {
            stringBuffer.append("; ").append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                stringBuffer.append(" Build/").append(Build.DISPLAY);
            }
        }
        stringBuffer.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return stringBuffer.toString();
    }

    public void b(Activity activity, OnScrollChangedListener onScrollChangedListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            window.getDecorView().getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
        }
    }

    public void b(Context context, String str, String str2, Bundle bundle, boolean z) {
        if (((Boolean) cj.an.c()).booleanValue()) {
            a(context, str, str2, bundle, z);
        }
    }

    public boolean b(Context context) {
        if (this.e) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new qy(this, null), intentFilter);
        this.e = true;
        return true;
    }

    public int[] b(Activity activity) {
        int[] a = a(activity);
        return new int[]{aa.a().b((Context) activity, a[0]), aa.a().b((Context) activity, a[1])};
    }

    public String c() {
        UUID randomUUID = UUID.randomUUID();
        byte[] toByteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] toByteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, toByteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(toByteArray);
                instance.update(toByteArray2);
                Object obj = new byte[8];
                System.arraycopy(instance.digest(), 0, obj, 0, 8);
                bigInteger = new BigInteger(1, obj).toString();
            } catch (NoSuchAlgorithmException e) {
            }
        }
        return bigInteger;
    }

    protected String c(Context context) {
        return new WebView(context).getSettings().getUserAgentString();
    }

    public void c(Context context, String str) {
        bm.c("deleteFile must not be called on the main UI thread.");
        context.deleteFile(str);
    }

    public boolean c(String str) {
        return TextUtils.isEmpty(str) ? false : str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public int[] c(Activity activity) {
        Window window = activity.getWindow();
        if (window == null || window.findViewById(16908290) == null) {
            return e();
        }
        return new int[]{window.findViewById(16908290).getTop(), window.findViewById(16908290).getBottom()};
    }

    public AlertDialog.Builder d(Context context) {
        return new AlertDialog.Builder(context);
    }

    public String d() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : str + " " + str2;
    }

    public int[] d(Activity activity) {
        int[] c = c(activity);
        return new int[]{aa.a().b((Context) activity, c[0]), aa.a().b((Context) activity, c[1])};
    }

    public bw e(Context context) {
        return new bw(context);
    }

    protected int[] e() {
        return new int[]{0, 0};
    }

    public float f() {
        ah a = ar.s().a();
        return (a == null || !a.d()) ? 1.0f : a.c();
    }

    public String f(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                return null;
            }
            List runningTasks = activityManager.getRunningTasks(1);
            if (!(runningTasks == null || runningTasks.isEmpty())) {
                RunningTaskInfo runningTaskInfo = (RunningTaskInfo) runningTasks.get(0);
                if (!(runningTaskInfo == null || runningTaskInfo.topActivity == null)) {
                    return runningTaskInfo.topActivity.getClassName();
                }
            }
            return null;
        } catch (Exception e) {
        }
    }

    public boolean g(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null) {
                return false;
            }
            List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && k(context)) {
                        return true;
                    }
                    return false;
                }
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public Bitmap h(Context context) {
        if (!(context instanceof Activity)) {
            return null;
        }
        try {
            View decorView = ((Activity) context).getWindow().getDecorView();
            Bitmap createBitmap = Bitmap.createBitmap(decorView.getWidth(), decorView.getHeight(), Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            decorView.layout(0, 0, decorView.getWidth(), decorView.getHeight());
            decorView.draw(canvas);
            return createBitmap;
        } catch (Throwable e) {
            b.b("Fail to capture screen shot", e);
            return null;
        }
    }

    public float i(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        return streamMaxVolume == 0 ? 0.0f : ((float) audioManager.getStreamVolume(3)) / ((float) streamMaxVolume);
    }

    public int j(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo == null ? 0 : applicationInfo.targetSdkVersion;
    }
}
