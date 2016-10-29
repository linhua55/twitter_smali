package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.t;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
public class AddUpdateEmailActivity extends TwitterFragmentActivity implements OnClickListener, kn, w, xv {
    private Button a;
    private EmailEntryFragment b;
    private State c;

    public AddUpdateEmailActivity() {
        this.c = State.NOT_VALIDATED;
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968798);
        tVar.a(false);
        tVar.b(false);
        tVar.b(12);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        boolean z;
        boolean booleanExtra = getIntent().getBooleanExtra("umf_update_email", false);
        this.a = (Button) findViewById(2131952009);
        this.a.setOnClickListener(this);
        if (booleanExtra) {
            setTitle(2131364061);
        } else {
            setTitle(2131362403);
        }
        if (bundle == null) {
            this.b = new EmailEntryFragment();
            h b = h.b(getIntent());
            if (booleanExtra) {
                this.b.a(b.a("umf_add_update_email_flow", true).a("umf_update_email_flow", true).c());
            } else {
                this.b.a(b.a("umf_add_update_email_flow", true).a("umf_update_email_flow", false).c());
            }
            b("impression");
            getSupportFragmentManager().beginTransaction().add(2131951923, this.b).commit();
            this.c = State.NOT_VALIDATED;
        } else if (bundle.containsKey("emaiL_entry_validation_state")) {
            this.c = State.values()[bundle.getInt("emaiL_entry_validation_state")];
        }
        if (this.c == State.VALID) {
            z = true;
        } else {
            z = false;
        }
        a(z);
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(ab().g()).b("add_update_email", null, null, null, str));
    }

    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (this.b == null) {
            this.b = (EmailEntryFragment) fragment;
        }
    }

    public void onClick(View view) {
        if (view.getId() == 2131952009) {
            b();
        }
    }

    public void a(boolean z) {
        this.a.setEnabled(z);
    }

    public void a(int i) {
    }

    public boolean t_() {
        return this.a.isEnabled();
    }

    public void b() {
        b("next");
        this.b.a(BuildConfig.VERSION_NAME);
    }

    public void c() {
    }

    public void u_() {
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("emaiL_entry_validation_state", this.c.ordinal());
    }

    public void a(State state, Level level) {
        this.c = state;
        a(this.c == State.VALID);
    }

    public ValidationState e() {
        return new ValidationState(this.c, Level.LOCAL);
    }

    public void b(boolean z) {
        startActivity(new Intent(this, AdvancedDiscoSettingsActivity.class).putExtra("extra_is_signup_process", z));
    }
}
