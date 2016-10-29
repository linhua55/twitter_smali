package com.twitter.android.interestpicker;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.twitter.android.FollowFlowController;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.ui.widget.TwitterButton;
import defpackage.bbu;
import defpackage.bcx;

/* compiled from: Twttr */
public class InterestPickerActivity extends TwitterFragmentActivity implements OnClickListener, a {
    private FollowFlowController a;
    private c b;
    private boolean c;
    private boolean d;
    private Button e;

    public InterestPickerActivity() {
        this.c = true;
    }

    public t a(Bundle bundle, t tVar) {
        this.a = (FollowFlowController) (bundle == null ? getIntent().getParcelableExtra("flow_controller") : bundle.getParcelable("flow_controller"));
        if (this.a == null) {
            this.a = new FollowFlowController(null);
        }
        if (this.a.e()) {
            getTheme().applyStyle(2131559095, true);
        }
        tVar.d(this.a.f());
        tVar.b(10);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        if (bundle == null) {
            Fragment interestPickerListFragment = new InterestPickerListFragment();
            interestPickerListFragment.a(((j) ((j) j.a(getIntent()).h(false)).a("flow_controller", this.a)).b());
            this.b = interestPickerListFragment;
            getSupportFragmentManager().beginTransaction().add(2131951923, interestPickerListFragment).commit();
            bbu.a(new TwitterScribeLog(ab().g()).b(this.a.g(), "interest_picker", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "impression"));
        } else {
            this.b = (c) getSupportFragmentManager().findFragmentById(2131951923);
            this.c = bundle.getBoolean("loading");
        }
        this.b.a((a) this);
        this.d = getIntent().getBooleanExtra("allow_continue", false);
        ((TwitterButton) findViewById(bcx.skip)).setOnClickListener(this);
        this.e = (Button) findViewById(2131952009);
        if (this.e != null) {
            if (this.a.e()) {
                this.e.setText(2131363155);
            } else {
                this.e.setText(2131362312);
            }
            this.e.setOnClickListener(this);
            this.e.setEnabled(false);
        }
        if (this.c) {
            setTitle(2131362928);
        } else {
            setTitle(2131362830);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("flow_controller", this.a);
        bundle.putBoolean("loading", this.c);
    }

    public void onBackPressed() {
        bbu.a(new TwitterScribeLog(ab().g()).b(this.a.g(), "interest_picker", BuildConfig.VERSION_NAME, "back_button:click"));
        if (this.a.i()) {
            super.onBackPressed();
        }
    }

    protected void onStop() {
        if (isFinishing()) {
            FollowFlowController.b((Context) this);
        } else {
            this.a.a((Context) this);
        }
        super.onStop();
    }

    protected void onStart() {
        super.onStart();
        FollowFlowController.b((Context) this);
    }

    protected void onResume() {
        super.onResume();
        this.a.c("follow_interest_suggestions");
    }

    public void onClick(View view) {
        if (view.getId() == 2131952009) {
            this.b.ay_();
            this.a.b("follow_interest_suggestions");
        } else if (view.getId() == bcx.skip) {
            this.b.a("skip");
        }
        this.a.b((Activity) this);
    }

    public void a() {
        boolean z = false;
        if (this.c) {
            this.c = false;
            setTitle(2131362830);
        }
        if (this.e != null) {
            Button button = this.e;
            if (this.d || this.b.b() > 0) {
                z = true;
            }
            button.setEnabled(z);
        }
    }
}
