package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.ayx;

/* compiled from: Twttr */
final class kb implements ayx {
    private final ContentValues a;

    kb(ContentValues contentValues) {
        this.a = contentValues;
    }

    public ayx a(int i) {
        this.a.put("type", Integer.valueOf(i));
        return this;
    }

    public ayx b(int i) {
        this.a.put("notif_id", Integer.valueOf(i));
        return this;
    }

    public ayx a(String str) {
        if (str == null) {
            this.a.putNull("source_user_name");
        } else {
            this.a.put("source_user_name", str);
        }
        return this;
    }

    public ayx b(String str) {
        if (str == null) {
            this.a.putNull("s_name");
        } else {
            this.a.put("s_name", str);
        }
        return this;
    }

    public ayx a(long j) {
        this.a.put("s_id", Long.valueOf(j));
        return this;
    }

    public ayx c(String str) {
        if (str == null) {
            this.a.putNull("notif_txt");
        } else {
            this.a.put("notif_txt", str);
        }
        return this;
    }

    public ayx d(String str) {
        if (str == null) {
            this.a.putNull("aggregation_data");
        } else {
            this.a.put("aggregation_data", str);
        }
        return this;
    }

    public ayx a(byte[] bArr) {
        if (bArr == null) {
            this.a.putNull("notif_extra_data");
        } else {
            this.a.put("notif_extra_data", bArr);
        }
        return this;
    }
}
