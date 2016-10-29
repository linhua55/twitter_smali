package defpackage;

import android.database.Cursor;
import com.twitter.config.d;
import com.twitter.model.core.as;
import com.twitter.model.core.bf;
import com.twitter.model.core.bg;
import com.twitter.model.core.bw;
import com.twitter.model.core.e;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.search.a;
import com.twitter.model.timeline.aj;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: ccb */
public class ccb extends chj<bf> {
    public static final ccb a;

    static {
        a = new ccb();
    }

    private ccb() {
    }

    public bf a(Cursor cursor) {
        Object b;
        double d = 0.0d;
        bf bfVar = new bf();
        long j = cursor.getLong(1);
        if (bbn.b()) {
            b = bbn.a().b("tweet_id", Long.valueOf(j));
        } else {
            b = null;
        }
        try {
            boolean z;
            double d2;
            String string;
            bfVar.g(j).e(j).h(cursor.getLong(23)).f(cursor.getLong(21)).b(cursor.getString(22)).c(cursor.getString(24)).d(cursor.getLong(5)).h(cursor.getString(3)).d(cursor.getString(4)).a(cursor.getString(2)).i(cursor.getString(26));
            bfVar.a((bg) m.a(cursor.getBlob(18), bg.b)).a(cursor.getLong(25)).e(cursor.getString(7)).b(cursor.getLong(8)).f(cursor.getString(10)).c(cursor.getLong(9)).g(cursor.getString(11));
            int i = cursor.getInt(20);
            bfVar.c(i == 1).d(cursor.getInt(43) == 1);
            cursor.getColumnIndex("rt_status_groups_ref_id");
            if (i == 4) {
                z = true;
            } else {
                z = false;
            }
            bf f = bfVar.f(z);
            if (i == 7) {
                z = true;
            } else {
                z = false;
            }
            bf i2 = f.i(z);
            if (cursor.getInt(13) == 1) {
                z = true;
            } else {
                z = false;
            }
            i2 = i2.a(z).g(cursor.getInt(35)).d(cursor.getInt(34)).l(cursor.getLong(38)).f(cursor.getInt(32)).j(cursor.getLong(33)).j(cursor.getString(36)).k(cursor.getString(37)).a(cursor.getInt(27)).b(cursor.getInt(29)).c(cursor.getInt(19)).e(cursor.getInt(12));
            if ((bfVar.M & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            i2 = i2.b(z);
            if ((bfVar.M & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            i2 = i2.g(z).a((cni) m.a(cursor.getBlob(28), cni.a));
            if (cursor.isNull(14) || cursor.isNull(15)) {
                z = false;
            } else {
                z = true;
            }
            bf e = i2.e(z);
            if (bfVar.u) {
                d2 = cursor.getDouble(14);
            } else {
                d2 = 0.0d;
            }
            e = e.a(d2);
            if (bfVar.u) {
                d = cursor.getDouble(15);
            }
            e.b(d).a((TwitterPlace) m.a(cursor.getBlob(39), TwitterPlace.a)).a((as) m.a(cursor.getBlob(40), as.a)).k(cursor.getLong(41)).a((cgl) m.a(cursor.getBlob(31), cgl.a)).a((bw) m.a(cursor.getBlob(46), bw.b));
            if (d.a("cards_kernel_persist_card_state")) {
                bfVar.a((cly) m.a(cursor.getBlob(45), cly.a));
            }
            long j2 = cursor.getLong(42);
            bfVar.a(j2 > 0 ? Long.valueOf(j2) : null).a((List) m.a(cursor.getBlob(44), s.a(EditableMedia.j))).i(cursor.getLong(0)).h(cursor.getInt(30) == 1);
            int columnIndex = cursor.getColumnIndex("status_metadata_soc_type");
            if (columnIndex != -1) {
                columnIndex = cursor.getInt(columnIndex);
            } else {
                columnIndex = -1;
            }
            bfVar.h(columnIndex);
            columnIndex = cursor.getColumnIndex("status_metadata_soc_name");
            if (columnIndex != -1) {
                string = cursor.getString(columnIndex);
            } else {
                string = null;
            }
            bfVar.l(string);
            columnIndex = cursor.getColumnIndex("status_metadata_soc_fav_count");
            if (columnIndex != -1) {
                columnIndex = cursor.getInt(columnIndex);
            } else {
                columnIndex = 0;
            }
            bfVar.i(columnIndex);
            columnIndex = cursor.getColumnIndex("status_metadata_soc_rt_count");
            if (columnIndex != -1) {
                columnIndex = cursor.getInt(columnIndex);
            } else {
                columnIndex = 0;
            }
            bfVar.k(columnIndex);
            columnIndex = cursor.getColumnIndex("status_metadata_soc_second_name");
            if (columnIndex != -1) {
                string = cursor.getString(columnIndex);
            } else {
                string = null;
            }
            bfVar.m(string);
            columnIndex = cursor.getColumnIndex("status_metadata_soc_others_count");
            if (columnIndex != -1) {
                columnIndex = cursor.getInt(columnIndex);
            } else {
                columnIndex = 0;
            }
            bfVar.j(columnIndex);
            columnIndex = cursor.getColumnIndex("status_metadata_highlights");
            if (columnIndex != -1) {
                List list = (List) m.a(cursor.getBlob(columnIndex), s.a(a.a));
                bfVar.a(list == null ? null : (e[]) list.toArray(new e[list.size()]));
            }
            columnIndex = cursor.getColumnIndex("timeline_flags");
            if (columnIndex != -1) {
                columnIndex = cursor.getInt(columnIndex);
            } else {
                columnIndex = 0;
            }
            bfVar.l(columnIndex);
            columnIndex = cursor.getColumnIndex("timeline_scribe_content");
            if (columnIndex != -1) {
                bfVar.a((aj) m.a(cursor.getBlob(columnIndex), aj.a));
            }
            if (bbn.b()) {
                bbn.a().b("tweet_id", b);
            }
            return bfVar;
        } catch (Throwable th) {
            if (bbn.b()) {
                bbn.a().b("tweet_id", b);
            }
        }
    }
}
