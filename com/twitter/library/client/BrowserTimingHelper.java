package com.twitter.library.client;

import com.twitter.config.d;
import com.twitter.library.api.PromotedEvent;

/* compiled from: Twttr */
public class BrowserTimingHelper {

    /* compiled from: Twttr */
    public enum Dwell {
        SHORT(1, PromotedEvent.am) {
            public Dwell b() {
                return b;
            }

            public int c() {
                return d.a("ad_formats_web_view_dwell_short_interval", 1);
            }
        },
        MEDIUM(2, PromotedEvent.an) {
            public Dwell b() {
                return c;
            }

            public int c() {
                return d.a("ad_formats_web_view_dwell_medium_interval", 2);
            }
        },
        LONG(3, PromotedEvent.ao) {
            public Dwell b() {
                return null;
            }

            public int c() {
                return d.a("ad_formats_web_view_dwell_long_interval", 10);
            }
        };
        
        private final PromotedEvent mPromotedEvent;
        private final int mValue;

        public abstract Dwell b();

        public abstract int c();

        private Dwell(int i, PromotedEvent promotedEvent) {
            this.mValue = i;
            this.mPromotedEvent = promotedEvent;
        }

        public PromotedEvent a() {
            return this.mPromotedEvent;
        }

        public long d() {
            return ((long) c()) * 1000;
        }
    }
}
