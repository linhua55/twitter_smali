package com.twitter.android;

import android.text.Editable;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.twitter.android.util.i;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
class iu extends i implements OnFocusChangeListener {
    final /* synthetic */ LoginActivity a;

    iu(LoginActivity loginActivity, PopupEditText popupEditText) {
        this.a = loginActivity;
        super(popupEditText);
        popupEditText.setOnFocusChangeListener(this);
    }

    private void b() {
        if (this.b.d()) {
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.a.ab().g());
            String[] strArr = new String[1];
            strArr[0] = String.format("login:identifier:%s:typeahead:impression", new Object[]{this.a.e});
            bbu.a(twitterScribeLog.b(strArr));
        }
    }

    public void onClick(View view) {
        super.onClick(view);
        b();
    }

    public void afterTextChanged(Editable editable) {
        super.afterTextChanged(editable);
        b();
    }

    public void a(int i) {
        super.a(i);
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.a.ab().g());
        String[] strArr = new String[1];
        strArr[0] = String.format("login:identifier:%s:typeahead:select", new Object[]{this.a.e});
        bbu.a(twitterScribeLog.b(strArr));
    }

    public void onFocusChange(View view, boolean z) {
        if (view != this.b) {
            return;
        }
        if (a()) {
            this.b.a();
            b();
            return;
        }
        this.b.b();
    }
}
