package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;

/* compiled from: Twttr */
public class PhotoGridActivity extends TwitterFragmentActivity {
    public t a(Bundle bundle, t tVar) {
        if (io.a()) {
            tVar.c(false);
            tVar.a(4);
        }
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        setTitle(intent.getStringExtra("user_name"));
        k(2131363912);
        if (bundle == null) {
            Fragment photoGridFragment = new PhotoGridFragment();
            photoGridFragment.e(!io.a());
            photoGridFragment.a(((j) j.a(intent).h(true)).b());
            getSupportFragmentManager().beginTransaction().add(2131951923, photoGridFragment).commit();
        }
    }
}
