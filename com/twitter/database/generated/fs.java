package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.avv;
import defpackage.awj;
import defpackage.awv;
import defpackage.awz;
import defpackage.axa;
import defpackage.axj;
import defpackage.ayi;
import defpackage.azw;
import defpackage.bag;
import defpackage.bai;
import defpackage.bbg;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class fs extends o implements awz {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<axa> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(9);
        c = new e[0];
        d = new String[]{"_id", "user_id", "username", "name", "description", "description_entities", "web_url", "url_entities", "bg_color", "link_color", "image_url", "header_url", "extended_profile_fields", "location", "structured_location", "user_flags", "followers", "fast_followers", "friends", "statuses", "favorites", "media_count", "friendship", "friendship_time", "profile_created", "updated", "pinned_tweet_id", "advertiser_type", "business_profile_state", "hash"};
        b.add(awj.class);
        b.add(azw.class);
        b.add(ayi.class);
        b.add(bag.class);
        b.add(awv.class);
        b.add(bai.class);
        b.add(avv.class);
        b.add(axj.class);
        b.add(bbg.class);
    }

    @aoa
    public fs(f fVar) {
        super(fVar);
        this.e = new fv(this, this.e_);
    }

    public final String a() {
        return "users";
    }

    public final String b() {
        return "CREATE TABLE users (\n\t_id INTEGER PRIMARY KEY,\n\tuser_id INTEGER UNIQUE NOT NULL,\n\tusername TEXT,\n\tname TEXT,\n\tdescription TEXT,\n\tdescription_entities BLOB /*NULLABLE*/,\n\tweb_url TEXT,\n\turl_entities BLOB /*NULLABLE*/,\n\tbg_color INTEGER,\n\tlink_color INTEGER,\n\timage_url TEXT,\n\theader_url TEXT,\n\textended_profile_fields BLOB /*NULLABLE*/,\n\tlocation TEXT,\n\tstructured_location BLOB /*NULLABLE*/,\n\tuser_flags INTEGER,\n\tfollowers INTEGER,\n\tfast_followers INTEGER,\n\tfriends INTEGER,\n\tstatuses INTEGER,\n\tfavorites INTEGER,\n\tmedia_count INTEGER,\n\tfriendship INTEGER,\n\tfriendship_time INTEGER,\n\tprofile_created INTEGER,\n\tupdated INTEGER,\n\tpinned_tweet_id INTEGER,\n\tadvertiser_type TEXT,\n\tbusiness_profile_state TEXT,\n\thash INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<axa> e() {
        return this.e;
    }
}
