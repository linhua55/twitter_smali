.class public Lcom/twitter/android/timeline/cq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/widget/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/widget/n",
        "<",
        "Lcom/twitter/android/timeline/cs;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/timeline/dc;

.field private final b:Lcom/twitter/library/scribe/ScribeAssociation;

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/dc;Lcom/twitter/library/scribe/TwitterScribeAssociation;J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/twitter/android/timeline/cq;->a:Lcom/twitter/android/timeline/dc;

    .line 27
    iput-object p2, p0, Lcom/twitter/android/timeline/cq;->b:Lcom/twitter/library/scribe/ScribeAssociation;

    .line 28
    iput-wide p3, p0, Lcom/twitter/android/timeline/cq;->d:J

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/timeline/cs;I)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p1, Lcom/twitter/android/timeline/cs;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    iget-object v1, p1, Lcom/twitter/android/timeline/cs;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    invoke-static {v0, v1}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/timeline/cq;->a:Lcom/twitter/android/timeline/dc;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/timeline/dc;->a(Lcom/twitter/android/timeline/cs;I)V

    .line 42
    return-void
.end method

.method public a(Lcom/twitter/android/timeline/cs;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p1, Lcom/twitter/android/timeline/cs;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    if-eqz v0, :cond_0

    .line 48
    if-eqz p2, :cond_1

    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->ar:Lcom/twitter/library/api/PromotedEvent;

    .line 51
    :goto_0
    iget-object v1, p1, Lcom/twitter/android/timeline/cs;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    invoke-static {v0, v1}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 53
    :cond_0
    iget-object v0, p1, Lcom/twitter/android/timeline/cs;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/twitter/android/timeline/cs;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    move-object v3, v0

    .line 54
    :goto_1
    if-eqz p2, :cond_3

    const-string/jumbo v0, "swipe_next"

    .line 55
    :goto_2
    iget-object v1, p0, Lcom/twitter/android/timeline/cq;->b:Lcom/twitter/library/scribe/ScribeAssociation;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/twitter/android/timeline/cq;->b:Lcom/twitter/library/scribe/ScribeAssociation;

    invoke-virtual {v1}, Lcom/twitter/library/scribe/ScribeAssociation;->a()Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_3
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v6, p0, Lcom/twitter/android/timeline/cq;->d:J

    invoke-direct {v4, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "user_carousel"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    aput-object v0, v5, v1

    .line 57
    invoke-virtual {v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/timeline/cq;->b:Lcom/twitter/library/scribe/ScribeAssociation;

    .line 58
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p1, Lcom/twitter/android/timeline/cs;->a:Lcom/twitter/model/core/TwitterUser;

    .line 59
    invoke-static {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 60
    return-void

    .line 48
    :cond_1
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->as:Lcom/twitter/library/api/PromotedEvent;

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const-string/jumbo v0, "swipe_previous"

    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 55
    goto :goto_3
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/twitter/android/timeline/cs;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/timeline/cq;->a(Lcom/twitter/android/timeline/cs;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/twitter/android/timeline/cs;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/timeline/cq;->a(Lcom/twitter/android/timeline/cs;Z)V

    return-void
.end method

.method public a(Lcom/twitter/android/timeline/cs;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/twitter/android/timeline/cs;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cq;->a(Lcom/twitter/android/timeline/cs;)Z

    move-result v0

    return v0
.end method
