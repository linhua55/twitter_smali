package com.twitter.android.eventtimelines.tv.show;

import com.twitter.database.model.j;
import com.twitter.database.model.k;
import com.twitter.database.model.l;
import com.twitter.library.provider.di;
import com.twitter.model.eventtimelines.TvShow;
import com.twitter.model.eventtimelines.b;
import defpackage.axb;
import defpackage.axc;
import defpackage.axd;
import defpackage.axe;

/* compiled from: Twttr */
public class z implements y {
    private final l a;

    public z(di diVar) {
        this.a = diVar.b();
    }

    public void a(TvShow tvShow) {
        k b = this.a.c(axd.class).b();
        ((axe) b.d).a(tvShow.b).a(tvShow.c).b(tvShow.d).c(tvShow.e).a(tvShow.f).b(tvShow.g);
        b.b();
    }

    public TvShow a(long j) {
        j a = ((axb) this.a.a(axb.class)).f().a("id=?", new String[]{String.valueOf(j)});
        try {
            if (a.b()) {
                TvShow tvShow = (TvShow) new b().a(((axc) a.a).b()).a(((axc) a.a).c()).b(((axc) a.a).d()).c(((axc) a.a).e()).a(((axc) a.a).f()).b(((axc) a.a).g()).q();
                return tvShow;
            }
            a.close();
            return null;
        } finally {
            a.close();
        }
    }
}
