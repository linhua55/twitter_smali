package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.aul;
import defpackage.aum;
import defpackage.aup;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class am extends o implements aul {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<aum> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[0];
        d = new String[]{"_id", "type", "event", "created_at", "hash", "max_position", "min_position", "sources_size", "source_type", "sources", "targets_size", "target_type", "targets", "target_objects_size", "target_object_type", "target_objects", "is_last", "tag"};
        b.add(aup.class);
    }

    @aoa
    public am(f fVar) {
        super(fVar);
        this.e = new ap(this, this.e_);
    }

    public final String a() {
        return "activities";
    }

    public final String b() {
        return "CREATE TABLE activities (\n\t_id INTEGER PRIMARY KEY,\n\ttype INTEGER,\n\tevent INTEGER,\n\tcreated_at INTEGER,\n\thash INTEGER,\n\tmax_position INTEGER,\n\tmin_position INTEGER,\n\tsources_size INTEGER,\n\tsource_type INTEGER,\n\tsources BLOB,\n\ttargets_size INTEGER,\n\ttarget_type INTEGER,\n\ttargets BLOB,\n\ttarget_objects_size INTEGER,\n\ttarget_object_type INTEGER,\n\ttarget_objects BLOB,\n\tis_last INTEGER,\n\ttag INTEGER,\n\tUNIQUE (type, max_position) ON CONFLICT REPLACE\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<aum> e() {
        return this.e;
    }
}
