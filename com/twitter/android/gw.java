package com.twitter.android;

import android.location.Address;
import android.location.Geocoder;
import android.os.AsyncTask;
import android.widget.Toast;
import com.google.android.gms.maps.b;
import com.google.android.gms.maps.model.LatLng;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class gw extends AsyncTask<String, Void, List<Address>> {
    final /* synthetic */ GeoDebugActivity a;

    private gw(GeoDebugActivity geoDebugActivity) {
        this.a = geoDebugActivity;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((String[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((List) obj);
    }

    protected List<Address> a(String... strArr) {
        try {
            return new Geocoder(this.a).getFromLocationName(strArr[0], 1);
        } catch (IOException e) {
            return null;
        }
    }

    protected void a(List<Address> list) {
        if (list == null) {
            Toast.makeText(this.a, 2131364312, 0).show();
        } else if (list.isEmpty()) {
            Toast.makeText(this.a, 2131364313, 0).show();
        } else {
            Address address = (Address) list.get(0);
            this.a.d.b(b.a(new LatLng(address.getLatitude(), address.getLongitude()), 15.0f));
        }
    }
}
