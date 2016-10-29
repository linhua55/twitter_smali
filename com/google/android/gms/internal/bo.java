package com.google.android.gms.internal;

import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.ads.internal.util.client.b;
import com.twitter.android.mx;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
import tv.periscope.chatman.api.WireMessage;

@oi
public class bo {
    private final int a;
    private final int b;
    private final int c;
    private final bn d;

    public bo(int i) {
        this.d = new bt();
        this.b = i;
        this.a = 6;
        this.c = 0;
    }

    private String b(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return BuildConfig.VERSION_NAME;
        }
        br a = a();
        Arrays.sort(split, new bp(this));
        int i = 0;
        while (i < split.length && i < this.b) {
            if (split[i].trim().length() != 0) {
                try {
                    a.a(this.d.a(split[i]));
                } catch (Throwable e) {
                    b.b("Error while writing hash to byteStream", e);
                }
            }
            i++;
        }
        return a.toString();
    }

    br a() {
        return new br();
    }

    String a(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return BuildConfig.VERSION_NAME;
        }
        br a = a();
        PriorityQueue priorityQueue = new PriorityQueue(this.b, new bq(this));
        for (String b : split) {
            String[] b2 = bs.b(b);
            if (b2.length != 0) {
                bu.a(b2, this.b, this.a, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                a.a(this.d.a(((bv) it.next()).b));
            } catch (Throwable e) {
                b.b("Error while writing hash to byteStream", e);
            }
        }
        return a.toString();
    }

    public String a(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(((String) it.next()).toLowerCase(Locale.US));
            stringBuffer.append('\n');
        }
        switch (this.c) {
            case mx.View_android_theme /*0*/:
                return a(stringBuffer.toString());
            case WireMessage.WIRE_CHAT /*1*/:
                return b(stringBuffer.toString());
            default:
                return BuildConfig.VERSION_NAME;
        }
    }
}
