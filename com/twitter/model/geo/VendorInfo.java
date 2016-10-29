package com.twitter.model.geo;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class VendorInfo {
    public static final n<VendorInfo> a;
    public static final VendorInfo b;
    public final q c;
    public final YelpInfo d;

    /* compiled from: Twttr */
    public class YelpInfo {
        public static final n<YelpInfo> a;
        public final String b;
        public final String c;
        public final String d;
        public final YelpRating e;
        public final int f;

        /* compiled from: Twttr */
        public enum YelpRating {
            NONE(0.0d),
            ONE(1.0d),
            ONE_AND_HALF(1.5d),
            TWO(2.0d),
            TWO_AND_HALF(2.5d),
            THREE(3.0d),
            THREE_AND_HALF(3.5d),
            FOUR(4.0d),
            FOUR_AND_HALF(4.5d),
            FIVE(5.0d);
            
            private final double mValue;

            private YelpRating(double d) {
                this.mValue = d;
            }

            public static YelpRating a(double d) {
                double round = ((double) Math.round(d * 2.0d)) / 2.0d;
                for (YelpRating yelpRating : values()) {
                    if (Math.abs(yelpRating.mValue - round) < 1.0E-8d) {
                        return yelpRating;
                    }
                }
                return NONE;
            }
        }

        static {
            a = new t();
        }

        public YelpInfo(String str, String str2, String str3, YelpRating yelpRating, int i) {
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = yelpRating;
            this.f = i;
        }
    }

    static {
        a = new s();
        b = new VendorInfo(null, null);
    }

    public VendorInfo(q qVar, YelpInfo yelpInfo) {
        if (qVar == null || yelpInfo == null) {
            this.c = qVar;
            this.d = yelpInfo;
            return;
        }
        throw new IllegalArgumentException("Cannot have vendor info from 2 vendors");
    }
}
