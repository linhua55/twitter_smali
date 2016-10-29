package com.twitter.android.moments.data;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import bbl;
import bbn;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.android.moments.viewmodels.k;
import com.twitter.library.client.bb;
import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.util.aj;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.h;
import com.twitter.util.serialization.s;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class m extends e<k> {
    private final o a;
    private final bb b;
    private final Loader<Cursor> c;
    private boolean d;
    private boolean e;

    public /* synthetic */ Object c(Cursor cursor) {
        return a(cursor);
    }

    public m(o oVar, Loader<Cursor> loader, LoaderManager loaderManager, int i) {
        super(loaderManager, i);
        this.b = new n(this);
        this.a = oVar;
        this.c = loader;
    }

    public void c() {
        this.e = true;
        this.a.a(this.b);
    }

    public void d() {
        this.e = true;
        this.a.b(this.b);
    }

    public boolean e() {
        return this.d;
    }

    public k a(Cursor cursor) {
        h.c();
        n d = n.d();
        n d2 = n.d();
        x xVar = new x();
        Set a = MutableSet.a();
        Object obj = null;
        if (cursor.moveToFirst()) {
            MomentGuideSectionType momentGuideSectionType;
            String string;
            String string2;
            n d3;
            String str;
            String str2 = null;
            MomentGuideSectionType momentGuideSectionType2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            while (true) {
                Object obj2;
                String string3 = cursor.getString(cursor.getColumnIndex("moments_sections_section_title"));
                momentGuideSectionType = (MomentGuideSectionType) com.twitter.util.serialization.m.a(cursor.getBlob(cursor.getColumnIndex("moments_sections_section_type")), s.a(MomentGuideSectionType.class));
                String string4 = cursor.getString(cursor.getColumnIndex("moments_sections_section_category_id"));
                string = cursor.getString(cursor.getColumnIndex("moments_sections_section_footer"));
                string2 = cursor.getString(cursor.getColumnIndex("moments_sections_section_footer_deeplink"));
                if (a(str2, momentGuideSectionType2, string3, momentGuideSectionType)) {
                    if (!(d2.h() || momentGuideSectionType2 == null)) {
                        d.c(new com.twitter.android.moments.viewmodels.s().a(str2).a(momentGuideSectionType2).a((List) d2.q()).b(str3).c(str4).d(str5).q());
                    }
                    str5 = string4;
                    d3 = n.d();
                    str = string2;
                    string2 = string;
                    string = string3;
                } else {
                    string2 = str4;
                    momentGuideSectionType = momentGuideSectionType2;
                    string = str2;
                    str = str5;
                    d3 = d2;
                    str5 = str3;
                }
                MomentModule a2 = xVar.a(cursor);
                long j = a2.b().b;
                if (!a.contains(Long.valueOf(j))) {
                    d3.c(a2);
                    a.add(Long.valueOf(j));
                    obj2 = obj;
                } else if (obj == null) {
                    obj2 = 1;
                    bbn.a(new bbl(new IllegalStateException("Got duplicate moment in moments sectioned guide")));
                } else {
                    obj2 = obj;
                }
                if (!cursor.moveToNext()) {
                    break;
                }
                str3 = str5;
                str2 = string;
                obj = obj2;
                d2 = d3;
                str4 = string2;
                str5 = str;
                momentGuideSectionType2 = momentGuideSectionType;
            }
            if (momentGuideSectionType != null) {
                d.c(new com.twitter.android.moments.viewmodels.s().a(string).a(momentGuideSectionType).a((List) d3.q()).b(str5).c(string2).d(str).q());
            }
        }
        return new k(a(cursor, "moments_guide_user_states_is_updated"), a(cursor, "moments_guide_user_states_is_read"), (List) d.q());
    }

    private boolean a(String str, MomentGuideSectionType momentGuideSectionType, String str2, MomentGuideSectionType momentGuideSectionType2) {
        return (aj.a(str, str2) && momentGuideSectionType == momentGuideSectionType2) ? false : true;
    }

    private static Map<Long, Boolean> a(Cursor cursor, String str) {
        r d = r.d();
        if (cursor.moveToFirst()) {
            do {
                d.b(Long.valueOf(cursor.getLong(cursor.getColumnIndex("moments_guide_moment_id"))), Boolean.valueOf(cursor.getInt(cursor.getColumnIndex(str)) == 1));
            } while (cursor.moveToNext());
        }
        return (Map) d.q();
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return this.c;
    }

    public boolean f() {
        return this.e;
    }
}
