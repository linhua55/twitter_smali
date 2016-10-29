package com.google.android.gms.internal;

import com.google.android.gms.common.internal.j;
import java.util.regex.Pattern;

public class vw {
    private static final Pattern a;

    static {
        a = Pattern.compile("\\$\\{(.*?)\\}");
    }

    public static boolean a(String str) {
        return str == null || j.a.b((CharSequence) str);
    }
}
