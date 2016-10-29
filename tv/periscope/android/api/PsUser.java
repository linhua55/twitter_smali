package tv.periscope.android.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import defpackage.op;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: Twttr */
public class PsUser implements Parcelable {
    public static final Creator CREATOR;
    @op(a = "class_name")
    public String className;
    @op(a = "created_at")
    public String createdAt;
    @op(a = "description")
    public String description;
    @op(a = "display_name")
    public String displayName;
    @op(a = "id")
    public String id;
    @op(a = "initials")
    public String initials;
    @op(a = "is_blocked")
    public boolean isBlocked;
    @op(a = "is_employee")
    public boolean isEmployee;
    @op(a = "is_following")
    public boolean isFollowing;
    @op(a = "is_muted")
    public boolean isMuted;
    @op(a = "is_twitter_verified")
    public boolean isVerified;
    @op(a = "n_blocked")
    public int numBlocked;
    @op(a = "n_followers")
    public int numFollowers;
    @op(a = "n_following")
    public int numFollowing;
    @op(a = "n_hearts")
    public int numHearts;
    @op(a = "n_hearts_given")
    private int numHeartsGiven;
    @op(a = "participant_index")
    private int participantIndex;
    @op(a = "profile_image_urls")
    public ArrayList<PsProfileImageUrl> profileImageUrls;
    public transient String profileUrlLarge;
    public transient String profileUrlMedium;
    public transient String profileUrlSmall;
    @op(a = "updated_at")
    public String updatedAt;
    @op(a = "username")
    public String username;

    public PsUser(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.className = parcel.readString();
        this.id = parcel.readString();
        this.createdAt = parcel.readString();
        this.updatedAt = parcel.readString();
        this.username = parcel.readString();
        this.displayName = parcel.readString();
        this.initials = parcel.readString();
        this.description = parcel.readString();
        this.profileImageUrls = parcel.readArrayList(getClass().getClassLoader());
        this.numFollowers = parcel.readInt();
        this.numFollowing = parcel.readInt();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.isFollowing = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.isBlocked = z;
        this.numHearts = parcel.readInt();
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.isMuted = z2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeString(this.className);
        parcel.writeString(this.id);
        parcel.writeString(this.createdAt);
        parcel.writeString(this.updatedAt);
        parcel.writeString(this.username);
        parcel.writeString(this.displayName);
        parcel.writeString(this.initials);
        parcel.writeString(this.description);
        parcel.writeList(this.profileImageUrls);
        parcel.writeInt(this.numFollowers);
        parcel.writeInt(this.numFollowing);
        if (this.isFollowing) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.isBlocked) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.numHearts);
        if (!this.isMuted) {
            i3 = 0;
        }
        parcel.writeInt(i3);
    }

    static {
        CREATOR = new 1();
    }

    public String getProfileUrlSmall() {
        if (this.profileUrlSmall == null) {
            loadProfileUrls();
        }
        return this.profileUrlSmall;
    }

    public String getProfileUrlMedium() {
        if (this.profileUrlMedium == null) {
            loadProfileUrls();
        }
        return this.profileUrlMedium;
    }

    public String getProfileUrlLarge() {
        if (this.profileUrlLarge == null) {
            loadProfileUrls();
        }
        return this.profileUrlLarge;
    }

    private void loadProfileUrls() {
        if (this.profileImageUrls != null && !this.profileImageUrls.isEmpty() && this.profileUrlSmall == null && this.profileUrlMedium == null && this.profileUrlLarge == null) {
            Map treeMap = new TreeMap();
            Iterator it = this.profileImageUrls.iterator();
            while (it.hasNext()) {
                PsProfileImageUrl psProfileImageUrl = (PsProfileImageUrl) it.next();
                treeMap.put(Integer.valueOf(psProfileImageUrl.width * psProfileImageUrl.height), psProfileImageUrl.url);
            }
            List arrayList = new ArrayList(treeMap.values());
            int size = arrayList.size();
            if (size > 0) {
                int max = Math.max(0, size - 1);
                int min = Math.min(1, max);
                this.profileUrlSmall = (String) arrayList.get(0);
                this.profileUrlMedium = (String) arrayList.get(min);
                this.profileUrlLarge = (String) arrayList.get(max);
            }
        }
    }

    public int getNumHearts() {
        if (this.numHearts == 0) {
            return 1;
        }
        return this.numHearts;
    }

    public int getParticipantIndex() {
        return this.participantIndex;
    }

    public void setParticipantIndex(int i) {
        this.participantIndex = i;
    }

    public int getNumHeartsGiven() {
        return this.numHeartsGiven;
    }

    public void setNumHeartsGiven(int i) {
        this.numHeartsGiven = i;
    }
}
