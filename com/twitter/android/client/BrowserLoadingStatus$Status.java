package com.twitter.android.client;

import android.content.res.Resources;

/* compiled from: Twttr */
public enum BrowserLoadingStatus$Status {
    OFF {
        public String a(Resources resources) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
    },
    LOADING {
        public String a(Resources resources) {
            return resources.getString(2131362928);
        }
    },
    LOADED {
        public String a(Resources resources) {
            return resources.getString(2131362894);
        }
    };

    public abstract String a(Resources resources);
}
