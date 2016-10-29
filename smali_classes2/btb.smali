.class public abstract Lbtb;
.super Lbss;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbss",
        "<",
        "Lbta;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:J

.field private final b:J

.field private final c:Lbsw;

.field private final h:I

.field private final i:I

.field private final j:Lcom/twitter/android/timeline/cp;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Ljava/lang/String;JILcom/twitter/android/timeline/cp;)V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0, p1, p3, p2}, Lbss;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 41
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "You must supply a valid timelineOwnerId"

    invoke-static {v0, v1}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 42
    iput-wide p4, p0, Lbtb;->a:J

    .line 43
    iget-wide v0, p2, Lcom/twitter/library/service/ab;->c:J

    iput-wide v0, p0, Lbtb;->b:J

    .line 44
    iput p6, p0, Lbtb;->i:I

    .line 45
    new-instance v0, Lbsw;

    iget-wide v2, p0, Lbtb;->b:J

    invoke-direct {v0, p1, v2, v3}, Lbsw;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lbtb;->c:Lbsw;

    .line 46
    iput-object p7, p0, Lbtb;->j:Lcom/twitter/android/timeline/cp;

    .line 47
    invoke-static {p7}, Lbtb;->a(Lcom/twitter/android/timeline/cp;)I

    move-result v0

    iput v0, p0, Lbtb;->h:I

    .line 48
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/twitter/android/timeline/cp;)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 52
    if-nez p0, :cond_0

    .line 69
    :goto_0
    return v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget v1, v1, Lcom/twitter/model/timeline/dd;->c:I

    packed-switch v1, :pswitch_data_0

    .line 72
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Cannot construct a URTRequest with a cursor of type %d"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget v4, v4, Lcom/twitter/model/timeline/dd;->c:I

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 72
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 60
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 63
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 66
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 69
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected A()Lcub;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Lcuc;

    invoke-direct {v0}, Lcuc;-><init>()V

    iget v1, p0, Lbtb;->h:I

    .line 129
    invoke-virtual {v0, v1}, Lcuc;->b(I)Lcuc;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lbtb;->O()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcuc;->c(Z)Lcuc;

    move-result-object v0

    iget-wide v2, p0, Lbtb;->b:J

    .line 131
    invoke-virtual {v0, v2, v3}, Lcuc;->a(J)Lcuc;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lbtb;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcuc;->a(Z)Lcuc;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lbtb;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcuc;->b(Z)Lcuc;

    move-result-object v0

    iget-wide v2, p0, Lbtb;->a:J

    .line 134
    invoke-virtual {v0, v2, v3}, Lcuc;->b(J)Lcuc;

    move-result-object v0

    iget v1, p0, Lbtb;->i:I

    .line 135
    invoke-virtual {v0, v1}, Lcuc;->a(I)Lcuc;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lbtb;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcuc;->a(Ljava/lang/String;)Lcuc;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcuc;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcub;

    .line 128
    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbta;)V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 144
    invoke-virtual {p3}, Lbta;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcty;

    .line 145
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lbtb;->c:Lbsw;

    iget-object v2, p0, Lbtb;->j:Lcom/twitter/android/timeline/cp;

    invoke-virtual {v1, v0, v2}, Lbsw;->a(Lcty;Lcom/twitter/android/timeline/cp;)Lctn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbtb;->a(Lctn;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 24
    check-cast p3, Lbta;

    invoke-virtual {p0, p1, p2, p3}, Lbtb;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbta;)V

    return-void
.end method

.method protected a(Lctn;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p1}, Lctn;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbtb;->d(I)Lbss;

    .line 157
    return-void
.end method

.method protected abstract e()[Ljava/lang/String;
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lbtb;->z()Lbta;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method protected h()Lcom/twitter/library/service/e;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p0}, Lbtb;->e()[Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v3}, Lcom/twitter/util/collection/CollectionUtils;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v4, "You must supply a non-empty json path."

    invoke-static {v0, v4}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 95
    invoke-virtual {p0}, Lbtb;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v4, "2"

    .line 96
    invoke-virtual {v0, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "timeline"

    aput-object v5, v4, v2

    .line 97
    invoke-virtual {v0, v4}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v3}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 99
    iget v2, p0, Lbtb;->h:I

    if-eq v2, v1, :cond_0

    iget-object v1, p0, Lbtb;->j:Lcom/twitter/android/timeline/cp;

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "cursor"

    iget-object v2, p0, Lbtb;->j:Lcom/twitter/android/timeline/cp;

    iget-object v2, v2, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget-object v2, v2, Lcom/twitter/model/timeline/dd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 102
    :cond_0
    return-object v0

    :cond_1
    move v0, v2

    .line 93
    goto :goto_0
.end method

.method public abstract s()Z
.end method

.method public abstract t()Z
.end method

.method public x()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lbtb;->h:I

    return v0
.end method

.method public y()Lcom/twitter/android/timeline/cp;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lbtb;->j:Lcom/twitter/android/timeline/cp;

    return-object v0
.end method

.method protected z()Lbta;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lbta;

    invoke-virtual {p0}, Lbtb;->A()Lcub;

    move-result-object v1

    invoke-direct {v0, v1}, Lbta;-><init>(Lcub;)V

    return-object v0
.end method
