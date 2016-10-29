package com.google.android.gms.ads.internal.reward.mediation.client;

import android.os.Parcel;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;
import it;
import org.json.JSONArray;
import org.json.JSONException;

@oi
public final class RewardItemParcel implements SafeParcelable {
    public static final e CREATOR;
    public final int a;
    public final String b;
    public final int c;

    static {
        CREATOR = new e();
    }

    public RewardItemParcel(int i, String str, int i2) {
        this.a = i;
        this.b = str;
        this.c = i2;
    }

    public RewardItemParcel(it itVar) {
        this(1, itVar.a(), itVar.b());
    }

    public RewardItemParcel(String str, int i) {
        this(1, str, i);
    }

    @Nullable
    public static RewardItemParcel a(@Nullable String str) {
        RewardItemParcel rewardItemParcel = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                rewardItemParcel = a(new JSONArray(str));
            } catch (JSONException e) {
            }
        }
        return rewardItemParcel;
    }

    @Nullable
    public static RewardItemParcel a(JSONArray jSONArray) throws JSONException {
        return (jSONArray == null || jSONArray.length() == 0) ? null : new RewardItemParcel(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof RewardItemParcel)) {
            return false;
        }
        RewardItemParcel rewardItemParcel = (RewardItemParcel) obj;
        return bj.a(this.b, rewardItemParcel.b) && bj.a(Integer.valueOf(this.c), Integer.valueOf(rewardItemParcel.c));
    }

    public int hashCode() {
        return bj.a(new Object[]{this.b, Integer.valueOf(this.c)});
    }

    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}
