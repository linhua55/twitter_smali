package com.twitter.android.commerce.view;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.Loader;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.Toast;
import bti;
import ccq;
import com.twitter.android.bu;
import com.twitter.android.commerce.network.e;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.t;
import com.twitter.library.client.az;
import com.twitter.library.commerce.model.v;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cz;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.object.ObjectUtils;
import defpackage.bdl;
import defpackage.cgu;

/* compiled from: Twttr */
public class OrderHistoryFragment extends TwitterListFragment<Cursor, bdl<Cursor>> implements OnClickListener {
    private boolean a;
    private e b;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(new e(getActivity(), getActivity().getIntent().getExtras()));
        if (bundle == null) {
            this.a = false;
        } else {
            this.a = bundle.getBoolean("state_fetched", false);
        }
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.f(2130968694);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ap().a(new v(this, getActivity()));
    }

    public void a() {
        super.a();
        ac_();
        if (az().isEmpty()) {
            a(3);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("state_fetched", this.a);
    }

    protected Loader<Cursor> q_() {
        return new bu(getActivity(), ck.a(cz.a, this.b.a().g()), ccq.a, null, null, null);
    }

    @SuppressLint({"MissingSuperCall"})
    protected void a(cgu<Cursor> cgu_android_database_Cursor) {
        b((cgu) cgu_android_database_Cursor);
        if (az().isEmpty() && !this.a) {
            a(3);
        }
    }

    protected void a(int i) {
        az.a(getActivity()).a(new bti(getActivity(), this.b.a(), null), new w(this));
    }

    protected void g() {
        super.g();
        a(3);
    }

    protected void a(ListView listView, View view, int i, long j) {
        byte[] blob = ((Cursor) ObjectUtils.a(listView.getItemAtPosition(i))).getBlob(3);
        Intent intent = new Intent(getActivity(), OrderHistoryDetailsActivity.class);
        Bundle bundle = new Bundle();
        bundle.putByteArray("commerce_order_history_item", blob);
        intent.putExtras(bundle);
        startActivity(intent);
    }

    public void a(v vVar) {
        this.a = true;
    }

    public void onClick(View view) {
        if (view.getId() == 2131952170) {
            a(((MediaImageView) view).getImageRequest());
        }
    }

    private void a(a aVar) {
        if (aVar != null && aVar.v()) {
            Uri parse = Uri.parse(aVar.d());
            startActivity(new Intent(getActivity(), CommerceImageActivity.class).setData(parse).putExtra("image_url", parse.toString()));
        }
    }

    public void a(Bundle bundle) {
        Toast.makeText(getActivity(), getResources().getString(2131362251), 1).show();
    }

    public void a(e eVar) {
        this.b = eVar;
    }
}
