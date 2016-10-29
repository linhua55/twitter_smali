package com.twitter.app.users;

import android.content.Context;
import android.os.Bundle;
import com.twitter.android.FollowFlowController;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public abstract class FollowFlowFollowActivity extends FollowActivity {
    protected FollowFlowController d;

    protected void onStart() {
        super.onStart();
        FollowFlowController.b((Context) this);
    }

    protected void onStop() {
        if (isFinishing()) {
            FollowFlowController.b((Context) this);
        } else {
            this.d.a((Context) this);
        }
        super.onStop();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("flow_controller", this.d);
    }

    protected l a(Bundle bundle) {
        Object obj;
        if (bundle == null) {
            obj = (FollowFlowController) getIntent().getParcelableExtra("flow_controller");
        } else {
            FollowFlowController followFlowController = (FollowFlowController) bundle.getParcelable("flow_controller");
        }
        this.d = (FollowFlowController) e.a(obj);
        return (l) new m().a(this.d.g()).a(this.d.d("follow_friends")).b(this.d.d("follow_interest_suggestions")).a(this.d.f()).c(this.d.e()).d(this.d.i()).q();
    }
}
