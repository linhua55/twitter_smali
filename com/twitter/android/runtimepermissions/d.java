package com.twitter.android.runtimepermissions;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.twitter.android.lf;
import com.twitter.util.aj;
import java.util.Set;

/* compiled from: Twttr */
final class d implements OnClickListener {
    final /* synthetic */ Context a;
    final /* synthetic */ Set b;

    d(Context context, Set set) {
        this.a = context;
        this.b = set;
    }

    public void onClick(View view) {
        this.a.startActivity(lf.a().a(this.a));
        Toast.makeText(this.a, this.a.getString(2131363258, new Object[]{aj.a(", ", this.b)}), 1).show();
    }
}
