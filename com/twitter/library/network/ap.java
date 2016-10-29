package com.twitter.library.network;

import com.twitter.library.util.aq;
import com.twitter.util.collection.n;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
public class ap {
    protected n<BasicNameValuePair> a;

    public ap() {
        this.a = n.d();
    }

    public void a(String str, boolean z) {
        a(str, String.valueOf(z));
    }

    public void a(String str, long j) {
        a(str, String.valueOf(j));
    }

    public void a(String str, double d) {
        a(str, String.valueOf(d));
    }

    public int a(String str, long[] jArr, int i, int i2) {
        if (jArr == null || i >= jArr.length || i2 <= 0) {
            return 0;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int a = a(stringBuilder, jArr, i, i2);
        a(str, stringBuilder.toString());
        return a;
    }

    public void a() {
        a("include_cards", true);
        a("cards_platform", "Android-12");
    }

    public void a(String str, String str2) {
        this.a.c(new BasicNameValuePair(str, str2));
    }

    public String b() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("?").append(d());
        return stringBuilder.toString();
    }

    public String c() {
        return d();
    }

    private String d() {
        return aq.a((List) this.a.q());
    }

    private int a(StringBuilder stringBuilder, long[] jArr, int i, int i2) {
        int min = Math.min(i + i2, jArr.length);
        for (int i3 = i; i3 < min; i3++) {
            stringBuilder.append(jArr[i3]);
            if (i3 < min - 1) {
                stringBuilder.append(',');
            }
        }
        return min - i;
    }
}
