package com.twitter.android.dialog;

import android.app.Dialog;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.android.mx;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.app.common.base.d;

/* compiled from: Twttr */
public class SimpleDialogFragment extends BaseDialogFragment implements OnClickListener {
    public /* synthetic */ d g() {
        return f();
    }

    public SimpleDialogFragment() {
        setStyle(0, 2131558777);
    }

    public l f() {
        return l.b(getArguments());
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        a(getDialog(), bundle);
        return null;
    }

    protected void a(Dialog dialog, Bundle bundle) {
        TypedArray obtainStyledAttributes = dialog.getContext().obtainStyledAttributes(mx.SimpleDialog);
        View findViewById = dialog.findViewById(2131951644);
        if (obtainStyledAttributes.getBoolean(2, false)) {
            dialog.findViewById(16908290).setOnClickListener(this);
            findViewById.setOnClickListener(this);
        }
        if (bundle == null) {
            int resourceId = obtainStyledAttributes.getResourceId(0, 0);
            if (resourceId > 0) {
                findViewById.startAnimation(AnimationUtils.loadAnimation(getActivity(), resourceId));
            }
        }
        obtainStyledAttributes.recycle();
        l f = f();
        Button button = (Button) dialog.findViewById(2131951637);
        if (f.i()) {
            button.setText(f.r());
            button.setOnClickListener(this);
        } else if (f.e()) {
            button.setText(f.n());
            button.setOnClickListener(this);
        } else {
            button.setVisibility(8);
        }
        View findViewById2 = dialog.findViewById(2131951635);
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(this);
        }
        button = (Button) dialog.findViewById(2131951636);
        if (f.j()) {
            button.setText(f.s());
            button.setOnClickListener(this);
        } else if (f.f()) {
            button.setText(f.o());
            button.setOnClickListener(this);
        } else {
            button.setVisibility(8);
        }
        ImageView imageView = (ImageView) dialog.findViewById(2131951642);
        if (f.b()) {
            imageView.setImageResource(f.k());
        } else {
            imageView.setVisibility(8);
        }
        TextView textView = (TextView) dialog.findViewById(2131951645);
        if (f.g()) {
            textView.setText(f.p());
        } else if (f.c()) {
            textView.setText(f.l());
        } else {
            textView.setVisibility(8);
        }
        textView = (TextView) dialog.findViewById(2131951643);
        if (f.h()) {
            textView.setText(f.q());
        } else if (f.d()) {
            textView.setText(f.m());
        } else {
            textView.setVisibility(8);
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        Dialog dialog = getDialog();
        if (id == 2131951644 || id == 16908290) {
            if (id == 16908290) {
                dialog.cancel();
            }
        } else if (id == 2131951637) {
            h();
        } else if (id == 2131951636) {
            i();
        } else if (id == 2131951635) {
            j();
        }
    }

    protected void h() {
        c(-1);
        dismiss();
    }

    protected void i() {
        c(-2);
        dismiss();
    }

    protected void j() {
        dismiss();
    }
}
