package com.twitter.database.generated;

import android.content.ContentValues;
import cgf;
import cni;
import com.twitter.database.schema.f;
import com.twitter.util.serialization.m;
import java.util.List;

/* compiled from: Twttr */
final class v implements f {
    private final ContentValues a;

    v(ContentValues contentValues) {
        this.a = contentValues;
    }

    public f a(String str) {
        if (str == null) {
            this.a.putNull("content");
        } else {
            this.a.put("content", str);
        }
        return this;
    }

    public f a(long j) {
        this.a.put("in_r_status_id", Long.valueOf(j));
        return this;
    }

    public f b(long j) {
        this.a.put("updated_at", Long.valueOf(j));
        return this;
    }

    public f a(int i) {
        this.a.put("sending_state", Integer.valueOf(i));
        return this;
    }

    public f a(cni cni) {
        if (cni == null) {
            this.a.putNull("pc");
        } else {
            this.a.put("pc", m.a(cni, cni.a));
        }
        return this;
    }

    public f a(byte[] bArr) {
        if (bArr == null) {
            this.a.putNull("quoted_tweet_data");
        } else {
            this.a.put("quoted_tweet_data", bArr);
        }
        return this;
    }

    public f b(byte[] bArr) {
        if (bArr == null) {
            this.a.putNull("media");
        } else {
            this.a.put("media", bArr);
        }
        return this;
    }

    public f a(List<Long> list) {
        if (list == null) {
            this.a.putNull("prepared_media_ids");
        } else {
            this.a.put("prepared_media_ids", m.a(list, a.c));
        }
        return this;
    }

    public f c(long j) {
        this.a.put("media_prepared_at", Long.valueOf(j));
        return this;
    }

    public f c(byte[] bArr) {
        if (bArr == null) {
            this.a.putNull("geo_tag");
        } else {
            this.a.put("geo_tag", bArr);
        }
        return this;
    }

    public f b(String str) {
        if (str == null) {
            this.a.putNull("card_url");
        } else {
            this.a.put("card_url", str);
        }
        return this;
    }

    public f a(cgf cgf) {
        if (cgf == null) {
            this.a.putNull("poll");
        } else {
            this.a.put("poll", m.a(cgf, cgf.a));
        }
        return this;
    }

    public f a(boolean z) {
        this.a.put("reply_prefill_disabled", Boolean.valueOf(z));
        return this;
    }
}
