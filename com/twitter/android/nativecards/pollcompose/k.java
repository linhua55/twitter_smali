package com.twitter.android.nativecards.pollcompose;

import android.content.Context;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class k {
    final int a;
    final long b;
    final int c;
    final long d;
    final int e;
    final long f;

    public k(long j) {
        int toDays = (int) TimeUnit.MINUTES.toDays(j);
        this.a = toDays;
        this.b = (long) toDays;
        this.d = TimeUnit.MINUTES.toHours(j);
        this.c = (int) (this.d - ((long) (this.a * 24)));
        this.f = j;
        this.e = (int) (j - (TimeUnit.MINUTES.toHours(j) * 60));
    }

    public static String a(long j, Context context) {
        int toDays = (int) TimeUnit.MINUTES.toDays(j);
        int toHours = (int) (TimeUnit.MINUTES.toHours(j) - ((long) (toDays * 24)));
        int toHours2 = (int) (j - (TimeUnit.MINUTES.toHours(j) * 60));
        StringBuilder stringBuilder = new StringBuilder();
        switch (toDays) {
            case Util.TYPE_DASH /*0*/:
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                stringBuilder.append(context.getString(2131362582));
                break;
            default:
                stringBuilder.append(context.getString(2131362579, new Object[]{Integer.valueOf(toDays)}));
                break;
        }
        switch (toHours) {
            case Util.TYPE_DASH /*0*/:
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (stringBuilder.length() != 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(context.getString(2131362583));
                break;
            default:
                if (stringBuilder.length() != 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(context.getString(2131362580, new Object[]{Integer.valueOf(toHours)}));
                break;
        }
        switch (toHours2) {
            case Util.TYPE_DASH /*0*/:
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (stringBuilder.length() != 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(context.getString(2131362584));
                break;
            default:
                if (stringBuilder.length() != 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(context.getString(2131362581, new Object[]{Integer.valueOf(toHours2)}));
                break;
        }
        return stringBuilder.toString();
    }
}
