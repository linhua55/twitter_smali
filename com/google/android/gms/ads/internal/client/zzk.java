package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.g;
import com.google.android.gms.internal.oi;
import if;

@oi
public final class zzk {
    private final g[] a;
    private final String b;

    public zzk(Context context, AttributeSet attributeSet) {
        Object obj = 1;
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, if.AdsAttrs);
        String string = obtainAttributes.getString(if.AdsAttrs_adSize);
        String string2 = obtainAttributes.getString(if.AdsAttrs_adSizes);
        Object obj2 = !TextUtils.isEmpty(string) ? 1 : null;
        if (TextUtils.isEmpty(string2)) {
            obj = null;
        }
        if (obj2 != null && r1 == null) {
            this.a = a(string);
        } else if (obj2 == null && r1 != null) {
            this.a = a(string2);
        } else if (obj2 == null || r1 == null) {
            throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
        } else {
            throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
        }
        this.b = obtainAttributes.getString(if.AdsAttrs_adUnitId);
        if (TextUtils.isEmpty(this.b)) {
            throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
        }
    }

    private static g[] a(String str) {
        String[] split = str.split("\\s*,\\s*");
        g[] gVarArr = new g[split.length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    gVarArr[i] = new g("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? -2 : Integer.parseInt(split2[1]));
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": " + trim);
                }
            } else if ("BANNER".equals(trim)) {
                gVarArr[i] = g.a;
            } else if ("LARGE_BANNER".equals(trim)) {
                gVarArr[i] = g.c;
            } else if ("FULL_BANNER".equals(trim)) {
                gVarArr[i] = g.b;
            } else if ("LEADERBOARD".equals(trim)) {
                gVarArr[i] = g.d;
            } else if ("MEDIUM_RECTANGLE".equals(trim)) {
                gVarArr[i] = g.e;
            } else if ("SMART_BANNER".equals(trim)) {
                gVarArr[i] = g.g;
            } else if ("WIDE_SKYSCRAPER".equals(trim)) {
                gVarArr[i] = g.f;
            } else if ("FLUID".equals(trim)) {
                gVarArr[i] = g.h;
            } else {
                throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": " + trim);
            }
        }
        if (gVarArr.length != 0) {
            return gVarArr;
        }
        throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": " + str);
    }

    public String a() {
        return this.b;
    }

    public g[] a(boolean z) {
        if (z || this.a.length == 1) {
            return this.a;
        }
        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }
}
