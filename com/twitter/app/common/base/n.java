package com.twitter.app.common.base;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.IntRange;
import com.twitter.android.PermissionResult;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.j;
import java.util.Map;

/* compiled from: Twttr */
public class n {
    private static int b;
    final Activity a;
    private final Map<Integer, o> c;

    static {
        b = 3840;
    }

    public n(Activity activity) {
        this.c = MutableMap.a();
        this.a = activity;
    }

    @IntRange(from = 0, to = 4095)
    public static final int a() {
        j.a(b < 4095, "Too many request codes have been allocated");
        int i = b;
        b = i + 1;
        return i;
    }

    public void a(@IntRange(from = 0, to = 4095) int i, Intent intent) {
        j.a(this.c.containsKey(Integer.valueOf(i)), "No receiver for permission request found");
        this.a.startActivityForResult(intent, 40960 | i);
    }

    public void a(Iterable<Integer> iterable, o oVar) {
        for (Integer put : iterable) {
            this.c.put(put, oVar);
        }
    }

    void b(int i, Intent intent) {
        int i2 = i & 4095;
        PermissionResult permissionResult = (PermissionResult) intent.getParcelableExtra("extra_perm_result");
        o oVar = (o) this.c.get(Integer.valueOf(i2));
        j.a(oVar != null, "No receiver found to dispatch permission request result");
        if (oVar != null) {
            oVar.a(i2, permissionResult);
        }
    }

    static boolean a(int i) {
        return (i & 40960) == 40960;
    }
}
