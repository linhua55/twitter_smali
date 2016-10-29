package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import com.twitter.util.aj;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public class gs extends f<Intent> {
    private Context a;
    private String b;
    private String c;
    private boolean d;
    private int e;

    protected /* synthetic */ Object c() {
        return b();
    }

    public gs a(Context context) {
        this.a = context;
        return this;
    }

    public gs a(String str) {
        this.b = str;
        return this;
    }

    public gs b(String str) {
        this.c = str;
        return this;
    }

    public gs a(boolean z) {
        this.d = z;
        return this;
    }

    public gs a(int i) {
        this.e = i;
        return this;
    }

    public boolean bo_() {
        return this.a != null && aj.b(this.b) && aj.b(this.c);
    }

    protected Intent b() {
        return new Intent(this.a, GalleryGridActivity.class).putExtra("scribe_section", this.b).putExtra("permissions_event_prefix", this.c).putExtra("is_video_allowed", this.d).putExtra("camera_initiator", this.e);
    }
}
