package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class SupportStreetViewPanoramaFragment extends Fragment {
    private final ae a;

    public SupportStreetViewPanoramaFragment() {
        this.a = new ae(this);
    }

    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportStreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.a.a(activity);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a.a(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.a.a(layoutInflater, viewGroup, bundle);
    }

    public void onDestroy() {
        this.a.e();
        super.onDestroy();
    }

    public void onDestroyView() {
        this.a.d();
        super.onDestroyView();
    }

    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(activity, attributeSet, bundle);
        this.a.a(activity);
        this.a.a(activity, new Bundle(), bundle);
    }

    public void onLowMemory() {
        this.a.f();
        super.onLowMemory();
    }

    public void onPause() {
        this.a.c();
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        this.a.b();
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportStreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.a.b(bundle);
    }

    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
