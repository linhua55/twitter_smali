.class public Lcom/twitter/android/moments/viewmodels/ap;
.super Lcom/twitter/android/moments/viewmodels/MomentModule;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/moments/viewmodels/g;


# instance fields
.field public final a:Lcom/twitter/util/math/Size;

.field public final b:Lcom/twitter/model/moments/k;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/viewmodels/aq;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;-><init>(Lcom/twitter/android/moments/viewmodels/ag;)V

    .line 18
    invoke-static {p1}, Lcom/twitter/android/moments/viewmodels/aq;->a(Lcom/twitter/android/moments/viewmodels/aq;)Lcom/twitter/util/math/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/ap;->a:Lcom/twitter/util/math/Size;

    .line 19
    invoke-static {p1}, Lcom/twitter/android/moments/viewmodels/aq;->b(Lcom/twitter/android/moments/viewmodels/aq;)Lcom/twitter/model/moments/k;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/ap;->b:Lcom/twitter/model/moments/k;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/moments/viewmodels/MomentModule$Type;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/twitter/android/moments/viewmodels/MomentModule$Type;->a:Lcom/twitter/android/moments/viewmodels/MomentModule$Type;

    return-object v0
.end method

.method public c()Lcom/twitter/model/moments/k;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/ap;->b:Lcom/twitter/model/moments/k;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 40
    goto :goto_0

    .line 43
    :cond_3
    check-cast p1, Lcom/twitter/android/moments/viewmodels/ap;

    .line 44
    invoke-virtual {p0}, Lcom/twitter/android/moments/viewmodels/ap;->b()Lcom/twitter/model/moments/ad;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/ap;->b()Lcom/twitter/model/moments/ad;

    move-result-object v4

    iget-wide v4, v4, Lcom/twitter/model/moments/ad;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/twitter/android/moments/viewmodels/ap;->d:Lcom/twitter/model/core/Tweet;

    iget-object v3, p1, Lcom/twitter/android/moments/viewmodels/ap;->d:Lcom/twitter/model/core/Tweet;

    .line 45
    invoke-virtual {v2, v3}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/moments/viewmodels/ap;->b()Lcom/twitter/model/moments/ad;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twitter/android/moments/viewmodels/ap;->d:Lcom/twitter/model/core/Tweet;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
