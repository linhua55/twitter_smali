package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import defpackage.awh;
import defpackage.awn;
import defpackage.awo;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class es extends q implements awn {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<awo> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = new LinkedHashSet(1);
        c = new String[]{"rt_status_groups_g_status_id", "rt_status_groups_ref_id"};
        b.add(awh.class);
    }

    @aoa
    public es(f fVar) {
        super(fVar);
        this.d = new ev(this, this.e_);
    }

    public final String a() {
        return "status_retweet_id_view";
    }

    public final String b() {
        return "CREATE VIEW status_retweet_id_view\n\tAS SELECT\n\t\tstatus_groups_view.status_groups_g_status_id AS rt_status_groups_g_status_id,\n\t\tstatus_groups_view.status_groups_ref_id AS rt_status_groups_ref_id\n\tFROM status_groups_view\n\tWHERE status_groups_type=0 AND status_groups_tweet_type=1 AND status_groups_sender_id=status_groups_owner_id\n\tGROUP BY status_groups_g_status_id;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<awo> d() {
        return this.d;
    }
}
