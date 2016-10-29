package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.Toast;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.t;
import com.twitter.library.client.l;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.model.core.ag;
import com.twitter.model.media.EditableImage;
import com.twitter.util.ab;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.serialization.s;
import java.util.List;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class MediaTagActivity extends TwitterFragmentActivity {
    private MediaTagFragment a;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968987);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        this.a = (MediaTagFragment) getSupportFragmentManager().findFragmentByTag("user_select");
        if (this.a == null) {
            a((EditableImage) intent.getParcelableExtra("editable_image"));
        }
        this.a.a(c());
    }

    public boolean a(w wVar) {
        wVar.a(2132017177);
        return super.a(wVar);
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a != 2131953461 && a != k.home) {
            return super.a(acVar);
        }
        if (a == 2131953461) {
            CharSequence string;
            Object<ag> c = this.a.c();
            setResult(-1, ab.a(new Intent(), "photo_tags", (Object) c, s.a(ag.a)));
            if (!c.isEmpty()) {
                n e = n.e();
                for (ag agVar : c) {
                    e.c(Long.valueOf(agVar.b));
                }
                Iterable c2 = c();
                if (c2 != null) {
                    e.c(c2);
                }
                a(CollectionUtils.a((List) e.q(), 0, 20));
            }
            a = c.size();
            if (a == 0) {
                string = getResources().getString(2131363053);
            } else {
                string = getResources().getQuantityString(2131492876, a, new Object[]{Integer.valueOf(a)});
            }
            Toast.makeText(getApplicationContext(), string, 0).show();
            this.a.h();
        } else {
            setResult(0);
        }
        finish();
        return true;
    }

    private void a(EditableImage editableImage) {
        this.a = new MediaTagFragment();
        this.a.a(new h().a("editable_image", (Parcelable) editableImage).c());
        getSupportFragmentManager().beginTransaction().add(2131952711, this.a, "user_select").commit();
    }

    private List<Long> c() {
        return (List) new l(this, ab().e(), "media_tags").a("recent_tags", s.a(s.f));
    }

    private void a(List<Long> list) {
        new l(this, ab().e(), "media_tags").a().a("recent_tags", list, s.a(s.f)).apply();
    }
}
