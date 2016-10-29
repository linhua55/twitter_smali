.class final Lcom/twitter/library/provider/dz;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:J

.field public final b:Lcss;


# direct methods
.method constructor <init>(JLcss;)V
    .locals 1

    .prologue
    .line 13722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13723
    iput-wide p1, p0, Lcom/twitter/library/provider/dz;->a:J

    .line 13724
    iput-object p3, p0, Lcom/twitter/library/provider/dz;->b:Lcss;

    .line 13725
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13729
    if-ne p0, p1, :cond_1

    .line 13738
    :cond_0
    :goto_0
    return v0

    .line 13730
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 13732
    :cond_3
    check-cast p1, Lcom/twitter/library/provider/dz;

    .line 13734
    iget-wide v2, p0, Lcom/twitter/library/provider/dz;->a:J

    iget-wide v4, p1, Lcom/twitter/library/provider/dz;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 13735
    :cond_4
    iget-object v2, p0, Lcom/twitter/library/provider/dz;->b:Lcss;

    if-eqz v2, :cond_5

    .line 13736
    iget-object v0, p0, Lcom/twitter/library/provider/dz;->b:Lcss;

    iget-object v1, p1, Lcom/twitter/library/provider/dz;->b:Lcss;

    invoke-virtual {v0, v1}, Lcss;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 13738
    :cond_5
    iget-object v2, p1, Lcom/twitter/library/provider/dz;->b:Lcss;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 13744
    iget-wide v0, p0, Lcom/twitter/library/provider/dz;->a:J

    iget-wide v2, p0, Lcom/twitter/library/provider/dz;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 13745
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/library/provider/dz;->b:Lcss;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/provider/dz;->b:Lcss;

    invoke-virtual {v0}, Lcss;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 13746
    return v0

    .line 13745
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
