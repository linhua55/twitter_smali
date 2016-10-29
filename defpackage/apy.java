package defpackage;

import android.content.Context;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cw;

/* compiled from: Twttr */
/* renamed from: apy */
public class apy extends aou {
    private final aqa a;

    public apy(Context context, aqa aqa) {
        super(context);
        this.a = aqa;
    }

    public aow a() {
        String str;
        String[] strArr;
        if (this.a.a) {
            str = "topics_ev_type=5 AND list_mapping_list_mapping_user_id=? AND list_mapping_list_mapping_type=?";
            strArr = new String[]{String.valueOf(this.a.c), String.valueOf(0)};
        } else {
            str = "topics_ev_type=5 AND list_mapping_list_mapping_user_id=? AND list_mapping_list_mapping_type IN (0,2)";
            strArr = new String[]{String.valueOf(this.a.c)};
        }
        return new aoy().a(ck.a(cw.a, this.a.d)).a(str).b(strArr).a(cco.a).a();
    }
}
