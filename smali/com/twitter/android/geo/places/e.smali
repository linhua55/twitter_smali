.class public Lcom/twitter/android/geo/places/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bf;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/bk;

.field private final c:Lcom/twitter/library/client/bd;

.field private final d:J

.field private e:Lcom/twitter/android/geo/places/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/twitter/android/geo/places/e;->a:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/geo/places/e;->b:Lcom/twitter/library/client/bk;

    .line 38
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/geo/places/e;->c:Lcom/twitter/library/client/bd;

    .line 39
    iget-object v0, p0, Lcom/twitter/android/geo/places/e;->b:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/geo/places/e;->d:J

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/geo/places/e;->e:Lcom/twitter/android/geo/places/f;

    .line 80
    return-void
.end method

.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/twitter/android/geo/places/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/android/geo/places/e;->e:Lcom/twitter/android/geo/places/f;

    if-nez v0, :cond_0

    .line 46
    iput-object p2, p0, Lcom/twitter/android/geo/places/e;->e:Lcom/twitter/android/geo/places/f;

    .line 47
    iget-object v0, p0, Lcom/twitter/android/geo/places/e;->c:Lcom/twitter/library/client/bd;

    new-instance v1, Lcom/twitter/library/api/geo/e;

    invoke-direct {v1}, Lcom/twitter/library/api/geo/e;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/geo/places/e;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {v1, v2}, Lcom/twitter/library/api/geo/e;->a(Landroid/content/Context;)Lcom/twitter/library/api/geo/e;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/geo/places/e;->b:Lcom/twitter/library/client/bk;

    .line 49
    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/api/geo/e;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/library/api/geo/e;

    move-result-object v1

    .line 50
    invoke-virtual {v1, p1}, Lcom/twitter/library/api/geo/e;->a(Ljava/lang/String;)Lcom/twitter/library/api/geo/e;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/geo/places/e;->d:J

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/api/geo/e;->a(J)Lcom/twitter/library/api/geo/e;

    move-result-object v1

    .line 52
    invoke-virtual {v1, p3}, Lcom/twitter/library/api/geo/e;->b(Ljava/lang/String;)Lcom/twitter/library/api/geo/e;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p5}, Lcom/twitter/library/api/geo/e;->d(Ljava/lang/String;)Lcom/twitter/library/api/geo/e;

    move-result-object v1

    .line 54
    invoke-virtual {v1, p6}, Lcom/twitter/library/api/geo/e;->a(Z)Lcom/twitter/library/api/geo/e;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p4}, Lcom/twitter/library/api/geo/e;->c(Ljava/lang/String;)Lcom/twitter/library/api/geo/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/api/geo/e;->a()Lcom/twitter/library/api/geo/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/geo/places/e;->e:Lcom/twitter/android/geo/places/f;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/twitter/android/geo/places/e;->e:Lcom/twitter/android/geo/places/f;

    check-cast p2, Lcom/twitter/library/api/geo/c;

    invoke-virtual {p2}, Lcom/twitter/library/api/geo/c;->e()Lcom/twitter/model/geo/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/geo/places/f;->a(Lcom/twitter/model/geo/m;)V

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/geo/places/e;->e:Lcom/twitter/android/geo/places/f;

    .line 76
    return-void
.end method
