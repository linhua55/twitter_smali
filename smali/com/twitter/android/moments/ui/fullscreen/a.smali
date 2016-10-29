.class public Lcom/twitter/android/moments/ui/fullscreen/a;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/a;->a:Landroid/app/Activity;

    .line 21
    iput p2, p0, Lcom/twitter/android/moments/ui/fullscreen/a;->b:I

    .line 22
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;JIJ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    new-instance v0, Lcom/twitter/android/nj;

    invoke-direct {v0}, Lcom/twitter/android/nj;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Lcom/twitter/android/nj;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/nj;

    .line 55
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/nj;->a(J)Lcom/twitter/android/nj;

    move-result-object v1

    .line 56
    invoke-virtual {v1, p5, p6}, Lcom/twitter/android/nj;->b(J)Lcom/twitter/android/nj;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p4}, Lcom/twitter/android/nj;->a(I)Lcom/twitter/android/nj;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v2}, Lcom/twitter/android/nj;->c(Z)Lcom/twitter/android/nj;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Lcom/twitter/android/nj;->d(Z)Lcom/twitter/app/common/base/z;

    .line 60
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/nj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/twitter/android/moments/ui/fullscreen/a;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/a;->a(Lcom/twitter/model/core/Tweet;J)V

    .line 26
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;J)V
    .locals 8

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->o:J

    .line 30
    :goto_0
    iget v4, p1, Lcom/twitter/model/core/Tweet;->i:I

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/fullscreen/a;->a(Lcom/twitter/model/core/Tweet;JIJ)V

    .line 31
    return-void

    .line 29
    :cond_0
    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->b:J

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;J)V
    .locals 8

    .prologue
    .line 34
    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget v4, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    move-object v0, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/fullscreen/a;->a(Lcom/twitter/model/core/Tweet;JIJ)V

    .line 35
    return-void
.end method

.method public a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/a;)V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/twitter/android/nj;

    invoke-direct {v0}, Lcom/twitter/android/nj;-><init>()V

    const-string/jumbo v1, "reportmoment"

    .line 39
    invoke-virtual {v0, v1}, Lcom/twitter/android/nj;->a(Ljava/lang/String;)Lcom/twitter/android/nj;

    move-result-object v0

    iget-wide v2, p3, Lcom/twitter/model/moments/a;->b:J

    .line 40
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/nj;->a(J)Lcom/twitter/android/nj;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/model/moments/ad;->b:J

    .line 41
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/nj;->b(J)Lcom/twitter/android/nj;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/twitter/model/moments/ad;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/nj;->b(Z)Lcom/twitter/android/nj;

    move-result-object v0

    .line 43
    if-eqz p2, :cond_0

    .line 44
    iget-wide v2, p2, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/nj;->c(J)Lcom/twitter/android/nj;

    move-result-object v1

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v1, v2}, Lcom/twitter/android/nj;->a(Z)Lcom/twitter/android/nj;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/nj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/twitter/android/moments/ui/fullscreen/a;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    return-void
.end method
