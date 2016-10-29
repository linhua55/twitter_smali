.class public Lcom/twitter/android/sa;
.super Lcom/twitter/app/common/list/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/twitter/android/TimelineFragment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 586
    iput-object p1, p0, Lcom/twitter/android/sa;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0}, Lcom/twitter/app/common/list/ad;-><init>()V

    .line 587
    invoke-static {p1}, Lcom/twitter/android/TimelineFragment;->e(Lcom/twitter/android/TimelineFragment;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/sa;->b:J

    .line 588
    iput-object p2, p0, Lcom/twitter/android/sa;->c:Ljava/lang/String;

    .line 589
    invoke-virtual {p1}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/sa;->d:Z

    .line 590
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/list/aa;)V
    .locals 6

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/twitter/android/sa;->d:Z

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Lcom/twitter/library/scribe/bo;

    iget-wide v2, p0, Lcom/twitter/android/sa;->b:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/bo;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/sa;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "stream"

    const-string/jumbo v4, "top"

    const-string/jumbo v5, "show"

    .line 597
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/scribe/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/bo;->a()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 596
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 599
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/app/common/list/aa;)V
    .locals 6

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/twitter/android/sa;->d:Z

    if-eqz v0, :cond_0

    .line 605
    new-instance v0, Lcom/twitter/library/scribe/bo;

    iget-wide v2, p0, Lcom/twitter/android/sa;->b:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/bo;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/sa;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "stream"

    const-string/jumbo v4, "top"

    const-string/jumbo v5, "hide"

    .line 606
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/scribe/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/bo;->a()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 605
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 608
    :cond_0
    return-void
.end method
