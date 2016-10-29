.class Lahf;
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

.field final synthetic b:Lahd;


# direct methods
.method constructor <init>(Lahd;Lcom/twitter/model/moments/ad;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lahf;->b:Lahd;

    iput-object p2, p0, Lahf;->a:Lcom/twitter/model/moments/ad;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lcom/twitter/library/scribe/u;

    invoke-direct {v0}, Lcom/twitter/library/scribe/u;-><init>()V

    iget-object v1, p0, Lahf;->b:Lahd;

    .line 118
    invoke-static {v1}, Lahd;->a(Lahd;)Lcom/twitter/model/moments/ad;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/u;->c(J)Lcom/twitter/library/scribe/u;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/twitter/library/scribe/u;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    .line 120
    new-instance v1, Lcom/twitter/library/scribe/o;

    invoke-direct {v1}, Lcom/twitter/library/scribe/o;-><init>()V

    iget-object v2, p0, Lahf;->a:Lcom/twitter/model/moments/ad;

    iget-wide v2, v2, Lcom/twitter/model/moments/ad;->b:J

    .line 121
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/scribe/o;->a(J)Lcom/twitter/library/scribe/o;

    move-result-object v1

    iget-object v2, p0, Lahf;->a:Lcom/twitter/model/moments/ad;

    iget-boolean v2, v2, Lcom/twitter/model/moments/ad;->k:Z

    .line 122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/o;->a(Ljava/lang/Boolean;)Lcom/twitter/library/scribe/o;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/o;->a(Lcom/twitter/library/scribe/MomentScribeDetails$Transition;)Lcom/twitter/library/scribe/o;

    move-result-object v0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/o;->c(J)Lcom/twitter/library/scribe/o;

    .line 127
    :cond_0
    iget-object v1, p0, Lahf;->b:Lahd;

    const-string/jumbo v2, "moments:capsule:pivot:moment:impression"

    invoke-virtual {v0}, Lcom/twitter/library/scribe/o;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    invoke-static {v1, v2, v0}, Lahd;->a(Lahd;Ljava/lang/String;Lcom/twitter/library/scribe/MomentScribeDetails;)V

    .line 128
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lahf;->a(Ljava/lang/Long;)V

    return-void
.end method
