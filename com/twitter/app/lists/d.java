package com.twitter.app.lists;

import android.content.Intent;

/* compiled from: Twttr */
public class d {
    public final long a;
    public final long b;

    public d(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public static d a(Intent intent) {
        return new d(intent.getLongExtra("list_id", -1), intent.getLongExtra("user_id", -1));
    }

    public Intent a() {
        Intent intent = new Intent();
        intent.putExtra("list_id", this.a);
        intent.putExtra("user_id", this.b);
        return intent;
    }
}
