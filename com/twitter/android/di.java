package com.twitter.android;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import bbu;
import com.twitter.android.dm.o;
import com.twitter.android.dm.r;
import com.twitter.android.provider.z;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class di implements OnItemClickListener {
    final /* synthetic */ DMInboxFragment a;

    di(DMInboxFragment dMInboxFragment) {
        this.a = dMInboxFragment;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (((z) adapterView.getItemAtPosition(i)) != null) {
            bbu.a(new TwitterScribeLog(DMInboxFragment.a(this.a)).b(new String[]{"messages:inbox:user_list:user:select"}));
            this.a.startActivity(r.a(this.a.getActivity(), new o().a(new long[]{r0.a}).d()));
        }
    }
}
