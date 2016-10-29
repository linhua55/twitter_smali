.class Ltv/periscope/android/api/PsBroadcast;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public availableForReplay:Z
    .annotation runtime Lnu;
        a = "available_for_replay"
    .end annotation
.end field

.field public broadcastState:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "state"
    .end annotation
.end field

.field public cameraRotation:I
    .annotation runtime Lnu;
        a = "camera_rotation"
    .end annotation
.end field

.field public city:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "city"
    .end annotation
.end field

.field public className:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "class_name"
    .end annotation
.end field

.field public country:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "country"
    .end annotation
.end field

.field public countryState:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "country_state"
    .end annotation
.end field

.field public createdAt:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "created_at"
    .end annotation
.end field

.field public endTime:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "end"
    .end annotation
.end field

.field public expirationTime:I
    .annotation runtime Lnu;
        a = "expiration"
    .end annotation
.end field

.field public featured:Z
    .annotation runtime Lnu;
        a = "featured"
    .end annotation
.end field

.field public featuredCategory:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "featured_category"
    .end annotation
.end field

.field public featuredCategoryColor:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "featured_category_color"
    .end annotation
.end field

.field public featuredReason:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "featured_reason"
    .end annotation
.end field

.field public hasLocation:Z
    .annotation runtime Lnu;
        a = "has_location"
    .end annotation
.end field

.field public heartThemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "heart_theme"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lnu;
        a = "height"
    .end annotation
.end field

.field private highlightAvailable:Z
    .annotation runtime Lnu;
        a = "highlight_available"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "id"
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "image_url"
    .end annotation
.end field

.field public imageUrlSmall:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "image_url_small"
    .end annotation
.end field

.field public ipLat:D
    .annotation runtime Lnu;
        a = "ip_lat"
    .end annotation
.end field

.field public ipLong:D
    .annotation runtime Lnu;
        a = "ip_lng"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Lnu;
        a = "is_locked"
    .end annotation
.end field

.field public isTrusted:Z
    .annotation runtime Lnu;
        a = "is_trusted"
    .end annotation
.end field

.field public numTotalWatched:I
    .annotation runtime Lnu;
        a = "n_total_watched"
    .end annotation
.end field

.field public numWatching:I
    .annotation runtime Lnu;
        a = "n_watching"
    .end annotation
.end field

.field public numWebWatching:I
    .annotation runtime Lnu;
        a = "n_web_watching"
    .end annotation
.end field

.field public pingTime:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "ping"
    .end annotation
.end field

.field public profileImageUrl:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "profile_image_url"
    .end annotation
.end field

.field public shareUserDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "share_display_names"
    .end annotation
.end field

.field public shareUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "share_user_ids"
    .end annotation
.end field

.field public sortScore:J
    .annotation runtime Lnu;
        a = "sort_score"
    .end annotation
.end field

.field public startTime:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "start"
    .end annotation
.end field

.field public timedOutTime:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "timedout"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "status"
    .end annotation
.end field

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

.field public userDisplayName:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "user_display_name"
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "user_id"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lnu;
        a = "width"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseTime(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 139
    invoke-static {p1}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p1}, Ldnb;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 142
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public create()Ltv/periscope/model/o;
    .locals 4

    .prologue
    .line 146
    invoke-static {}, Ltv/periscope/model/o;->B()Ltv/periscope/model/p;

    move-result-object v0

    .line 147
    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->id:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->a(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->title:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->b(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->country:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/api/PsBroadcast;->city:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/api/PsBroadcast;->countryState:Ljava/lang/String;

    .line 150
    invoke-static {v1, v2, v3}, Ltv/periscope/model/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltv/periscope/model/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->a(Ltv/periscope/model/z;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->createdAt:Ljava/lang/String;

    .line 151
    invoke-direct {p0, v1}, Ltv/periscope/android/api/PsBroadcast;->parseTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/periscope/model/p;->c(J)Ltv/periscope/model/p;

    move-result-object v0

    iget-boolean v1, p0, Ltv/periscope/android/api/PsBroadcast;->featured:Z

    .line 152
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->a(Z)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->featuredCategory:Ljava/lang/String;

    .line 153
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->c(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->featuredCategoryColor:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->d(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->featuredReason:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->e(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/android/api/PsBroadcast;->sortScore:J

    .line 156
    invoke-virtual {v0, v2, v3}, Ltv/periscope/model/p;->d(J)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->startTime:Ljava/lang/String;

    .line 157
    invoke-direct {p0, v1}, Ltv/periscope/android/api/PsBroadcast;->parseTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/periscope/model/p;->e(J)Ltv/periscope/model/p;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/android/api/PsBroadcast;->ipLat:D

    .line 158
    invoke-virtual {v0, v2, v3}, Ltv/periscope/model/p;->a(D)Ltv/periscope/model/p;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/android/api/PsBroadcast;->ipLong:D

    .line 159
    invoke-virtual {v0, v2, v3}, Ltv/periscope/model/p;->b(D)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->userId:Ljava/lang/String;

    .line 160
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->f(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-boolean v1, p0, Ltv/periscope/android/api/PsBroadcast;->isLocked:Z

    .line 161
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->b(Z)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->imageUrl:Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->g(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->imageUrlSmall:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->h(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->userDisplayName:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->i(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->profileImageUrl:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->j(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->twitterUsername:Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->k(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    iget-boolean v1, p0, Ltv/periscope/android/api/PsBroadcast;->hasLocation:Z

    .line 167
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->c(Z)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->shareUserIds:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->a(Ljava/util/ArrayList;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->shareUserDisplayNames:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->b(Ljava/util/ArrayList;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->heartThemes:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->c(Ljava/util/ArrayList;)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->pingTime:Ljava/lang/String;

    .line 171
    invoke-direct {p0, v1}, Ltv/periscope/android/api/PsBroadcast;->parseTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/periscope/model/p;->b(J)Ltv/periscope/model/p;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/api/PsBroadcast;->timedOutTime:Ljava/lang/String;

    .line 172
    invoke-direct {p0, v1}, Ltv/periscope/android/api/PsBroadcast;->parseTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/periscope/model/p;->a(J)Ltv/periscope/model/p;

    move-result-object v0

    iget v1, p0, Ltv/periscope/android/api/PsBroadcast;->cameraRotation:I

    .line 173
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->a(I)Ltv/periscope/model/p;

    move-result-object v0

    iget-boolean v1, p0, Ltv/periscope/android/api/PsBroadcast;->highlightAvailable:Z

    .line 174
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->d(Z)Ltv/periscope/model/p;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ltv/periscope/model/p;->a()Ltv/periscope/model/o;

    move-result-object v1

    .line 177
    iget-object v2, p0, Ltv/periscope/android/api/PsBroadcast;->broadcastState:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_1
    iget-object v0, p0, Ltv/periscope/android/api/PsBroadcast;->endTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Ltv/periscope/android/api/PsBroadcast;->parseTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ltv/periscope/model/o;->a(J)V

    .line 200
    iget v0, p0, Ltv/periscope/android/api/PsBroadcast;->numWatching:I

    iget v2, p0, Ltv/periscope/android/api/PsBroadcast;->numWebWatching:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->b(I)V

    .line 201
    iget-boolean v0, p0, Ltv/periscope/android/api/PsBroadcast;->availableForReplay:Z

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->b(Z)V

    .line 202
    iget-boolean v0, p0, Ltv/periscope/android/api/PsBroadcast;->isTrusted:Z

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->c(Z)V

    .line 203
    iget v0, p0, Ltv/periscope/android/api/PsBroadcast;->expirationTime:I

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->a(I)V

    .line 204
    iget v0, p0, Ltv/periscope/android/api/PsBroadcast;->numTotalWatched:I

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->c(I)V

    .line 206
    return-object v1

    .line 177
    :sswitch_0
    const-string/jumbo v3, "NOT_STARTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "PUBLISHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "RUNNING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "TIMED_OUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "ENDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 179
    :pswitch_0
    sget-object v0, Ltv/periscope/model/BroadcastState;->a:Ltv/periscope/model/BroadcastState;

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->a(Ltv/periscope/model/BroadcastState;)V

    goto :goto_1

    .line 183
    :pswitch_1
    sget-object v0, Ltv/periscope/model/BroadcastState;->b:Ltv/periscope/model/BroadcastState;

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->a(Ltv/periscope/model/BroadcastState;)V

    goto :goto_1

    .line 187
    :pswitch_2
    sget-object v0, Ltv/periscope/model/BroadcastState;->c:Ltv/periscope/model/BroadcastState;

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->a(Ltv/periscope/model/BroadcastState;)V

    goto :goto_1

    .line 191
    :pswitch_3
    sget-object v0, Ltv/periscope/model/BroadcastState;->d:Ltv/periscope/model/BroadcastState;

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->a(Ltv/periscope/model/BroadcastState;)V

    goto :goto_1

    .line 195
    :pswitch_4
    sget-object v0, Ltv/periscope/model/BroadcastState;->e:Ltv/periscope/model/BroadcastState;

    invoke-virtual {v1, v0}, Ltv/periscope/model/o;->a(Ltv/periscope/model/BroadcastState;)V

    goto :goto_1

    .line 177
    :sswitch_data_0
    .sparse-switch
        -0x78c55e61 -> :sswitch_2
        -0x576cf1fa -> :sswitch_3
        -0x52ecc12b -> :sswitch_0
        -0x3a24e32 -> :sswitch_1
        0x3f0d29a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
