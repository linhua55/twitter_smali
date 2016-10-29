package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import ja;
import jg;

public class SupportMapFragment extends Fragment {
    private final ab a;
    private c b;

    public SupportMapFragment() {
        this.a = new ab(this);
    }

    public static SupportMapFragment a() {
        return new SupportMapFragment();
    }

    protected jg b() {
        this.a.g();
        return this.a.a() == null ? null : ((z) this.a.a()).f();
    }

    @Deprecated
    public final c c() {
        jg b = b();
        if (b == null) {
            return null;
        }
        try {
            ja a = b.a();
            if (a == null) {
                return null;
            }
            if (this.b == null || this.b.a().asBinder() != a.asBinder()) {
                this.b = new c(a);
            }
            return this.b;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ab.a(this.a, activity);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a.a(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a = this.a.a(layoutInflater, viewGroup, bundle);
        a.setClickable(true);
        return a;
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
        ab.a(this.a, activity);
        GoogleMapOptions a = GoogleMapOptions.a(activity, attributeSet);
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("MapOptions", a);
        this.a.a(activity, bundle2, bundle);
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
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.a.b(bundle);
    }

    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
