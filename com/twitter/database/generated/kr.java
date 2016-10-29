package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.azh;

/* compiled from: Twttr */
final class kr implements azh {
    private final ContentValues a;

    kr(ContentValues contentValues) {
        this.a = contentValues;
    }

    public azh a(String str) {
        if (str == null) {
            this.a.putNull("impression_id");
        } else {
            this.a.put("impression_id", str);
        }
        return this;
    }

    public azh b(String str) {
        this.a.put("event", str);
        return this;
    }

    public azh a(boolean z) {
        this.a.put("is_earned", Boolean.valueOf(z));
        return this;
    }

    public azh a(long j) {
        this.a.put("trend_id", Long.valueOf(j));
        return this;
    }

    public azh a(int i) {
        this.a.put("num_retries", Integer.valueOf(i));
        return this;
    }

    public azh c(String str) {
        if (str == null) {
            this.a.putNull("url");
        } else {
            this.a.put("url", str);
        }
        return this;
    }

    public azh d(String str) {
        if (str == null) {
            this.a.putNull("video_playlist_url");
        } else {
            this.a.put("video_playlist_url", str);
        }
        return this;
    }

    public azh e(String str) {
        if (str == null) {
            this.a.putNull("video_content_uuid");
        } else {
            this.a.put("video_content_uuid", str);
        }
        return this;
    }

    public azh f(String str) {
        if (str == null) {
            this.a.putNull("video_content_type");
        } else {
            this.a.put("video_content_type", str);
        }
        return this;
    }

    public azh g(String str) {
        if (str == null) {
            this.a.putNull("video_cta_url");
        } else {
            this.a.put("video_cta_url", str);
        }
        return this;
    }

    public azh h(String str) {
        if (str == null) {
            this.a.putNull("video_cta_app_id");
        } else {
            this.a.put("video_cta_app_id", str);
        }
        return this;
    }

    public azh i(String str) {
        if (str == null) {
            this.a.putNull("video_cta_app_name");
        } else {
            this.a.put("video_cta_app_name", str);
        }
        return this;
    }

    public azh j(String str) {
        if (str == null) {
            this.a.putNull("card_event");
        } else {
            this.a.put("card_event", str);
        }
        return this;
    }

    public azh k(String str) {
        if (str == null) {
            this.a.putNull("engagement_metadata");
        } else {
            this.a.put("engagement_metadata", str);
        }
        return this;
    }
}
