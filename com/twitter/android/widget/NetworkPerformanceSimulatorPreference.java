package com.twitter.android.widget;

import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import bbu;
import bbw;
import com.twitter.android.twogday.c;
import com.twitter.library.client.bg;
import com.twitter.library.network.s;
import com.twitter.library.network.v;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.q;
import java.util.Locale;

/* compiled from: Twttr */
public class NetworkPerformanceSimulatorPreference extends DialogPreference {
    private final v a;
    private final q b;
    private EditText c;
    private EditText d;
    private CheckBox e;
    private String f;

    public NetworkPerformanceSimulatorPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = v.a();
        setDialogLayoutResource(2130969121);
        a();
        this.b = PlatformContext.f().b();
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        this.e = (CheckBox) view.findViewById(2131952929);
        this.c = (EditText) view.findViewById(2131952933);
        this.d = (EditText) view.findViewById(2131952934);
        RadioGroup radioGroup = (RadioGroup) view.findViewById(2131952930);
        RadioButton radioButton = (RadioButton) view.findViewById(2131952931);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(2131952932);
        s d = this.a.d();
        if (d != null) {
            this.e.setChecked(true);
            this.c.setText(Integer.toString(d.b()));
            this.d.setText(Integer.toString(d.c()));
        } else {
            this.e.setChecked(false);
        }
        String b = this.a.b();
        for (s d2 : this.a.f()) {
            String a = d2.a();
            View radioButton2 = new RadioButton(getContext());
            radioButton2.setText(a);
            radioGroup.addView(radioButton2, 0);
            radioButton2.setOnClickListener(new ct(this, d2, a, linearLayout));
            if (a.equals(b)) {
                radioButton2.setChecked(true);
            }
        }
        radioButton.setText("Custom");
        radioButton.setOnClickListener(new cu(this, linearLayout));
        if ("Custom".equals(b)) {
            radioButton.setChecked(true);
            linearLayout.setVisibility(0);
        }
    }

    protected void onDialogClosed(boolean z) {
        super.onDialogClosed(z);
        boolean isChecked = this.e.isChecked();
        if (z) {
            try {
                int parseInt = Integer.parseInt(this.c.getText().toString());
                int parseInt2 = Integer.parseInt(this.d.getText().toString());
                try {
                    this.a.a(isChecked, parseInt, parseInt2, this.f);
                    a(isChecked, parseInt, parseInt2, this.f);
                    Toast.makeText(getContext(), "Updated simulation settings", 0).show();
                } catch (IllegalArgumentException e) {
                    Toast.makeText(getContext(), e.getMessage(), 1).show();
                }
            } catch (NumberFormatException e2) {
                Toast.makeText(getContext(), "Invalid simulation settings", 0).show();
            }
        }
        a();
    }

    private void a() {
        CharSequence charSequence;
        if (this.a.c()) {
            charSequence = "Simulation enabled: " + this.a.b();
        } else {
            charSequence = "Simulation disabled";
        }
        setSummary(charSequence);
    }

    private void a(boolean z, int i, int i2, String str) {
        if (c.a() && c.a(this.b)) {
            bbw bbw;
            long g = bg.a().c().g();
            if (z) {
                TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(g).b(new String[]{"app:next_billion_day:::profile_select"});
                twitterScribeLog.d(String.format(Locale.ENGLISH, "%s|%d|%d", new Object[]{str, Integer.valueOf(i), Integer.valueOf(i2)}));
            } else {
                bbw = (TwitterScribeLog) new TwitterScribeLog(g).b(new String[]{"app:next_billion_day:::disable_simulation"});
            }
            bbu.a(bbw);
        }
    }
}
