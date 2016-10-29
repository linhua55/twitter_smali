.class Laht;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/ad;

.field final synthetic b:Lcom/twitter/model/moments/ad;

.field final synthetic c:Lahs;


# direct methods
.method constructor <init>(Lahs;Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/ad;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Laht;->c:Lahs;

    iput-object p2, p0, Laht;->a:Lcom/twitter/model/moments/ad;

    iput-object p3, p0, Laht;->b:Lcom/twitter/model/moments/ad;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 7

    .prologue
    .line 69
    new-instance v0, Lcom/twitter/library/scribe/u;

    invoke-direct {v0}, Lcom/twitter/library/scribe/u;-><init>()V

    iget-object v1, p0, Laht;->a:Lcom/twitter/model/moments/ad;

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    .line 70
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/u;->c(J)Lcom/twitter/library/scribe/u;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/twitter/library/scribe/u;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    .line 72
    new-instance v1, Lcom/twitter/library/scribe/o;

    invoke-direct {v1}, Lcom/twitter/library/scribe/o;-><init>()V

    .line 73
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/o;->a(Lcom/twitter/library/scribe/MomentScribeDetails$Transition;)Lcom/twitter/library/scribe/o;

    move-result-object v0

    iget-object v1, p0, Laht;->b:Lcom/twitter/model/moments/ad;

    iget-boolean v1, v1, Lcom/twitter/model/moments/ad;->k:Z

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/o;->a(Ljava/lang/Boolean;)Lcom/twitter/library/scribe/o;

    move-result-object v0

    iget-object v1, p0, Laht;->b:Lcom/twitter/model/moments/ad;

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    .line 75
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/o;->a(J)Lcom/twitter/library/scribe/o;

    move-result-object v0

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/o;->c(J)Lcom/twitter/library/scribe/o;

    .line 79
    :cond_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Laht;->c:Lahs;

    invoke-static {v2}, Lahs;->a(Lahs;)J

    move-result-wide v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "moments:capsule:pivot:moment:open"

    aput-object v6, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lcom/twitter/library/scribe/o;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/library/scribe/MomentScribeDetails;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 81
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Laht;->a(Ljava/lang/Long;)V

    return-void
.end method
