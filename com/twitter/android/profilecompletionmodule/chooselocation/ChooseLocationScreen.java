package com.twitter.android.profilecompletionmodule.chooselocation;

import android.content.Context;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import com.twitter.android.client.bu;
import com.twitter.android.profilecompletionmodule.BaseProfileStepScreen;
import com.twitter.config.d;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.internal.android.widget.ag;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class ChooseLocationScreen extends BaseProfileStepScreen<b> implements Filterable, ag {
    private PopupEditText a;

    public ChooseLocationScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setLocation(String str) {
        this.a.setText(str);
    }

    public void a() {
        this.a.setSelection(this.a.getText().length());
        this.a.requestFocus();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (PopupEditText) findViewById(2131952418);
        if (d.a("profile_structured_location_enabled")) {
            this.a.setPopupEditTextListener(this);
            this.a.setOnClickListener(this);
        }
        this.a.addTextChangedListener(new d(this));
    }

    @StringRes
    protected int getTitle() {
        return 2131363401;
    }

    @StringRes
    protected int getSubtitle() {
        return 2131363400;
    }

    protected void setAdapter(ArrayAdapter<TwitterPlace> arrayAdapter) {
        this.a.setAdapter(arrayAdapter);
        this.a.a(PopupEditText.a, this, (long) bu.h());
    }

    protected String getLocationFieldText() {
        return this.a.getText().toString();
    }

    public void onClick(View view) {
        if (view.getId() == 2131952418) {
            ((b) getPresenter()).c(getLocationFieldText());
        } else {
            super.onClick(view);
        }
    }

    public void a(int i) {
        ((b) getPresenter()).a(i, getLocationFieldText());
        View focusSearch = this.a.focusSearch(130);
        if (focusSearch != null) {
            focusSearch.requestFocus();
        }
    }

    public void w() {
    }

    public void a(CharSequence charSequence) {
        if (this.a.hasFocus()) {
            ((b) getPresenter()).d(getLocationFieldText());
        }
    }

    public void a(int i, int i2) {
    }

    public Filter getFilter() {
        return new e(this);
    }

    protected void b() {
        if (!this.a.c()) {
            this.a.a();
        }
    }

    protected boolean a(String str) {
        CharSequence obj = this.a != null ? this.a.getText().toString() : null;
        return (str == null && aj.b(obj)) || !(str == null || str.equals(obj));
    }
}
