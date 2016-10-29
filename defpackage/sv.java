package defpackage;

import android.content.Context;
import android.net.Uri;
import cgt;
import cgu;
import com.twitter.android.client.bu;
import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.android.provider.x;
import com.twitter.android.provider.z;
import com.twitter.util.aj;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: sv */
public class sv extends tk<z> {
    private final Uri c;
    private final Uri d;
    private String e;

    public sv(Context context, boolean z, te teVar) {
        super(context, bu.g(), teVar);
        this.c = SuggestionsProvider.h.buildUpon().appendQueryParameter("friendship", String.valueOf((z ? 2 : 0) | 1024)).build();
        this.d = this.c.buildUpon().appendQueryParameter("add_real_time_suggestions", "true").build();
    }

    public void a(List<Long> list) {
        this.e = list != null ? aj.a(",", list) : null;
    }

    protected cgu<z> a(String str, boolean z) {
        Uri build;
        Object trim = str.trim();
        if (aj.a(trim)) {
            build = this.e == null ? this.c : this.c.buildUpon().appendQueryParameter("additional_user_ids", this.e).build();
        } else {
            build = this.d;
        }
        return new cgt(this.a.getContentResolver().query(build, null, trim, null, null), new x());
    }
}
