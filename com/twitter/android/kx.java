package com.twitter.android;

import android.net.Uri;
import com.twitter.library.client.at;

/* compiled from: Twttr */
public class kx implements ou {
    private final Uri a;
    private final km b;

    public kx(Uri uri, km kmVar) {
        this.a = uri;
        this.b = kmVar;
    }

    public void a(int i) {
        for (at atVar : this.b.b()) {
            if (this.a.equals(atVar.a)) {
                atVar.i = i;
                this.b.notifyDataSetChanged();
                a(atVar);
                return;
            }
        }
    }

    public void a() {
        for (at atVar : this.b.b()) {
            if (this.a.equals(atVar.a)) {
                atVar.i = 0;
                this.b.notifyDataSetChanged();
                return;
            }
        }
    }

    protected void a(at atVar) {
    }
}
