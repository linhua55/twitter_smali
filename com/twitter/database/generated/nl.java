package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.bak;
import defpackage.bal;
import java.util.Collection;

/* compiled from: Twttr */
public final class nl extends o implements bak {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<bal> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "category_id", "icon_image", "name", "annotation_id", "start_time", "end_time", "is_featured", "is_promoted"};
    }

    @aoa
    public nl(f fVar) {
        super(fVar);
        this.e = new no(this, this.e_);
    }

    public final String a() {
        return "sticker_categories";
    }

    public final String b() {
        return "CREATE TABLE sticker_categories (\n\t_id INTEGER PRIMARY KEY AUTOINCREMENT,\n\tcategory_id INTEGER UNIQUE ON CONFLICT REPLACE NOT NULL,\n\ticon_image BLOB /*NULLABLE*/,\n\tname TEXT NOT NULL,\n\tannotation_id INTEGER,\n\tstart_time INTEGER,\n\tend_time INTEGER,\n\tis_featured INTEGER,\n\tis_promoted INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<bal> e() {
        return this.e;
    }
}
