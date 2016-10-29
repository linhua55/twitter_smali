package com.twitter.library.service;

import android.app.NotificationManager;
import android.content.Context;
import auc;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.database.model.j;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import defpackage.ays;
import defpackage.ayu;
import defpackage.ayv;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class v extends AsyncOperation<Void, List<Integer>> {
    public final long a;
    public final String b;
    private final Context c;
    private final NotificationManager g;
    private int[] h;
    private int i;
    private String j;

    protected /* synthetic */ Object c() {
        return a();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return b();
    }

    public v(Context context, long j, String str) {
        super(v.class.getName());
        this.c = context.getApplicationContext();
        this.g = (NotificationManager) context.getSystemService("notification");
        this.a = j;
        this.b = str;
    }

    protected final List<Integer> a() {
        return n.g();
    }

    protected List<Integer> b() {
        int i = 0;
        long j = this.a;
        String str = this.b;
        switch (this.i) {
            case Util.TYPE_DASH /*0*/:
                int[] iArr = this.h;
                di.a(this.c, j).a(iArr);
                List<Integer> arrayList = new ArrayList(iArr.length);
                int length = iArr.length;
                while (i < length) {
                    int i2 = iArr[i];
                    this.g.cancel(i2);
                    arrayList.add(Integer.valueOf(i2));
                    i++;
                }
                return arrayList;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return a(j, str, ays.f);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (aj.a(this.j)) {
                    return a(j, str, ays.g);
                }
                return a(j, str, auc.a(new String[]{ays.g, auc.c("aggregation_data")}), new String[]{this.j});
            case Util.TYPE_OTHER /*3*/:
                return a(j, str, auc.b("type", Integer.valueOf(15)));
            default:
                return n.g();
        }
    }

    private List<Integer> a(long j, String str, String str2) {
        return a(j, str, str2, null);
    }

    private List<Integer> a(long j, String str, String str2, String[] strArr) {
        return a(this.c, j, str, str2, strArr);
    }

    public static List<Integer> a(Context context, long j, String str, String str2, String[] strArr) {
        int a;
        List<Integer> arrayList = new ArrayList();
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        di a2 = di.a(context, j);
        j a3 = a2.b().b(ayu.class).a(str2, strArr);
        while (a3.c()) {
            try {
                a = ((ayv) a3.a).a();
                if (a > 0) {
                    notificationManager.cancel(a);
                    arrayList.add(Integer.valueOf(a));
                }
            } finally {
                a3.close();
            }
        }
        notificationManager.cancel(0);
        arrayList.add(Integer.valueOf(0));
        a = ar.a(context).c(str);
        if (a != -1) {
            notificationManager.cancel(a);
            arrayList.add(Integer.valueOf(a));
        }
        a2.c(str2, null);
        return arrayList;
    }

    public v a(int[] iArr) {
        this.h = iArr;
        return this;
    }

    public v a(String str) {
        this.j = str;
        return this;
    }

    public v a(int i) {
        this.i = i;
        return this;
    }
}
