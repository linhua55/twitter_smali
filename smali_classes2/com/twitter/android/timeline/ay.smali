.class public Lcom/twitter/android/timeline/ay;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/client/bk;

.field private final b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/twitter/android/timeline/ay;->a:Lcom/twitter/library/client/bk;

    .line 60
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/twitter/android/timeline/ay;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 62
    if-eqz p3, :cond_1

    .line 63
    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 64
    invoke-static {v0}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    .line 65
    const-string/jumbo v0, "state_impressed_suggested_moments_modules"

    invoke-static {p3, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 67
    const-string/jumbo v2, "state_impressed_suggested_moments"

    invoke-static {p3, v2, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 70
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/twitter/android/timeline/ay;->c:Ljava/util/Set;

    .line 72
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/twitter/android/timeline/ay;->d:Ljava/util/Set;

    .line 77
    :goto_1
    return-void

    .line 60
    :cond_0
    new-instance p2, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {p2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/timeline/ay;->c:Ljava/util/Set;

    .line 75
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/timeline/ay;->d:Ljava/util/Set;

    goto :goto_1
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/twitter/android/timeline/ay;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/ay;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/timeline/as;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    iget-object v0, p1, Lcom/twitter/android/timeline/as;->a:Lcom/twitter/model/moments/ay;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/twitter/android/timeline/as;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/android/widget/ex;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/twitter/android/widget/ex;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/android/widget/ex;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/aw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p1, Lcom/twitter/model/moments/aw;->c:Lcom/twitter/model/timeline/al;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/model/moments/aw;->c:Lcom/twitter/model/timeline/al;

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/twitter/android/timeline/as;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p1, Lcom/twitter/android/timeline/as;->o:Lcom/twitter/model/timeline/al;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/android/timeline/as;->o:Lcom/twitter/model/timeline/al;

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/twitter/android/timeline/as;I)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 4

    .prologue
    .line 220
    new-instance v0, Lcom/twitter/library/scribe/o;

    invoke-direct {v0}, Lcom/twitter/library/scribe/o;-><init>()V

    iget-object v1, p1, Lcom/twitter/android/timeline/as;->a:Lcom/twitter/model/moments/ay;

    iget-object v1, v1, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    .line 221
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/o;->a(J)Lcom/twitter/library/scribe/o;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/android/timeline/as;->b:J

    .line 222
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/o;->c(J)Lcom/twitter/library/scribe/o;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/twitter/library/scribe/o;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    .line 224
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/library/scribe/MomentScribeDetails;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 225
    iput p2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->h:I

    .line 226
    iget-object v1, p1, Lcom/twitter/android/timeline/as;->o:Lcom/twitter/model/timeline/al;

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 227
    return-object v0
.end method

.method private c(Lcom/twitter/android/widget/ex;I)Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 4

    .prologue
    .line 233
    new-instance v0, Lcom/twitter/library/scribe/o;

    invoke-direct {v0}, Lcom/twitter/library/scribe/o;-><init>()V

    iget-wide v2, p1, Lcom/twitter/android/widget/ex;->b:J

    .line 235
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/o;->c(J)Lcom/twitter/library/scribe/o;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/twitter/library/scribe/o;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    .line 237
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/library/scribe/MomentScribeDetails;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 238
    iput p2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->h:I

    .line 240
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 88
    invoke-static {v0}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "state_impressed_suggested_moments_modules"

    iget-object v2, p0, Lcom/twitter/android/timeline/ay;->c:Ljava/util/Set;

    invoke-static {p1, v1, v2, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 91
    const-string/jumbo v1, "state_impressed_suggested_moments"

    iget-object v2, p0, Lcom/twitter/android/timeline/ay;->d:Ljava/util/Set;

    invoke-static {p1, v1, v2, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 93
    return-void
.end method

.method public a(Lcom/twitter/android/timeline/as;I)V
    .locals 6

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/ay;->a(Lcom/twitter/android/timeline/as;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/twitter/android/timeline/ay;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/timeline/ay;->c(Lcom/twitter/android/timeline/as;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 137
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/ay;->b(Lcom/twitter/android/timeline/as;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/timeline/ay;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 139
    invoke-direct {p0}, Lcom/twitter/android/timeline/ay;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    const-string/jumbo v4, "moment"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "results"

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/timeline/ay;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 140
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 141
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 143
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/android/timeline/bb;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/twitter/android/timeline/ay;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/twitter/android/timeline/bb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v3

    .line 105
    iget-object v4, p1, Lcom/twitter/android/timeline/bb;->a:Lcmf;

    .line 106
    invoke-virtual {v4}, Lcmf;->bb_()I

    move-result v5

    move v1, v2

    .line 107
    :goto_0
    if-ge v1, v5, :cond_0

    .line 108
    invoke-virtual {v4, v1}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/as;

    .line 109
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/timeline/ay;->c(Lcom/twitter/android/timeline/as;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 113
    iput p2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 114
    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p1, Lcom/twitter/android/timeline/bb;->b:Lcom/twitter/model/moments/aw;

    invoke-direct {p0, v0}, Lcom/twitter/android/timeline/ay;->a(Lcom/twitter/model/moments/aw;)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v4, p0, Lcom/twitter/android/timeline/ay;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v4}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/twitter/android/timeline/ay;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const/4 v5, 0x0

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v0, v4, v2

    const/4 v0, 0x3

    const-string/jumbo v2, "carousel"

    aput-object v2, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "impression"

    aput-object v2, v4, v0

    invoke-virtual {v1, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/timeline/ay;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 119
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 120
    invoke-virtual {v3}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 122
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/android/widget/ex;I)V
    .locals 6

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/ay;->a(Lcom/twitter/android/widget/ex;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/twitter/android/timeline/ay;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/timeline/ay;->c(Lcom/twitter/android/widget/ex;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 157
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/ay;->b(Lcom/twitter/android/timeline/as;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/timeline/ay;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 159
    invoke-direct {p0}, Lcom/twitter/android/timeline/ay;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    const-string/jumbo v4, "pivot"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "results"

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/timeline/ay;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 160
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 161
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 163
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/android/timeline/as;I)V
    .locals 6

    .prologue
    .line 191
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/timeline/ay;->c(Lcom/twitter/android/timeline/as;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 193
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/ay;->b(Lcom/twitter/android/timeline/as;)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/timeline/ay;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 195
    invoke-direct {p0}, Lcom/twitter/android/timeline/ay;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    const-string/jumbo v4, "moment"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "click"

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/timeline/ay;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 196
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 197
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 198
    return-void
.end method

.method public b(Lcom/twitter/android/widget/ex;I)V
    .locals 6

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/timeline/ay;->c(Lcom/twitter/android/widget/ex;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 210
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/ay;->b(Lcom/twitter/android/timeline/as;)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/timeline/ay;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 212
    invoke-direct {p0}, Lcom/twitter/android/timeline/ay;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    const-string/jumbo v4, "pivot"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "click"

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/timeline/ay;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 213
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 214
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 215
    return-void
.end method
