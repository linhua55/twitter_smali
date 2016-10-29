package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Future;

@oi
public final class qf {
    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences("admob", 0);
    }

    public static Future a(Context context, int i) {
        return new qi(context, i).g();
    }

    public static Future a(Context context, qp qpVar) {
        return new qh(context, qpVar).g();
    }

    public static Future a(Context context, String str) {
        return new qm(context, str).g();
    }

    public static Future a(Context context, boolean z) {
        return new qg(context, z).g();
    }

    public static Future b(Context context, qp qpVar) {
        return new qj(context, qpVar).g();
    }

    public static Future b(Context context, boolean z) {
        return new qk(context, z).g();
    }

    public static Future c(Context context, qp qpVar) {
        return new ql(context, qpVar).g();
    }

    public static Future d(Context context, qp qpVar) {
        return new qn(context, qpVar).g();
    }
}
