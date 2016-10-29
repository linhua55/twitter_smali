.class public Lcom/twitter/model/core/TwitterUser;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/twitter/model/core/w;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/twitter/util/serialization/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/d",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            "Lcom/twitter/model/core/cv;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/twitter/model/core/TwitterUser;


# instance fields
.field public final A:I

.field public final B:Lcss;

.field public final C:J

.field public final D:Lcom/twitter/model/core/bm;

.field public final E:Lcom/twitter/model/core/bm;

.field public final F:Lcnd;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Z

.field public final J:Z

.field public final K:I

.field public final L:Lcom/twitter/model/ads/AdvertiserType;

.field public final M:J

.field public final N:Lcom/twitter/model/businessprofiles/BusinessProfileState;

.field public final O:Z

.field public final P:Ljava/lang/String;

.field public transient Q:I

.field public transient R:J

.field public transient S:Lcom/twitter/model/search/TwitterUserMetadata;

.field public transient T:I

.field public transient U:Lcom/twitter/model/timeline/al;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/lang/String;

.field public final r:Lcom/twitter/util/collection/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/geo/TwitterPlace;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Z

.field public final t:Lcom/twitter/model/profile/ExtendedProfile;

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:Z

.field public final z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/model/core/cu;

    invoke-direct {v0}, Lcom/twitter/model/core/cu;-><init>()V

    sput-object v0, Lcom/twitter/model/core/TwitterUser;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    new-instance v0, Lcom/twitter/model/core/cw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/core/cw;-><init>(Lcom/twitter/model/core/cu;)V

    sput-object v0, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    .line 56
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    sput-object v0, Lcom/twitter/model/core/TwitterUser;->b:Lcom/twitter/model/core/TwitterUser;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->Q:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->u:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->i:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->j:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->l:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->m:Z

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->n:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/twitter/model/geo/TwitterPlace;->a:Lcom/twitter/util/serialization/d;

    .line 198
    invoke-static {v0}, Lcom/twitter/util/collection/e;->c(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 197
    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ab;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->v:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->R:J

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->w:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->x:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->y:Z

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->T:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->z:J

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->C:J

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->A:I

    .line 208
    sget-object v0, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    .line 209
    sget-object v0, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    .line 210
    sget-object v0, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->E:Lcom/twitter/model/core/bm;

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/search/TwitterUserMetadata;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->H:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->p:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->o:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->I:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->J:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->K:I

    .line 219
    sget-object v0, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->s:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/ads/AdvertiserType;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->L:Lcom/twitter/model/ads/AdvertiserType;

    .line 222
    sget-object v0, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->M:J

    .line 224
    sget-object v0, Lcnd;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnd;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->F:Lcnd;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/businessprofiles/BusinessProfileState;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->N:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_9
    iput-boolean v1, p0, Lcom/twitter/model/core/TwitterUser;->O:Z

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/businessprofiles/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->P:Ljava/lang/String;

    .line 228
    return-void

    :cond_0
    move v0, v2

    .line 193
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 194
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 195
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 203
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 214
    goto :goto_4

    :cond_5
    move v0, v2

    .line 215
    goto :goto_5

    :cond_6
    move v0, v2

    .line 216
    goto :goto_6

    :cond_7
    move v0, v2

    .line 217
    goto :goto_7

    :cond_8
    move v0, v2

    .line 220
    goto :goto_8

    :cond_9
    move v1, v2

    .line 226
    goto :goto_9
.end method

.method private constructor <init>(Lcom/twitter/model/core/cv;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iget-wide v0, p1, Lcom/twitter/model/core/cv;->a:J

    iput-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 135
    iget-object v0, p1, Lcom/twitter/model/core/cv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lcom/twitter/model/core/cv;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/twitter/model/core/cv;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lcom/twitter/model/core/cv;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lcom/twitter/model/core/cv;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    .line 140
    iget v0, p1, Lcom/twitter/model/core/cv;->s:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->Q:I

    .line 141
    iget v0, p1, Lcom/twitter/model/core/cv;->t:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->u:I

    .line 142
    iget-object v0, p1, Lcom/twitter/model/core/cv;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    .line 143
    iget v0, p1, Lcom/twitter/model/core/cv;->g:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->i:I

    .line 144
    iget v0, p1, Lcom/twitter/model/core/cv;->h:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->j:I

    .line 145
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->j:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->l:Z

    .line 146
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->k:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->m:Z

    .line 147
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->l:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->n:Z

    .line 148
    iget-object v0, p1, Lcom/twitter/model/core/cv;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    .line 149
    iget-object v0, p1, Lcom/twitter/model/core/cv;->p:Lcom/twitter/util/collection/ab;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    .line 150
    iget v0, p1, Lcom/twitter/model/core/cv;->u:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->v:I

    .line 151
    iget-wide v0, p1, Lcom/twitter/model/core/cv;->v:J

    iput-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->R:J

    .line 152
    iget v0, p1, Lcom/twitter/model/core/cv;->w:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->w:I

    .line 153
    iget v0, p1, Lcom/twitter/model/core/cv;->x:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->x:I

    .line 154
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->y:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->y:Z

    .line 155
    iget v0, p1, Lcom/twitter/model/core/cv;->I:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->T:I

    .line 156
    iget-wide v0, p1, Lcom/twitter/model/core/cv;->z:J

    iput-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->z:J

    .line 157
    iget-wide v0, p1, Lcom/twitter/model/core/cv;->C:J

    iput-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->C:J

    .line 158
    iget v0, p1, Lcom/twitter/model/core/cv;->A:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->A:I

    .line 159
    iget-object v0, p1, Lcom/twitter/model/core/cv;->B:Lcss;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    .line 160
    iget-object v0, p1, Lcom/twitter/model/core/cv;->D:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    .line 161
    iget-object v0, p1, Lcom/twitter/model/core/cv;->E:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->E:Lcom/twitter/model/core/bm;

    .line 162
    iget-object v0, p1, Lcom/twitter/model/core/cv;->F:Lcom/twitter/model/search/TwitterUserMetadata;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    .line 163
    iget-object v0, p1, Lcom/twitter/model/core/cv;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/twitter/model/core/cv;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->H:Ljava/lang/String;

    .line 165
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->n:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->p:Z

    .line 166
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->m:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->o:Z

    .line 167
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->J:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->I:Z

    .line 168
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->K:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->J:Z

    .line 169
    iget v0, p1, Lcom/twitter/model/core/cv;->L:I

    iput v0, p0, Lcom/twitter/model/core/TwitterUser;->K:I

    .line 170
    iget-object v0, p1, Lcom/twitter/model/core/cv;->r:Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    .line 171
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->q:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->s:Z

    .line 172
    iget-object v0, p1, Lcom/twitter/model/core/cv;->M:Lcom/twitter/model/ads/AdvertiserType;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->L:Lcom/twitter/model/ads/AdvertiserType;

    .line 173
    iget-object v0, p1, Lcom/twitter/model/core/cv;->N:Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    .line 174
    iget-wide v0, p1, Lcom/twitter/model/core/cv;->O:J

    iput-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->M:J

    .line 175
    iget-object v0, p1, Lcom/twitter/model/core/cv;->P:Lcnd;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->F:Lcnd;

    .line 176
    iget-object v0, p1, Lcom/twitter/model/core/cv;->Q:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->N:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 177
    iget-boolean v0, p1, Lcom/twitter/model/core/cv;->R:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->O:Z

    .line 178
    iget-object v0, p1, Lcom/twitter/model/core/cv;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/TwitterUser;->P:Ljava/lang/String;

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/cv;Lcom/twitter/model/core/cu;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/twitter/model/core/TwitterUser;-><init>(Lcom/twitter/model/core/cv;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->c:J

    return-wide v0
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)Z
    .locals 4

    .prologue
    .line 311
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->R:J

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->R:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->A:I

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->A:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->Q:I

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->Q:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->u:I

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->u:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->v:I

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->v:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->T:I

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->z:J

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->z:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->y:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->y:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->l:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->l:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->I:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->I:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->J:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->J:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->m:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->w:I

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->w:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->x:I

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->x:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->n:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->o:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->o:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    .line 329
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    .line 330
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    .line 331
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->s:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->s:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    .line 333
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    .line 334
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    .line 335
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->H:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->H:Ljava/lang/String;

    .line 336
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    .line 337
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->i:I

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->i:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->j:I

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->j:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    .line 340
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    .line 341
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    .line 342
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->E:Lcom/twitter/model/core/bm;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->E:Lcom/twitter/model/core/bm;

    .line 343
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    .line 344
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->p:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->p:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->L:Lcom/twitter/model/ads/AdvertiserType;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->L:Lcom/twitter/model/ads/AdvertiserType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    .line 347
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->M:J

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->M:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->F:Lcnd;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->F:Lcnd;

    .line 349
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->N:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->N:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->O:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->O:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->P:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->P:Ljava/lang/String;

    .line 352
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->K:I

    invoke-static {v0}, Lcom/twitter/model/core/dd;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->R:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 307
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p0, p1}, Lcom/twitter/model/core/TwitterUser;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 302
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/model/core/TwitterUser;->R:J

    .line 303
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    const-string/jumbo v1, "/sticky/default_profile_images/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    iget-object v0, v0, Lcom/twitter/model/search/TwitterUserMetadata;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 357
    iget-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-wide v6, p0, Lcom/twitter/model/core/TwitterUser;->c:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 358
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v3

    .line 359
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 360
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->H:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->H:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 362
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 363
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 364
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/model/core/TwitterUser;->i:I

    add-int/2addr v0, v3

    .line 365
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/model/core/TwitterUser;->j:I

    add-int/2addr v0, v3

    .line 366
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    .line 367
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->l:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v0, v3

    .line 368
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->I:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_7
    add-int/2addr v0, v3

    .line 369
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->J:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_8
    add-int/2addr v0, v3

    .line 370
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-eqz v0, :cond_9

    move v0, v2

    :goto_9
    add-int/2addr v0, v3

    .line 371
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_a
    add-int/2addr v0, v3

    .line 372
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->o:Z

    if-eqz v0, :cond_b

    move v0, v2

    :goto_b
    add-int/2addr v0, v3

    .line 373
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v3

    .line 374
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v3

    .line 375
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {v0}, Lcom/twitter/model/profile/ExtendedProfile;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v3

    .line 376
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->s:Z

    if-eqz v0, :cond_f

    move v0, v2

    :goto_f
    add-int/2addr v0, v3

    .line 377
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/model/core/TwitterUser;->Q:I

    add-int/2addr v0, v3

    .line 378
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/model/core/TwitterUser;->u:I

    add-int/2addr v0, v3

    .line 379
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/model/core/TwitterUser;->v:I

    add-int/2addr v0, v3

    .line 380
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->R:J

    iget-wide v6, p0, Lcom/twitter/model/core/TwitterUser;->R:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 381
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/model/core/TwitterUser;->w:I

    add-int/2addr v0, v3

    .line 382
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/model/core/TwitterUser;->x:I

    add-int/2addr v0, v3

    .line 383
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->y:Z

    if-eqz v0, :cond_10

    move v0, v2

    :goto_10
    add-int/2addr v0, v3

    .line 384
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/model/core/TwitterUser;->T:I

    add-int/2addr v0, v3

    .line 385
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/twitter/model/core/TwitterUser;->A:I

    add-int/2addr v0, v3

    .line 386
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    invoke-virtual {v0}, Lcss;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v3

    .line 387
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    invoke-virtual {v0}, Lcom/twitter/model/core/bm;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v3

    .line 388
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->E:Lcom/twitter/model/core/bm;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->E:Lcom/twitter/model/core/bm;

    invoke-virtual {v0}, Lcom/twitter/model/core/bm;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v3

    .line 389
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    invoke-virtual {v0}, Lcom/twitter/model/search/TwitterUserMetadata;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v3

    .line 390
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->p:Z

    if-eqz v0, :cond_15

    move v0, v2

    :goto_15
    add-int/2addr v0, v3

    .line 391
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->C:J

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 392
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/TwitterUser;->L:Lcom/twitter/model/ads/AdvertiserType;

    invoke-virtual {v3}, Lcom/twitter/model/ads/AdvertiserType;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 393
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    invoke-virtual {v0}, Lcom/twitter/model/timeline/al;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v3

    .line 394
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->M:J

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 395
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->F:Lcnd;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->F:Lcnd;

    invoke-virtual {v0}, Lcnd;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v3

    .line 396
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/TwitterUser;->N:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    invoke-virtual {v3}, Lcom/twitter/model/businessprofiles/BusinessProfileState;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 397
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/twitter/model/core/TwitterUser;->O:Z

    if-eqz v3, :cond_18

    :goto_18
    add-int/2addr v0, v2

    .line 398
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/core/TwitterUser;->P:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    return v0

    :cond_0
    move v0, v1

    .line 358
    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 359
    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 360
    goto/16 :goto_2

    :cond_3
    move v0, v1

    .line 362
    goto/16 :goto_3

    :cond_4
    move v0, v1

    .line 363
    goto/16 :goto_4

    :cond_5
    move v0, v1

    .line 366
    goto/16 :goto_5

    :cond_6
    move v0, v1

    .line 367
    goto/16 :goto_6

    :cond_7
    move v0, v1

    .line 368
    goto/16 :goto_7

    :cond_8
    move v0, v1

    .line 369
    goto/16 :goto_8

    :cond_9
    move v0, v1

    .line 370
    goto/16 :goto_9

    :cond_a
    move v0, v1

    .line 371
    goto/16 :goto_a

    :cond_b
    move v0, v1

    .line 372
    goto/16 :goto_b

    :cond_c
    move v0, v1

    .line 373
    goto/16 :goto_c

    :cond_d
    move v0, v1

    .line 374
    goto/16 :goto_d

    :cond_e
    move v0, v1

    .line 375
    goto/16 :goto_e

    :cond_f
    move v0, v1

    .line 376
    goto/16 :goto_f

    :cond_10
    move v0, v1

    .line 383
    goto/16 :goto_10

    :cond_11
    move v0, v1

    .line 386
    goto/16 :goto_11

    :cond_12
    move v0, v1

    .line 387
    goto/16 :goto_12

    :cond_13
    move v0, v1

    .line 388
    goto/16 :goto_13

    :cond_14
    move v0, v1

    .line 389
    goto/16 :goto_14

    :cond_15
    move v0, v1

    .line 390
    goto/16 :goto_15

    :cond_16
    move v0, v1

    .line 393
    goto :goto_16

    :cond_17
    move v0, v1

    .line 395
    goto :goto_17

    :cond_18
    move v2, v1

    .line 397
    goto :goto_18
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    iget-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->l:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    sget-object v3, Lcom/twitter/model/geo/TwitterPlace;->a:Lcom/twitter/util/serialization/d;

    .line 248
    invoke-static {v3}, Lcom/twitter/util/collection/e;->c(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v3

    .line 247
    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 249
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->v:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->R:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->y:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->z:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    iget-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->C:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 257
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    sget-object v3, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 259
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    sget-object v3, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 260
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->E:Lcom/twitter/model/core/bm;

    sget-object v3, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 261
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 262
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->p:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->o:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->I:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->J:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->K:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    sget-object v3, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 270
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->s:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->L:Lcom/twitter/model/ads/AdvertiserType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 272
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    sget-object v3, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 273
    iget-wide v4, p0, Lcom/twitter/model/core/TwitterUser;->M:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 274
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->F:Lcnd;

    sget-object v3, Lcnd;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 275
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->N:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 276
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->O:Z

    if-eqz v0, :cond_9

    :goto_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    return-void

    :cond_0
    move v0, v2

    .line 243
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 244
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 245
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 253
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 264
    goto :goto_4

    :cond_5
    move v0, v2

    .line 265
    goto :goto_5

    :cond_6
    move v0, v2

    .line 266
    goto :goto_6

    :cond_7
    move v0, v2

    .line 267
    goto :goto_7

    :cond_8
    move v0, v2

    .line 270
    goto :goto_8

    :cond_9
    move v1, v2

    .line 276
    goto :goto_9
.end method
