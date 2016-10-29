package com.twitter.android.settings.developer;

import android.content.Context;
import android.content.SharedPreferences;
import bvj;
import com.twitter.config.d;
import cto;
import defpackage.asq;
import defpackage.chx;
import defpackage.cil;
import defpackage.civ;
import java.util.List;
import org.json.JSONException;

/* compiled from: Twttr */
public class n {
    public static List<chx> a(Context context) {
        civ f = bvj.f();
        if (f.g.isEmpty()) {
            f = asq.a(context, "feature_switch_manifest");
        }
        return com.twitter.util.collection.n.a(f.g.values());
    }

    public static Iterable<p> a(List<chx> list) {
        return cto.a(list, new o());
    }

    public static Iterable<p> b(Context context) {
        return a(a(context));
    }

    private static List<String> b(List<Object> list, Object obj) {
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        if (!list.isEmpty()) {
            for (Object obj2 : list) {
                d.c(obj2.toString());
            }
            d.c("unassigned");
        } else if (obj instanceof Boolean) {
            d.c(Boolean.TRUE.toString());
            d.c(Boolean.FALSE.toString());
        }
        return (List) d.q();
    }

    public static boolean a(Context context, String str, String str2) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("fs_override", 0);
        String a = cil.a((Object) str2, cil.a(d.d(str)));
        if (a == null) {
            return false;
        }
        try {
            cil.a(str, a);
            sharedPreferences.edit().putString(str, a).apply();
            return true;
        } catch (JSONException e) {
            return false;
        }
    }

    public static boolean a(Context context, String str, Object obj) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("fs_override", 0);
        String a = cil.a(d.d(str));
        if (!obj.getClass().toString().equals(a)) {
            return false;
        }
        a = cil.a(obj, a);
        if (a == null) {
            return false;
        }
        sharedPreferences.edit().putString(str, a).apply();
        return true;
    }
}
