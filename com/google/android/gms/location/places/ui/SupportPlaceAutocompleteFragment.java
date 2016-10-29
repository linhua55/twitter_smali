package com.google.android.gms.location.places.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.b;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.a;
import com.google.android.gms.maps.model.LatLngBounds;
import ic;
import id;

public class SupportPlaceAutocompleteFragment extends Fragment {
    private View a;
    private View b;
    private EditText c;
    @Nullable
    private LatLngBounds d;
    @Nullable
    private AutocompleteFilter e;
    @Nullable
    private c f;

    private void a() {
        int i = 0;
        int i2 = !this.c.getText().toString().isEmpty() ? 1 : 0;
        View view = this.b;
        if (i2 == 0) {
            i = 8;
        }
        view.setVisibility(i);
    }

    private void b() {
        int i;
        int a;
        try {
            startActivityForResult(new b(2).a(this.d).a(this.e).a(this.c.getText().toString()).a(1).a(getActivity()), 1);
            i = -1;
        } catch (Throwable e) {
            a = e.a();
            Log.e("Places", "Could not open autocomplete activity", e);
            i = a;
        } catch (Throwable e2) {
            a = e2.errorCode;
            Log.e("Places", "Could not open autocomplete activity", e2);
            i = a;
        }
        if (i != -1) {
            b.a().a(getActivity(), i, 2);
        }
    }

    public void a(CharSequence charSequence) {
        this.c.setText(charSequence);
        a();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1) {
            if (i2 == -1) {
                a a = a.a(getActivity(), intent);
                if (this.f != null) {
                    this.f.a(a);
                }
                a(a.a().toString());
            } else if (i2 == 2) {
                Status b = a.b(getActivity(), intent);
                if (this.f != null) {
                    this.f.a(b);
                }
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(id.place_autocomplete_fragment, viewGroup, false);
        this.a = inflate.findViewById(ic.place_autocomplete_search_button);
        this.b = inflate.findViewById(ic.place_autocomplete_clear_button);
        this.c = (EditText) inflate.findViewById(ic.place_autocomplete_search_input);
        OnClickListener dVar = new d(this);
        this.a.setOnClickListener(dVar);
        this.c.setOnClickListener(dVar);
        this.b.setOnClickListener(new e(this));
        a();
        return inflate;
    }

    public void onDestroyView() {
        this.a = null;
        this.b = null;
        this.c = null;
        super.onDestroyView();
    }
}
