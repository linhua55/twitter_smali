.class public Lcom/twitter/model/core/Tweet;
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
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:J

.field public final B:Z

.field public final C:J

.field public final D:Z

.field public final E:D

.field public final F:D

.field public final G:Z

.field public final H:Z

.field public final I:Lcom/twitter/model/geo/TwitterPlace;

.field public final J:I

.field public final K:J

.field public final L:I

.field public final M:I

.field public final N:Ljava/lang/String;

.field public final O:Ljava/lang/String;

.field public final P:Z

.field public final Q:[Lcom/twitter/model/core/e;

.field public final R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/media/EditableMedia;",
            ">;"
        }
    .end annotation
.end field

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:Ljava/lang/String;

.field public final W:I

.field public final X:Z

.field public final Y:J

.field public final Z:Lcom/twitter/model/core/cc;

.field public a:Z

.field public final aa:Lcom/twitter/model/core/bv;

.field public final ab:Lcom/twitter/model/timeline/al;

.field public final ac:I

.field public final ad:J

.field private final ae:Lcss;

.field private final af:Lclw;

.field private final ag:Lclj;

.field private final ah:Lcom/twitter/model/core/bm;

.field private final ai:Ljava/lang/String;

.field private final aj:Ljava/lang/String;

.field private final ak:I

.field private al:Z

.field public b:J

.field public c:Z

.field public d:I

.field public e:Z

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:J

.field public k:I

.field public final l:Ljava/lang/String;

.field public final m:J

.field public final n:Ljava/lang/String;

.field public final o:J

.field public final p:J

.field public final q:J

.field public final r:Ljava/lang/String;

.field public final s:Lcom/twitter/model/core/ay;

.field public final t:J

.field public final u:Ljava/lang/Long;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:J

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/twitter/model/core/bk;

    invoke-direct {v0}, Lcom/twitter/model/core/bk;-><init>()V

    sput-object v0, Lcom/twitter/model/core/Tweet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->C:J

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->p:J

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->q:J

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->b:J

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->l:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->o:J

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ai:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->aj:Ljava/lang/String;

    .line 206
    sget-object v0, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->m:J

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->x:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->y:J

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->z:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->A:J

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->al:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->c:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->G:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->X:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->k:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->h:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->Y:J

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->i:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->j:J

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->N:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->O:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->d:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->L:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->M:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->B:Z

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->H:Z

    .line 234
    sget-object v0, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ae:Lcss;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->D:Z

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->E:D

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->F:D

    .line 238
    sget-object v0, Lcom/twitter/model/geo/TwitterPlace;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->P:Z

    .line 240
    sget-object v0, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ay;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/model/core/Tweet;->t:J

    .line 242
    sget-object v0, Lclw;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclw;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    .line 243
    sget-object v0, Lclj;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclj;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ag:Lclj;

    .line 244
    sget-object v0, Lcom/twitter/model/core/cc;->b:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cc;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->Z:Lcom/twitter/model/core/cc;

    .line 245
    sget-object v0, Lcom/twitter/model/core/bv;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bv;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->aa:Lcom/twitter/model/core/bv;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 247
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_9

    move-object v0, v3

    :goto_9
    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    .line 248
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->R:Ljava/util/List;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/model/core/Tweet;->K:J

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a

    :goto_a
    iput-boolean v1, p0, Lcom/twitter/model/core/Tweet;->e:Z

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->f:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->S:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->U:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->V:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->T:I

    .line 258
    sget-object v0, Lcom/twitter/model/core/t;->a:Lcom/twitter/util/serialization/ah;

    .line 259
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 258
    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 260
    if-nez v0, :cond_b

    .line 261
    :goto_b
    iput-object v3, p0, Lcom/twitter/model/core/Tweet;->Q:[Lcom/twitter/model/core/e;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    .line 264
    sget-object v0, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->ac:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->ad:J

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/Tweet;->ak:I

    .line 268
    return-void

    :cond_0
    move v0, v2

    .line 213
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 214
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 215
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 216
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 217
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 232
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 233
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 235
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 239
    goto/16 :goto_8

    .line 247
    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_9

    :cond_a
    move v1, v2

    .line 250
    goto :goto_a

    .line 261
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/twitter/model/core/e;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/model/core/e;

    move-object v3, v0

    goto :goto_b
.end method

.method private constructor <init>(Lcom/twitter/model/core/bl;)V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->t:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->C:J

    .line 127
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->o:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->p:J

    .line 128
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->z:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->q:J

    .line 129
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->q:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->b:J

    .line 130
    iget-object v0, p1, Lcom/twitter/model/core/bl;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->l:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/twitter/model/core/bl;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    .line 132
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->n:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->o:J

    .line 133
    iget-object v0, p1, Lcom/twitter/model/core/bl;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lcom/twitter/model/core/bl;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lcom/twitter/model/core/bl;->x:Lcom/twitter/model/core/bm;

    sget-object v1, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    .line 136
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->f:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->m:J

    .line 137
    iget-object v0, p1, Lcom/twitter/model/core/bl;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->x:Ljava/lang/String;

    .line 138
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->h:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->y:J

    .line 139
    iget-object v0, p1, Lcom/twitter/model/core/bl;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->z:Ljava/lang/String;

    .line 140
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->j:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->A:J

    .line 141
    iget-object v0, p1, Lcom/twitter/model/core/bl;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    .line 142
    iget-boolean v0, p1, Lcom/twitter/model/core/bl;->r:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->al:Z

    .line 143
    iget-boolean v0, p1, Lcom/twitter/model/core/bl;->s:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->c:Z

    .line 144
    iget-boolean v0, p1, Lcom/twitter/model/core/bl;->y:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->G:Z

    .line 145
    iget-boolean v0, p1, Lcom/twitter/model/core/bl;->ae:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->X:Z

    .line 146
    iget-boolean v0, p1, Lcom/twitter/model/core/bl;->l:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 147
    iget v0, p1, Lcom/twitter/model/core/bl;->P:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->k:I

    .line 148
    iget v0, p1, Lcom/twitter/model/core/bl;->L:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->h:I

    .line 149
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->af:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->Y:J

    .line 150
    iget v0, p1, Lcom/twitter/model/core/bl;->N:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->i:I

    .line 151
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->O:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->j:J

    .line 152
    iget-object v0, p1, Lcom/twitter/model/core/bl;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->N:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/twitter/model/core/bl;->ai:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->O:Ljava/lang/String;

    .line 154
    iget v0, p1, Lcom/twitter/model/core/bl;->D:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    .line 155
    iget v0, p1, Lcom/twitter/model/core/bl;->E:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->d:I

    .line 156
    iget v0, p1, Lcom/twitter/model/core/bl;->I:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->L:I

    .line 157
    iget v0, p1, Lcom/twitter/model/core/bl;->M:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->M:I

    .line 158
    iget-boolean v0, p1, Lcom/twitter/model/core/bl;->m:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->B:Z

    .line 159
    iget-boolean v0, p1, Lcom/twitter/model/core/bl;->A:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->H:Z

    .line 160
    iget-object v0, p1, Lcom/twitter/model/core/bl;->F:Lcss;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ae:Lcss;

    .line 161
    iget-boolean v0, p1, Lcom/twitter/model/core/bl;->u:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->D:Z

    .line 162
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->v:D

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->E:D

    .line 163
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->w:D

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->F:D

    .line 164
    iget-object v0, p1, Lcom/twitter/model/core/bl;->B:Lcom/twitter/model/geo/TwitterPlace;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    .line 165
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->P:Z

    .line 166
    iget-object v0, p1, Lcom/twitter/model/core/bl;->S:Lcom/twitter/model/core/ay;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    .line 167
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->T:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->t:J

    .line 168
    iget-object v0, p1, Lcom/twitter/model/core/bl;->J:Lclw;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    .line 169
    iget-object v0, p1, Lcom/twitter/model/core/bl;->K:Lclj;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ag:Lclj;

    .line 170
    iget-object v0, p1, Lcom/twitter/model/core/bl;->U:Ljava/lang/Long;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    .line 171
    iget-object v0, p1, Lcom/twitter/model/core/bl;->W:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->R:Ljava/util/List;

    .line 172
    iget-object v0, p1, Lcom/twitter/model/core/bl;->R:Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    .line 173
    iget-wide v0, p1, Lcom/twitter/model/core/bl;->G:J

    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->K:J

    .line 174
    iget-boolean v0, p1, Lcom/twitter/model/core/bl;->H:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/Tweet;->e:Z

    .line 175
    iget v0, p1, Lcom/twitter/model/core/bl;->X:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->f:I

    .line 176
    iget-object v0, p1, Lcom/twitter/model/core/bl;->Y:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    .line 177
    iget v0, p1, Lcom/twitter/model/core/bl;->Z:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->S:I

    .line 178
    iget v0, p1, Lcom/twitter/model/core/bl;->ab:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->U:I

    .line 179
    iget-object v0, p1, Lcom/twitter/model/core/bl;->ac:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->V:Ljava/lang/String;

    .line 180
    iget v0, p1, Lcom/twitter/model/core/bl;->aa:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->T:I

    .line 181
    iget-object v0, p1, Lcom/twitter/model/core/bl;->V:[Lcom/twitter/model/core/e;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->Q:[Lcom/twitter/model/core/e;

    .line 182
    iget v0, p1, Lcom/twitter/model/core/bl;->ad:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    .line 183
    iget-object v0, p1, Lcom/twitter/model/core/bl;->ag:Lcom/twitter/model/core/cc;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->Z:Lcom/twitter/model/core/cc;

    .line 184
    iget-object v0, p1, Lcom/twitter/model/core/bl;->ah:Lcom/twitter/model/core/bv;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->aa:Lcom/twitter/model/core/bv;

    .line 185
    iget-object v0, p1, Lcom/twitter/model/core/bl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->ai:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/twitter/model/core/bl;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/Tweet;->aj:Ljava/lang/String;

    .line 187
    iget v0, p1, Lcom/twitter/model/core/bl;->b:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->ac:I

    .line 188
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    .line 189
    invoke-static {v0}, Lcul;->a(Ljava/lang/Iterable;)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/twitter/model/core/Tweet;->ad:J

    .line 190
    iget v0, p1, Lcom/twitter/model/core/bl;->aj:I

    iput v0, p0, Lcom/twitter/model/core/Tweet;->ak:I

    .line 191
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/bl;Lcom/twitter/model/core/bk;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/twitter/model/core/Tweet;-><init>(Lcom/twitter/model/core/bl;)V

    return-void
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 674
    const-string/jumbo v0, "https://twitter.com/%1$s/status/%2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 458
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/twitter/model/core/Tweet;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->Q()Lcom/twitter/model/core/MediaEntity;

    move-result-object v1

    .line 692
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->Q()Lcom/twitter/model/core/MediaEntity;

    move-result-object v2

    .line 693
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 694
    iget-object v3, v1, Lcom/twitter/model/core/MediaEntity;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Lcom/twitter/model/core/MediaEntity;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v0

    .line 697
    :cond_1
    iget-object v1, v1, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v2, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 701
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RankedTimelineTweet"

    iget-object v1, p0, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    iget-object v1, v1, Lcom/twitter/model/timeline/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()Z
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->J()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twitter/model/core/Tweet;->L:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/model/core/Tweet;->L:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 530
    :goto_0
    return v0

    .line 531
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 549
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->c(I)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->e(I)Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->d(I)Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->r(I)Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public L()Z
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v0}, Lcug;->f(Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v0}, Lcug;->g(Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v0}, Lcug;->h(Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->Q()Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()Lcom/twitter/model/core/MediaEntity;
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    sget-object v1, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-static {v0, v1}, Lcug;->b(Ljava/lang/Iterable;Lcom/twitter/util/math/Size;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    return-object v0
.end method

.method public R()Lcom/twitter/model/core/MediaEntity;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v0}, Lcug;->d(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    return-object v0
.end method

.method public S()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/core/MediaEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    return-object v0
.end method

.method public T()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/core/cx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    return-object v0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0}, Lcom/twitter/model/core/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->al:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ae:Lcss;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ae:Lcss;

    iget-boolean v0, v0, Lcss;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ae:Lcss;

    .line 646
    invoke-virtual {v0}, Lcss;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 645
    :goto_0
    return v0

    .line 646
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public W()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->al:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ae:Lcss;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ae:Lcss;

    iget-boolean v0, v0, Lcss;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public X()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    .line 664
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "tweet"

    goto :goto_0
.end method

.method public Z()Ljava/lang/String;
    .locals 3

    .prologue
    .line 669
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->p:J

    iget-object v2, p0, Lcom/twitter/model/core/Tweet;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/twitter/model/core/Tweet;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->C:J

    return-wide v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/twitter/model/core/Tweet;->al:Z

    .line 714
    return-void
.end method

.method public a(J)Z
    .locals 3

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->V()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 513
    :goto_0
    return v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->C:J

    iget-wide v6, p1, Lcom/twitter/model/core/Tweet;->C:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    .line 379
    invoke-static {v0, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    .line 380
    invoke-static {v0, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->a:Z

    iget-boolean v3, p1, Lcom/twitter/model/core/Tweet;->a:Z

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->c:Z

    iget-boolean v3, p1, Lcom/twitter/model/core/Tweet;->c:Z

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->al:Z

    .line 383
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v3

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/twitter/model/core/Tweet;->S:I

    iget v3, p1, Lcom/twitter/model/core/Tweet;->S:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/twitter/model/core/Tweet;->U:I

    iget v3, p1, Lcom/twitter/model/core/Tweet;->U:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/twitter/model/core/Tweet;->h:I

    iget v3, p1, Lcom/twitter/model/core/Tweet;->h:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/twitter/model/core/Tweet;->k:I

    iget v3, p1, Lcom/twitter/model/core/Tweet;->k:I

    if-ne v0, v3, :cond_1

    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->Y:J

    iget-wide v6, p1, Lcom/twitter/model/core/Tweet;->Y:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    iget v3, p1, Lcom/twitter/model/core/Tweet;->W:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    .line 390
    invoke-static {v0, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    if-ne v0, v3, :cond_1

    .line 392
    invoke-direct {p0, p1}, Lcom/twitter/model/core/Tweet;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    .line 376
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 390
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)Z
    .locals 4

    .prologue
    .line 522
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->b:J

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/twitter/model/core/TwitterUser;->M:J

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->C:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aA()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 834
    .line 835
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->as()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    const/4 v1, 0x1

    .line 837
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->az()Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ai()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 839
    invoke-static {v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public aa()Z
    .locals 4

    .prologue
    .line 683
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->m:J

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

.method public ab()Z
    .locals 2

    .prologue
    .line 687
    iget v0, p0, Lcom/twitter/model/core/Tweet;->ak:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ac()Z
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/twitter/model/core/Tweet;->d:I

    invoke-static {v0}, Lcom/twitter/model/core/Tweet;->a(I)Z

    move-result v0

    return v0
.end method

.method public ad()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->al:Z

    return v0
.end method

.method public ae()Lcom/twitter/model/core/bm;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    return-object v0
.end method

.method public af()Lcss;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ae:Lcss;

    return-object v0
.end method

.method public ag()Lclw;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    return-object v0
.end method

.method public ah()Lclj;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ag:Lclj;

    return-object v0
.end method

.method public ai()J
    .locals 2

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->o:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->b:J

    goto :goto_0
.end method

.method public aj()Z
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ak()Z
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0}, Lcom/twitter/model/core/ac;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 751
    :goto_0
    return v0

    .line 752
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public al()Z
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public am()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public an()Z
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lclw;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ao()Z
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ap()Z
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aq()Z
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->at()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->av()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->au()Z

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

.method public ar()Z
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public as()Z
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public at()Z
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    .line 796
    invoke-virtual {v0}, Lclw;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 795
    :goto_0
    return v0

    .line 796
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public au()Z
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public av()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->J()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    .line 805
    invoke-virtual {v0}, Lclw;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 804
    :goto_0
    return v0

    .line 805
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aw()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ax()Z
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    invoke-virtual {v0}, Lclw;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    const-string/jumbo v1, "app_id"

    invoke-virtual {v0, v1}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public az()Ljava/lang/String;
    .locals 3

    .prologue
    .line 827
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->as()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    const-string/jumbo v1, "recipient"

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lclw;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lclw;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 830
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/MediaEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 625
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0}, Lcom/twitter/model/core/ac;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    .line 626
    iget-wide v4, v0, Lcom/twitter/model/core/MediaEntity;->i:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 627
    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 630
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/twitter/model/core/Tweet;->M:I

    invoke-static {v0}, Lcom/twitter/model/core/dd;->f(I)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 368
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->C:J

    check-cast p1, Lcom/twitter/model/core/Tweet;

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->C:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->aj:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/model/core/Tweet;->ai:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->C:J

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->C:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->R:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->k()Z

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

.method public m()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 4

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->y:J

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

.method public p()Z
    .locals 2

    .prologue
    .line 462
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/twitter/model/core/Tweet;->d:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/twitter/model/core/Tweet;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/twitter/model/core/Tweet;->d:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->i(I)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->j(I)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->n(I)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 273
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->p:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 274
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->q:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->b:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ai:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ah:Lcom/twitter/model/core/bm;

    sget-object v3, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 284
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->m:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->y:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->A:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->al:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->c:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->G:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->X:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->a:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Lcom/twitter/model/core/Tweet;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Lcom/twitter/model/core/Tweet;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->Y:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 298
    iget v0, p0, Lcom/twitter/model/core/Tweet;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->j:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget v0, p0, Lcom/twitter/model/core/Tweet;->J:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/twitter/model/core/Tweet;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Lcom/twitter/model/core/Tweet;->L:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Lcom/twitter/model/core/Tweet;->M:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->B:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->H:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ae:Lcss;

    sget-object v3, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 309
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->D:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->E:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 311
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->F:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 312
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    sget-object v3, Lcom/twitter/model/geo/TwitterPlace;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 313
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->P:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    sget-object v3, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 315
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->t:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 316
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->af:Lclw;

    sget-object v3, Lclw;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 317
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ag:Lclj;

    sget-object v3, Lclj;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 318
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->Z:Lcom/twitter/model/core/cc;

    sget-object v3, Lcom/twitter/model/core/cc;->b:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 319
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->aa:Lcom/twitter/model/core/bv;

    sget-object v3, Lcom/twitter/model/core/bv;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 320
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_9
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->R:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 322
    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->K:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    iget-boolean v0, p0, Lcom/twitter/model/core/Tweet;->e:Z

    if-eqz v0, :cond_a

    :goto_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Lcom/twitter/model/core/Tweet;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget v0, p0, Lcom/twitter/model/core/Tweet;->S:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget v0, p0, Lcom/twitter/model/core/Tweet;->U:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget v0, p0, Lcom/twitter/model/core/Tweet;->T:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->Q:[Lcom/twitter/model/core/e;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/twitter/model/core/t;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 333
    sget-object v1, Lcom/twitter/model/core/t;->a:Lcom/twitter/util/serialization/ah;

    .line 334
    invoke-static {v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    .line 333
    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 335
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v0, p0, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    sget-object v1, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 337
    iget v0, p0, Lcom/twitter/model/core/Tweet;->ac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->ad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 339
    iget v0, p0, Lcom/twitter/model/core/Tweet;->ak:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    return-void

    :cond_0
    move v0, v2

    .line 290
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 291
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 292
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 293
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 294
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 306
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 307
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 309
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 313
    goto/16 :goto_8

    .line 320
    :cond_9
    const-wide/16 v4, 0x0

    goto/16 :goto_9

    :cond_a
    move v1, v2

    .line 323
    goto :goto_a
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->k(I)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->s(I)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/twitter/model/core/Tweet;->W:I

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->p(I)Z

    move-result v0

    return v0
.end method
