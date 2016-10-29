package com.twitter.android;

import android.content.Context;
import android.text.format.DateUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.TextView;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.library.util.aq;
import com.twitter.model.account.LoginVerificationRequest;
import com.twitter.util.aj;
import java.util.Date;
import java.util.List;

/* compiled from: Twttr */
class je extends ArrayAdapter<LoginVerificationRequest> {
    final /* synthetic */ LoginVerificationFragment a;

    je(LoginVerificationFragment loginVerificationFragment, Context context, int i, int i2, List<LoginVerificationRequest> list) {
        this.a = loginVerificationFragment;
        super(context, i, i2, list);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (i == 0) {
            return this.a.a(viewGroup);
        }
        String string;
        String string2;
        View view2 = super.getView(i, null, viewGroup);
        LoginVerificationRequest loginVerificationRequest = (LoginVerificationRequest) getItem(i);
        long time = new Date().getTime();
        ImageButton imageButton = (ImageButton) view2.findViewById(2131951620);
        ImageButton imageButton2 = (ImageButton) view2.findViewById(2131951622);
        TextView textView = (TextView) view2.findViewById(2131952679);
        if (aj.a(loginVerificationRequest.d)) {
            string = this.a.getString(2131363018);
        } else {
            string = loginVerificationRequest.d;
        }
        if (aj.a(loginVerificationRequest.e)) {
            string2 = this.a.getString(2131363017);
        } else {
            string2 = loginVerificationRequest.e;
        }
        if (Math.abs(loginVerificationRequest.f - time) < HlsChunkSource.DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS || loginVerificationRequest.f > time) {
            textView.setText(aq.a(LoginVerificationFragment.c(this.a), this.a.getString(2131362990, new Object[]{string, string2}), '\"'));
        } else {
            textView.setText(aq.a(LoginVerificationFragment.c(this.a), this.a.getString(2131362989, new Object[]{string, string2, DateUtils.getRelativeTimeSpanString(loginVerificationRequest.f, new Date().getTime(), 0)}), '\"'));
        }
        OnClickListener jfVar = new jf(this, loginVerificationRequest);
        OnClickListener jgVar = new jg(this, loginVerificationRequest);
        imageButton.setOnClickListener(jfVar);
        imageButton2.setOnClickListener(jgVar);
        return view2;
    }
}
