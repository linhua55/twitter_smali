package com.twitter.android.settings.developer;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.widget.EditText;
import com.twitter.android.FlowActivity;
import com.twitter.android.FlowData;

/* compiled from: Twttr */
class i implements OnClickListener {
    final /* synthetic */ EditText a;
    final /* synthetic */ DebugSettingsActivity b;

    i(DebugSettingsActivity debugSettingsActivity, EditText editText) {
        this.b = debugSettingsActivity;
        this.a = editText;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        String obj = this.a.getText().toString();
        FlowData flowData = new FlowData();
        flowData.a(true);
        flowData.d(obj);
        flowData.b(this.b);
        flowData.a(this.b);
        this.b.startActivity(new Intent(this.b, FlowActivity.class).putExtra("phone100_signup_first_step_password", true).putExtra("flow_data", flowData));
    }
}
