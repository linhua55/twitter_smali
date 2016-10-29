package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import java.util.Map;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class EscherbirdAnnotation {
    public static final n<EscherbirdAnnotation> a;
    public final GroupType b;
    public final DomainType c;
    public final long d;
    public final Map<String, String> e;

    /* compiled from: Twttr */
    public enum DomainType {
        BRANDS("Brands", 1),
        MOVIES("Movies", 2),
        TV_SHOWS("TV Shows", 3),
        TV_EPISODES("TV Episodes", 4),
        POLITICS("Politics", 5),
        SPORTS_EVENT("Sports Event", 6),
        GENERAL_TOPICS("General Topics", 7),
        PRODUCTS("Products", 8),
        UNKNOWN("Unknown", -1);
        
        private final int mId;
        private final String mName;

        private DomainType(String str, int i) {
            this.mName = str;
            this.mId = i;
        }

        public static DomainType a(int i) {
            switch (i) {
                case p.View_android_focusable /*1*/:
                    return BRANDS;
                case p.View_paddingStart /*2*/:
                    return MOVIES;
                case p.View_paddingEnd /*3*/:
                    return TV_SHOWS;
                case p.View_theme /*4*/:
                    return TV_EPISODES;
                case p.Toolbar_contentInsetStart /*5*/:
                    return POLITICS;
                case p.Toolbar_contentInsetEnd /*6*/:
                    return SPORTS_EVENT;
                case p.Toolbar_contentInsetLeft /*7*/:
                    return GENERAL_TOPICS;
                case p.Toolbar_contentInsetRight /*8*/:
                    return PRODUCTS;
                default:
                    return UNKNOWN;
            }
        }

        public String toString() {
            return this.mName;
        }

        public int a() {
            return this.mId;
        }
    }

    /* compiled from: Twttr */
    public enum GroupType {
        TWITTER_DATA_TEAM("Twitter Data Team", 2),
        POLITICS_TEAM("Politics Team", 3),
        COMMERCE_TEAM("Commerce Team", 4),
        UNKNOWN("Unknown", -1);
        
        private final int mId;
        private final String mName;

        private GroupType(String str, int i) {
            this.mName = str;
            this.mId = i;
        }

        public static GroupType a(int i) {
            switch (i) {
                case p.View_paddingStart /*2*/:
                    return TWITTER_DATA_TEAM;
                case p.View_paddingEnd /*3*/:
                    return POLITICS_TEAM;
                case p.View_theme /*4*/:
                    return COMMERCE_TEAM;
                default:
                    return UNKNOWN;
            }
        }

        public String toString() {
            return this.mName;
        }
    }

    static {
        a = new o();
    }

    public EscherbirdAnnotation(GroupType groupType, DomainType domainType, long j) {
        this(groupType, domainType, j, null);
    }

    public EscherbirdAnnotation(GroupType groupType, DomainType domainType, long j, Map<String, String> map) {
        this.b = groupType;
        this.c = domainType;
        this.d = j;
        this.e = e.a(map);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof EscherbirdAnnotation)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        EscherbirdAnnotation escherbirdAnnotation = (EscherbirdAnnotation) obj;
        if (this.b == escherbirdAnnotation.b && this.c == escherbirdAnnotation.c && this.d == escherbirdAnnotation.d && this.e == escherbirdAnnotation.e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.a(this.d)) * 31) + ObjectUtils.b(this.e);
    }
}
