package com.twitter.database.internal;

import auc;
import com.twitter.database.model.ColumnDefinition;
import com.twitter.database.model.ColumnDefinition.Type;
import com.twitter.database.model.b;
import com.twitter.database.model.l;
import com.twitter.database.model.n;
import com.twitter.database.model.p;
import com.twitter.database.model.s;
import com.twitter.database.model.w;
import com.twitter.database.model.x;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.j;
import com.twitter.util.object.ObjectUtils;
import cto;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;

/* compiled from: Twttr */
public class h implements n {
    protected final f a;
    private final Collection<p> b;
    private final Collection<p> c;

    private h(f fVar) {
        this.a = fVar;
        this.b = new LinkedHashSet();
        this.c = new LinkedHashSet();
    }

    public w a() {
        return this.a.f();
    }

    public void a(Class<? extends p> cls) {
        j.c();
        p a = this.a.a(cls);
        if (a instanceof x) {
            this.c.add(a);
            return;
        }
        w f = this.a.f();
        try {
            a.m();
            a.h();
            f.a();
            b((Class) cls);
        } finally {
            f.close();
        }
    }

    public void a(Class<? extends s> cls, ColumnDefinition columnDefinition) {
        j.c();
        s sVar = (s) this.a.a(cls);
        if (!this.a.d().b(sVar.a()).contains(columnDefinition.a)) {
            StringBuilder append = new StringBuilder("ALTER TABLE ").append(sVar.a()).append(" ADD COLUMN ").append(columnDefinition.a).append(' ').append(columnDefinition.b.dbType);
            if (columnDefinition.c) {
                append.append(" NOT NULL");
            }
            if (columnDefinition.d != null) {
                append.append(" DEFAULT ");
                if (columnDefinition.b == Type.STRING) {
                    append.append(auc.d(columnDefinition.d));
                } else {
                    append.append(columnDefinition.d);
                }
            }
            this.a.d().a(append.append(';').toString());
            b((Class) cls);
        }
    }

    public void a(Class<? extends s> cls, String... strArr) {
        String a = ((s) this.a.a(cls)).a();
        List asList = Arrays.asList(strArr);
        List<String> b = this.a.d().b(a);
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        int i = 0;
        for (String str : b) {
            int i2;
            String str2;
            if (asList.contains(str2)) {
                i2 = i + 1;
            } else {
                d.c(str2);
                i2 = i;
            }
            i = i2;
        }
        List list = (List) d.q();
        if (list.isEmpty()) {
            throw new IllegalArgumentException("All columns are removed in this call; recommended to drop table instead.");
        } else if (i > 0) {
            str2 = aj.a(",", list.toArray());
            c("ALTER TABLE " + a + " RENAME TO " + a + "_old;", r0.b(), "INSERT INTO " + a + " SELECT " + str2 + " FROM " + a + "_old;", "DROP TABLE " + a + "_old;");
            b((Class) cls);
        }
    }

    public void a(String... strArr) {
        a("TABLE", strArr);
    }

    public void b(String... strArr) {
        a("TRIGGER", strArr);
    }

    public void c(String... strArr) {
        a(Arrays.asList(strArr));
    }

    public void b() {
        j.c();
        w a = a();
        try {
            for (Class a2 : this.a.a().keySet()) {
                a(a2);
            }
            a.a();
        } finally {
            a.close();
        }
    }

    public void b(Class<? extends p> cls) {
        this.b.add(this.a.a(cls));
    }

    public l c() {
        j.c();
        List d = d();
        w f = this.a.f();
        try {
            p pVar;
            for (p pVar2 : this.b) {
                if (pVar2 instanceof o) {
                    ((o) ObjectUtils.a(pVar2)).n();
                }
            }
            for (int size = d.size() - 1; size >= 0; size--) {
                pVar2 = (p) d.get(size);
                pVar2.m();
                pVar2.h();
            }
            this.b.clear();
            f.a();
            return this.a;
        } finally {
            f.close();
        }
    }

    private void a(Iterable<String> iterable) {
        w a = a();
        try {
            b d = this.a.d();
            for (String a2 : iterable) {
                d.a(a2);
            }
            a.a();
        } finally {
            a.close();
        }
    }

    private void a(String str, String... strArr) {
        a(cto.a(Arrays.asList(strArr), new i(this, str)));
    }

    private List<p> d() {
        Collection linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(this.c);
        for (p i : this.b) {
            linkedHashSet.addAll(i.i());
        }
        return CollectionUtils.a(linkedHashSet, new j(this));
    }
}
