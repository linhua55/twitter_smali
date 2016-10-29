package com.google.android.gms.ads.internal.util.client;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.support.annotation.Nullable;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.b;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.d;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.n;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.vu;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

@oi
public class a {
    public static final Handler a;
    private static final String b;
    private static final String c;
    private static final String d;
    private static final String e;
    private static final String f;
    private static final String g;

    static {
        a = new Handler(Looper.getMainLooper());
        b = AdView.class.getName();
        c = i.class.getName();
        d = PublisherAdView.class.getName();
        e = d.class.getName();
        f = SearchAdView.class.getName();
        g = b.class.getName();
    }

    private void a(ViewGroup viewGroup, AdSizeParcel adSizeParcel, String str, int i, int i2) {
        if (viewGroup.getChildCount() == 0) {
            Context context = viewGroup.getContext();
            View textView = new TextView(context);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextColor(i);
            textView.setBackgroundColor(i2);
            View frameLayout = new FrameLayout(context);
            frameLayout.setBackgroundColor(i);
            int a = a(context, 3);
            frameLayout.addView(textView, new LayoutParams(adSizeParcel.g - a, adSizeParcel.d - a, 17));
            viewGroup.addView(frameLayout, adSizeParcel.g, adSizeParcel.d);
        }
    }

    public int a(Context context, int i) {
        return a(context.getResources().getDisplayMetrics(), i);
    }

    public int a(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, (float) i, displayMetrics);
    }

    public String a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Secure.getString(contentResolver, "android_id");
        if (string == null || a()) {
            string = "emulator";
        }
        return a(string);
    }

    public String a(String str) {
        int i = 0;
        while (i < 2) {
            try {
                MessageDigest.getInstance("MD5").update(str.getBytes());
                return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, r1.digest())});
            } catch (NoSuchAlgorithmException e) {
                i++;
            }
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    java.lang.String a(java.lang.String r6, java.lang.String r7, int r8) {
        /*
        r5 = this;
        r2 = new java.util.StringTokenizer;
        r2.<init>(r6, r7);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r0 = r8 + -1;
        if (r8 <= 0) goto L_0x0039;
    L_0x000e:
        r1 = r2.hasMoreElements();
        if (r1 == 0) goto L_0x0039;
    L_0x0014:
        r1 = r2.nextToken();
        r3.append(r1);
    L_0x001b:
        r1 = r0 + -1;
        if (r0 <= 0) goto L_0x0035;
    L_0x001f:
        r0 = r2.hasMoreElements();
        if (r0 == 0) goto L_0x0035;
    L_0x0025:
        r0 = ".";
        r0 = r3.append(r0);
        r4 = r2.nextToken();
        r0.append(r4);
        r0 = r1;
        goto L_0x001b;
    L_0x0035:
        r6 = r3.toString();
    L_0x0039:
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.client.a.a(java.lang.String, java.lang.String, int):java.lang.String");
    }

    @Nullable
    public String a(StackTraceElement[] stackTraceElementArr, String str) {
        String className;
        for (int i = 0; i + 1 < stackTraceElementArr.length; i++) {
            StackTraceElement stackTraceElement = stackTraceElementArr[i];
            String className2 = stackTraceElement.getClassName();
            if ("loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) && (b.equalsIgnoreCase(className2) || c.equalsIgnoreCase(className2) || d.equalsIgnoreCase(className2) || e.equalsIgnoreCase(className2) || f.equalsIgnoreCase(className2) || g.equalsIgnoreCase(className2))) {
                className = stackTraceElementArr[i + 1].getClassName();
                break;
            }
        }
        className = null;
        if (str != null) {
            CharSequence a = a(str, ".", 3);
            if (!(className == null || className.contains(a))) {
                return className;
            }
        }
        return null;
    }

    public void a(ViewGroup viewGroup, AdSizeParcel adSizeParcel, String str) {
        a(viewGroup, adSizeParcel, str, ViewCompat.MEASURED_STATE_MASK, -1);
    }

    public void a(ViewGroup viewGroup, AdSizeParcel adSizeParcel, String str, String str2) {
        b.d(str2);
        a(viewGroup, adSizeParcel, str, SupportMenu.CATEGORY_MASK, ViewCompat.MEASURED_STATE_MASK);
    }

    public boolean a() {
        return Build.DEVICE.startsWith("generic");
    }

    public int b(Context context, int i) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return b(displayMetrics, i);
    }

    public int b(DisplayMetrics displayMetrics, int i) {
        return Math.round(((float) i) / displayMetrics.density);
    }

    public boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public boolean b(Context context) {
        return n.isGooglePlayServicesAvailable(context) == 0;
    }

    public boolean c(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    public boolean d(Context context) {
        int i;
        int i2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (vu.e()) {
            defaultDisplay.getRealMetrics(displayMetrics);
            i = displayMetrics.heightPixels;
            i2 = displayMetrics.widthPixels;
        } else {
            try {
                i = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                i2 = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e) {
                return false;
            }
        }
        defaultDisplay.getMetrics(displayMetrics);
        boolean z = displayMetrics.heightPixels == i && displayMetrics.widthPixels == i2;
        return z;
    }

    public int e(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
        return identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
    }
}
