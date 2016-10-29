package com.google.android.gms.clearcut;

import android.content.Context;

public class a {
    public static final a a;
    private static int b;

    static {
        b = -1;
        a = new a();
    }

    protected a() {
    }

    public int a(Context context) {
        if (b < 0) {
            b = context.getSharedPreferences("bootCount", 0).getInt("bootCount", 1);
        }
        return b;
    }
}
