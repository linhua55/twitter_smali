package com.twitter.library.widget;

import android.content.Context;
import android.support.annotation.DrawableRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import bcx;
import com.twitter.library.scribe.TwitterScribeItem;

/* compiled from: Twttr */
public class UserView extends BaseUserView implements OnClickListener {
    private boolean A;
    private int B;
    public ActionButton r;
    public ActionButton s;
    public CheckBox t;
    private e<UserView> u;
    private e<UserView> v;
    private e<UserView> w;
    private e<UserView> x;
    private TwitterScribeItem y;
    private String z;

    public UserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A = true;
        this.B = -1;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.r = (ActionButton) findViewById(bcx.action_button);
        this.s = (ActionButton) findViewById(bcx.block_button);
        if (this.s != null) {
            this.s.setOnClickListener(this);
        }
        this.t = (CheckBox) findViewById(bcx.user_checkbox);
        if (this.t != null) {
            this.t.setOnClickListener(this);
        }
    }

    public void a(String str, String str2) {
        super.a(str, str2);
        if (this.r != null) {
            this.r.setUsername(str);
        }
    }

    public void a(boolean z, boolean z2) {
        setMuted(z);
        if (z2 && this.n != null) {
            this.n.setVisibility(0);
        }
    }

    public void setScribeItem(TwitterScribeItem twitterScribeItem) {
        this.y = twitterScribeItem;
    }

    public TwitterScribeItem getScribeItem() {
        return this.y;
    }

    public void setScribeComponent(String str) {
        this.z = str;
    }

    public String getScribeComponent() {
        return this.z;
    }

    public void a(@DrawableRes int i, e<UserView> eVar) {
        this.r.a(i);
        this.r.setOnClickListener(this);
        this.r.setUsername(this.i.getText().toString());
        setActionButtonClickListener(eVar);
    }

    public void setActionButtonClickListener(e<UserView> eVar) {
        this.u = eVar;
    }

    public void setBlockButtonClickListener(e<UserView> eVar) {
        this.v = eVar;
    }

    public void setMutedViewClickListener(e<UserView> eVar) {
        this.x = eVar;
        if (this.n != null && eVar != null) {
            this.n.setOnClickListener(this);
        }
    }

    public void setCheckBoxClickListener(e<UserView> eVar) {
        this.w = eVar;
    }

    public void b(boolean z) {
        this.A = z;
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == bcx.action_button) {
            if (this.u != null) {
                this.u.a(this, this.f, id, this.B);
            }
            if (this.A) {
                this.r.toggle();
            }
        } else if (id == bcx.block_button) {
            if (this.v != null) {
                this.v.a(this, this.f, id, this.B);
            }
            this.s.toggle();
        } else if (id == bcx.user_checkbox) {
            if (this.w != null) {
                this.w.a(this, this.f, id, this.B);
            }
        } else if (id == bcx.muted_item && this.x != null) {
            this.x.a(this, this.f, id, this.B);
        }
    }

    public int getPosition() {
        return this.B;
    }

    public void setPosition(int i) {
        this.B = i;
    }
}
