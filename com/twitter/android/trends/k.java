package com.twitter.android.trends;

import android.content.res.Resources;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.util.ao;

/* compiled from: Twttr */
public class k {
    private final float a;
    private final float b;
    private final float c;
    private final Resources d;

    public k(Resources resources, float f) {
        this.d = resources;
        this.a = f;
        this.b = ((float) resources.getDimensionPixelSize(2131690593)) + f;
        this.c = ((float) resources.getDimensionPixelSize(2131690592)) + f;
    }

    public k(Resources resources) {
        this(resources, ao.a);
    }

    public float a() {
        return this.a;
    }

    public float b() {
        return this.b;
    }

    public float c() {
        return this.c;
    }

    public static boolean a(Session session) {
        if (!session.d()) {
            return false;
        }
        UserSettings j = session.j();
        if (j == null || j.B) {
            return false;
        }
        return true;
    }
}
