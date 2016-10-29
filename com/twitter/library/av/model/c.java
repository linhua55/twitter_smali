package com.twitter.library.av.model;

import com.twitter.model.av.VideoCtaType;
import com.twitter.model.av.a;

/* compiled from: Twttr */
public class c implements a {
    private final String a;

    public c(String str) {
        this.a = str;
    }

    public VideoCtaType a() {
        return VideoCtaType.a;
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return "tv.periscope.android";
    }

    public String d() {
        return "Periscope";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((c) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
