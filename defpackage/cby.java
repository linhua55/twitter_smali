package defpackage;

import com.twitter.library.client.l;

/* compiled from: Twttr */
/* renamed from: cby */
public class cby {
    private final l a;

    public cby(l lVar) {
        this.a = lVar;
    }

    private boolean c() {
        return !this.a.getBoolean("people_discovery_has_visited", false);
    }

    public void a() {
        this.a.a().a("people_discovery_has_visited", true).apply();
    }

    public boolean b() {
        return c() || this.a.getBoolean("people_discovery_has_collapsed_address_book_prompt", false);
    }

    public void a(boolean z) {
        this.a.a().a("people_discovery_has_collapsed_address_book_prompt", z).apply();
    }
}
