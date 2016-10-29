.class public Ltv/periscope/android/api/PsUser;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public className:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "class_name"
    .end annotation
.end field

.field public createdAt:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "created_at"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "description"
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "display_name"
    .end annotation
.end field

.field public hasDigitsId:Z
    .annotation runtime Lnu;
        a = "has_digits_id"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "id"
    .end annotation
.end field

.field public initials:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "initials"
    .end annotation
.end field

.field public isBlocked:Z
    .annotation runtime Lnu;
        a = "is_blocked"
    .end annotation
.end field

.field public isBluebirdUser:Z
    .annotation runtime Lnu;
        a = "is_bluebird_user"
    .end annotation
.end field

.field public isEmployee:Z
    .annotation runtime Lnu;
        a = "is_employee"
    .end annotation
.end field

.field public isFollowing:Z
    .annotation runtime Lnu;
        a = "is_following"
    .end annotation
.end field

.field public isMuted:Z
    .annotation runtime Lnu;
        a = "is_muted"
    .end annotation
.end field

.field public isVerified:Z
    .annotation runtime Lnu;
        a = "is_twitter_verified"
    .end annotation
.end field

.field public numBlocked:I
    .annotation runtime Lnu;
        a = "n_blocked"
    .end annotation
.end field

.field public numFollowers:I
    .annotation runtime Lnu;
        a = "n_followers"
    .end annotation
.end field

.field public numFollowing:I
    .annotation runtime Lnu;
        a = "n_following"
    .end annotation
.end field

.field public numHearts:I
    .annotation runtime Lnu;
        a = "n_hearts"
    .end annotation
.end field

.field private numHeartsGiven:I
    .annotation runtime Lnu;
        a = "n_hearts_given"
    .end annotation
.end field

.field private participantIndex:I
    .annotation runtime Lnu;
        a = "participant_index"
    .end annotation
.end field

.field public profileImageUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/periscope/android/api/PsProfileImageUrl;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "profile_image_urls"
    .end annotation
.end field

.field public transient profileUrlLarge:Ljava/lang/String;

.field public transient profileUrlMedium:Ljava/lang/String;

.field public transient profileUrlSmall:Ljava/lang/String;

.field public twitterUsername:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "twitter_username"
    .end annotation
.end field

.field public updatedAt:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "updated_at"
    .end annotation
.end field

.field public username:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "username"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Ltv/periscope/android/api/PsUser$1;

    invoke-direct {v0}, Ltv/periscope/android/api/PsUser$1;-><init>()V

    sput-object v0, Ltv/periscope/android/api/PsUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->className:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->createdAt:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->updatedAt:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->username:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->initials:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->description:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->profileImageUrls:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/api/PsUser;->numFollowers:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/api/PsUser;->numFollowing:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ltv/periscope/android/api/PsUser;->isFollowing:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ltv/periscope/android/api/PsUser;->isBlocked:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Ltv/periscope/android/api/PsUser;->hasDigitsId:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/api/PsUser;->numHearts:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Ltv/periscope/android/api/PsUser;->isMuted:Z

    .line 112
    return-void

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    :cond_1
    move v0, v2

    .line 108
    goto :goto_1

    :cond_2
    move v0, v2

    .line 109
    goto :goto_2

    :cond_3
    move v1, v2

    .line 111
    goto :goto_3
.end method

.method private loadProfileUrls()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileImageUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlSmall:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlMedium:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlLarge:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 175
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 176
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsProfileImageUrl;

    .line 177
    iget v3, v0, Ltv/periscope/android/api/PsProfileImageUrl;->width:I

    iget v4, v0, Ltv/periscope/android/api/PsProfileImageUrl;->height:I

    mul-int/2addr v3, v4

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, v0, Ltv/periscope/android/api/PsProfileImageUrl;->url:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 182
    if-lez v0, :cond_1

    .line 184
    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 185
    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 186
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlSmall:Ljava/lang/String;

    .line 187
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlMedium:Ljava/lang/String;

    .line 188
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlLarge:Ljava/lang/String;

    .line 191
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getNumHearts()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Ltv/periscope/android/api/PsUser;->numHearts:I

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ltv/periscope/android/api/PsUser;->numHearts:I

    goto :goto_0
.end method

.method public getNumHeartsGiven()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Ltv/periscope/android/api/PsUser;->numHeartsGiven:I

    return v0
.end method

.method public getParticipantIndex()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Ltv/periscope/android/api/PsUser;->participantIndex:I

    return v0
.end method

.method public getProfileUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlLarge:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Ltv/periscope/android/api/PsUser;->loadProfileUrls()V

    .line 169
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUrlMedium()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlMedium:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Ltv/periscope/android/api/PsUser;->loadProfileUrls()V

    .line 162
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlMedium:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlSmall:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Ltv/periscope/android/api/PsUser;->loadProfileUrls()V

    .line 154
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public setNumHeartsGiven(I)V
    .locals 0

    .prologue
    .line 220
    iput p1, p0, Ltv/periscope/android/api/PsUser;->numHeartsGiven:I

    .line 221
    return-void
.end method

.method public setParticipantIndex(I)V
    .locals 0

    .prologue
    .line 212
    iput p1, p0, Ltv/periscope/android/api/PsUser;->participantIndex:I

    .line 213
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->createdAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->updatedAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->initials:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->profileImageUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 130
    iget v0, p0, Ltv/periscope/android/api/PsUser;->numFollowers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Ltv/periscope/android/api/PsUser;->numFollowing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-boolean v0, p0, Ltv/periscope/android/api/PsUser;->isFollowing:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean v0, p0, Ltv/periscope/android/api/PsUser;->isBlocked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-boolean v0, p0, Ltv/periscope/android/api/PsUser;->hasDigitsId:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Ltv/periscope/android/api/PsUser;->numHearts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-boolean v0, p0, Ltv/periscope/android/api/PsUser;->isMuted:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void

    :cond_0
    move v0, v2

    .line 132
    goto :goto_0

    :cond_1
    move v0, v2

    .line 133
    goto :goto_1

    :cond_2
    move v0, v2

    .line 134
    goto :goto_2

    :cond_3
    move v1, v2

    .line 136
    goto :goto_3
.end method
