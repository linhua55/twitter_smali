package com.twitter.android.profilecompletionmodule.addbirthday;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.android.profilecompletionmodule.BaseProfileStepScreen;
import vl;
import vm;
import vn;
import vo;

/* compiled from: Twttr */
public class AddBirthdayScreen extends BaseProfileStepScreen<b> implements vn, vo {
    private vl a;

    public AddBirthdayScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = new vl(new vm(this), this, this);
    }

    protected int getTitle() {
        return 2131363394;
    }

    protected int getSubtitle() {
        return 2131363393;
    }

    protected vl getBirthdateForm() {
        return this.a;
    }

    public void c() {
        ((b) getPresenter()).y();
    }

    public void L_() {
        ((b) getPresenter()).z();
    }

    public void e() {
        ((b) getPresenter()).A();
    }

    public void f() {
        ((b) getPresenter()).B();
    }

    public void M_() {
        ((b) getPresenter()).C();
    }

    public void i() {
    }

    public void j() {
    }
}
