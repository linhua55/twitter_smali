.class public Lcom/twitter/model/dms/eg;
.super Lcom/twitter/model/dms/dm;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/dm",
        "<",
        "Lcom/twitter/model/dms/ReadReceiptParticipant;",
        "Lcom/twitter/model/dms/eg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twitter/model/dms/Participant;)V
    .locals 4

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/twitter/model/dms/dm;-><init>()V

    .line 65
    iget-wide v0, p1, Lcom/twitter/model/dms/Participant;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/model/dms/eg;->a(J)Lcom/twitter/model/dms/dm;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/eg;

    iget-wide v2, p1, Lcom/twitter/model/dms/Participant;->c:J

    .line 66
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/eg;->b(J)Lcom/twitter/model/dms/dm;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/eg;

    iget-wide v2, p1, Lcom/twitter/model/dms/Participant;->d:J

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/eg;->c(J)Lcom/twitter/model/dms/dm;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/eg;

    iget-wide v2, p1, Lcom/twitter/model/dms/Participant;->e:J

    .line 68
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/eg;->d(J)Lcom/twitter/model/dms/dm;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/eg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/model/dms/eg;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/dms/eg;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/twitter/model/dms/eg;->a:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public bridge synthetic bq_()Z
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/twitter/model/dms/dm;->bq_()Z

    move-result v0

    return v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/twitter/model/dms/eg;->e()Lcom/twitter/model/dms/ReadReceiptParticipant;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/ReadReceiptParticipant;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/twitter/model/dms/ReadReceiptParticipant;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/ReadReceiptParticipant;-><init>(Lcom/twitter/model/dms/eg;Lcom/twitter/model/dms/ef;)V

    return-object v0
.end method
