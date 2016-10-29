package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.bas;
import defpackage.bat;
import defpackage.baw;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class nx extends o implements bas {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<bat> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[0];
        d = new String[]{"_id", "name", "type", "annotation_id", "sticker_set_annotation_id", "variant_item_id", "category_annotation_id", "author_id", "dominant_color", "background_color", "variant_name", "start_time", "end_time", "last_modified_time", "available_for_creation", "variants"};
        b.add(baw.class);
    }

    @aoa
    public nx(f fVar) {
        super(fVar);
        this.e = new oa(this, this.e_);
    }

    public final String a() {
        return "stickers";
    }

    public final String b() {
        return "CREATE TABLE stickers (\n\t_id INTEGER PRIMARY KEY,\n\tname TEXT NOT NULL,\n\ttype TEXT NOT NULL,\n\tannotation_id INTEGER NOT NULL,\n\tsticker_set_annotation_id INTEGER,\n\tvariant_item_id INTEGER,\n\tcategory_annotation_id INTEGER,\n\tauthor_id INTEGER NOT NULL,\n\tdominant_color TEXT NOT NULL,\n\tbackground_color TEXT NOT NULL,\n\tvariant_name TEXT,\n\tstart_time INTEGER,\n\tend_time INTEGER,\n\tlast_modified_time INTEGER NOT NULL,\n\tavailable_for_creation INTEGER,\n\tvariants BLOB NOT NULL\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<bat> e() {
        return this.e;
    }
}
