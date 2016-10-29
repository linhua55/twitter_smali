package com.twitter.android.widget;

import android.content.Context;
import android.preference.Preference;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* compiled from: Twttr */
public class MessagePreference extends Preference {
    public MessagePreference(Context context) {
        super(context);
    }

    protected View onCreateView(ViewGroup viewGroup) {
        View onCreateView = super.onCreateView(viewGroup);
        View findViewById = onCreateView.findViewById(16908310);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        TextView textView = (TextView) onCreateView.findViewById(16908304);
        if (textView != null) {
            textView.setMaxLines(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        }
        return onCreateView;
    }
}
