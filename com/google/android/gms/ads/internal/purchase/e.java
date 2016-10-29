package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.mm;
import com.google.android.gms.internal.oi;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@oi
public class e extends mm {
    private String a;
    private Context b;
    private String c;
    private ArrayList<String> d;

    public e(String str, ArrayList<String> arrayList, Context context, String str2) {
        this.c = str;
        this.d = arrayList;
        this.a = str2;
        this.b = context;
    }

    protected int a(int i) {
        return i == 0 ? 1 : i == 1 ? 2 : i == 4 ? 3 : 0;
    }

    public String a() {
        return this.c;
    }

    protected String a(String str, HashMap<String, String> hashMap) {
        Object obj;
        String packageName = this.b.getPackageName();
        Object obj2 = BuildConfig.VERSION_NAME;
        try {
            obj = this.b.getPackageManager().getPackageInfo(packageName, 0).versionName;
        } catch (Throwable e) {
            b.d("Error to retrieve app version", e);
            obj = obj2;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - ar.h().d().a();
        for (String str2 : hashMap.keySet()) {
            str = str.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{str2}), String.format("$1%s$2", new Object[]{hashMap.get(str2)}));
        }
        return str.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"sessionid"}), String.format("$1%s$2", new Object[]{ar.h().a()})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"appid"}), String.format("$1%s$2", new Object[]{packageName})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"osversion"}), String.format("$1%s$2", new Object[]{String.valueOf(VERSION.SDK_INT)})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"sdkversion"}), String.format("$1%s$2", new Object[]{this.a})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"appversion"}), String.format("$1%s$2", new Object[]{obj})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"timestamp"}), String.format("$1%s$2", new Object[]{String.valueOf(elapsedRealtime)})).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"[^@]+"}), String.format("$1%s$2", new Object[]{BuildConfig.VERSION_NAME})).replaceAll("@@", "@");
    }

    void b() {
        try {
            this.b.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[]{Context.class, String.class, String.class, Boolean.TYPE}).invoke(null, new Object[]{this.b, this.c, BuildConfig.VERSION_NAME, Boolean.valueOf(true)});
        } catch (ClassNotFoundException e) {
            b.d("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (NoSuchMethodException e2) {
            b.d("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (Throwable e3) {
            b.d("Fail to report a conversion.", e3);
        }
    }

    public void b(int i) {
        if (i == 1) {
            b();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompatApi21.CATEGORY_STATUS, String.valueOf(i));
        hashMap.put("sku", this.c);
        List linkedList = new LinkedList();
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            linkedList.add(a((String) it.next(), hashMap));
        }
        ar.e().a(this.b, this.a, linkedList);
    }

    public void c(int i) {
        if (i == 0) {
            b();
        }
        HashMap hashMap = new HashMap();
        hashMap.put("google_play_status", String.valueOf(i));
        hashMap.put("sku", this.c);
        hashMap.put(NotificationCompatApi21.CATEGORY_STATUS, String.valueOf(a(i)));
        List linkedList = new LinkedList();
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            linkedList.add(a((String) it.next(), hashMap));
        }
        ar.e().a(this.b, this.a, linkedList);
    }
}
