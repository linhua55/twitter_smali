package com.twitter.android;

import android.os.Bundle;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.widget.ListView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;
import com.twitter.library.media.manager.i;
import com.twitter.library.media.manager.l;
import com.twitter.library.view.h;
import com.twitter.media.request.b;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.math.Size;
import java.util.List;

/* compiled from: Twttr */
public class HashflagsViewerActivity extends TwitterFragmentActivity {
    private ListView a;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968883);
        tVar.c(false);
        tVar.a(false);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        int i = 0;
        super.a(bundle, dVar);
        List<h> b = com.twitter.library.view.d.b();
        i d = l.a(this).d();
        for (h hVar : b) {
            d.a(new b(hVar.b).a(Size.a(Callback.DEFAULT_DRAG_ANIMATION_DURATION, Callback.DEFAULT_DRAG_ANIMATION_DURATION)).a());
        }
        this.a = (ListView) findViewById(2131952537);
        if (b.isEmpty()) {
            TypefacesTextView typefacesTextView = (TypefacesTextView) findViewById(2131952536);
            typefacesTextView.setText("No hashflags enabled");
            typefacesTextView.setVisibility(0);
            this.a.setVisibility(8);
        }
        gz[] gzVarArr = new gz[b.size()];
        for (h hVar2 : b) {
            int i2 = i + 1;
            gzVarArr[i] = new gz(hVar2.a, hVar2.b, com.twitter.library.view.d.a(hVar2.a));
            i = i2;
        }
        this.a.setAdapter(new ha(this, gzVarArr));
    }
}
