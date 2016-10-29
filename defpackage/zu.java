package defpackage;

import android.net.Uri;
import cdc;
import cdg;
import com.twitter.config.c;

/* compiled from: Twttr */
/* renamed from: zu */
public class zu {
    private final boolean a;

    public zu() {
        this.a = c.a("android_status_timelines_in_timeline_table_4412", new String[]{"enabled"});
    }

    public Uri a(Uri uri, Uri uri2) {
        return this.a ? uri2 : uri;
    }

    public String[] a() {
        if (this.a) {
            return cdc.a;
        }
        return cdg.a;
    }

    public String b() {
        if (this.a) {
            return "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC";
        }
        return "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
    }
}
