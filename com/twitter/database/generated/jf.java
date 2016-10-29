package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.aye;
import defpackage.ayk;
import defpackage.ayl;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class jf extends o implements ayk {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<ayl> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("moments_sections_section_key_index", "CREATE INDEX moments_sections_section_key_index ON moments_sections (\n\tsection_group_type,\n\tsection_group_id\n);")};
        d = new String[]{"_id", "section_title", "section_type", "section_group_type", "section_group_id", "section_category_id", "section_footer", "section_footer_deeplink"};
        b.add(aye.class);
    }

    @aoa
    public jf(f fVar) {
        super(fVar);
        this.e = new ji(this, this.e_);
    }

    public final String a() {
        return "moments_sections";
    }

    public final String b() {
        return "CREATE TABLE moments_sections (\n\t_id INTEGER PRIMARY KEY,\n\tsection_title TEXT,\n\tsection_type INTEGER,\n\tsection_group_type INTEGER,\n\tsection_group_id TEXT,\n\tsection_category_id TEXT,\n\tsection_footer TEXT,\n\tsection_footer_deeplink TEXT\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<ayl> e() {
        return this.e;
    }
}
