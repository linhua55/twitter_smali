.class public Lcom/twitter/library/scribe/bo;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/scribe/TwitterScribeLog;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iput-object v0, p0, Lcom/twitter/library/scribe/bo;->a:Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 633
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/twitter/library/scribe/bo;->a:Lcom/twitter/library/scribe/TwitterScribeLog;

    return-object v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Lcom/twitter/library/scribe/bo;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/twitter/library/scribe/bo;->a:Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 645
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/bo;
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/twitter/library/scribe/bo;->a:Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 639
    return-object p0
.end method
