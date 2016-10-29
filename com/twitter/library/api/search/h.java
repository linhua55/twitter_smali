package com.twitter.library.api.search;

import com.twitter.model.topic.TwitterTopic;
import java.util.ArrayList;

/* compiled from: Twttr */
public class h {
    public final ArrayList<i> a;
    public final String b;
    public final boolean c;
    public boolean d;
    public int e;
    public long f;
    public final String g;
    public final String h;
    public final String i;
    public ArrayList<TwitterTopic> j;

    public h(ArrayList<i> arrayList, String str, int i, boolean z, int i2, ArrayList<TwitterTopic> arrayList2, String str2, String str3, String str4, boolean z2) {
        this.a = arrayList;
        this.b = str;
        this.f = i > 0 ? ((long) i) * 1000 : -1;
        this.c = z;
        this.e = i2;
        this.j = arrayList2;
        this.g = str2;
        this.h = str3;
        this.i = str4;
        this.d = z2;
    }
}
