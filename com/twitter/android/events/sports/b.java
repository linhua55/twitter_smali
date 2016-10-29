package com.twitter.android.events.sports;

import android.widget.TextView;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public class b {
    private static final String a;
    private static b b;
    private final Map<Integer, List<String>> c;

    static {
        a = Pattern.quote("|");
    }

    private b() {
        this.c = new HashMap(2);
        this.c.put(Integer.valueOf(0), new ArrayList());
        this.c.put(Integer.valueOf(1), new ArrayList());
    }

    public static b a() {
        if (b == null) {
            b = new b();
        }
        return b;
    }

    public List<String> a(int i) {
        return (List) this.c.get(Integer.valueOf(i));
    }

    public static void a(String str, TextView textView, TextView textView2, String str2) {
        if (com.twitter.android.events.b.c(str2)) {
            a(str, textView, textView2);
            return;
        }
        a(textView, str);
        textView2.setVisibility(8);
    }

    private static void a(String str, TextView textView, TextView textView2) {
        if (aj.a((CharSequence) str)) {
            textView.setVisibility(8);
            textView2.setVisibility(8);
            return;
        }
        int i;
        String[] split = str.split(a);
        if (aj.b(split[0]) && aj.b(split[1])) {
            i = 1;
        } else {
            i = 0;
        }
        if (i != 0) {
            a(textView, split[0]);
            a(textView2, aj.a(split[1], '(', ')'));
            return;
        }
        a(textView, str);
        textView2.setVisibility(8);
    }

    protected static void a(TextView textView, String str) {
        if (textView != null) {
            if (aj.a((CharSequence) str)) {
                textView.setVisibility(8);
                return;
            }
            textView.setText(str);
            textView.setVisibility(0);
        }
    }
}
