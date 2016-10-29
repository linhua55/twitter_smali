.class public Lcom/twitter/android/av/audio/l;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twitter/android/av/audio/m;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/twitter/android/av/audio/m;->a(Lcom/twitter/android/av/audio/m;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/audio/l;->a:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/twitter/android/av/audio/m;->b(Lcom/twitter/android/av/audio/m;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/audio/l;->b:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/twitter/android/av/audio/m;->c(Lcom/twitter/android/av/audio/m;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/audio/l;->c:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/twitter/android/av/audio/m;->d(Lcom/twitter/android/av/audio/m;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/audio/l;->d:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/twitter/android/av/audio/m;->e(Lcom/twitter/android/av/audio/m;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/audio/l;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static a(Lcom/twitter/model/av/Audio;)Lcom/twitter/android/av/audio/l;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/android/av/audio/m;

    invoke-direct {v0}, Lcom/twitter/android/av/audio/m;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/twitter/model/av/Audio;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/audio/m;->a(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/twitter/model/av/Audio;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/audio/m;->b(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/twitter/model/av/Audio;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/audio/m;->d(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/twitter/model/av/Audio;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/audio/m;->e(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/twitter/model/av/Audio;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/audio/m;->c(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/twitter/android/av/audio/m;->a()Lcom/twitter/android/av/audio/l;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/av/audio/l;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lclw;->N()Lclm;

    move-result-object v0

    .line 47
    :goto_0
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v2, "app_url"

    const-string/jumbo v3, "app_url_resolved"

    .line 50
    invoke-static {v2, v3, v0}, Lcom/twitter/library/card/e;->a(Ljava/lang/String;Ljava/lang/String;Lclm;)Lcom/twitter/library/card/e;

    move-result-object v3

    .line 51
    const-string/jumbo v2, "player_image"

    invoke-static {v2, v0}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v2

    .line 52
    const-string/jumbo v4, "artist_name"

    invoke-static {v4, v0}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v4

    .line 53
    if-eqz v2, :cond_1

    iget-object v2, v2, Lcln;->a:Ljava/lang/String;

    .line 54
    :goto_1
    const-string/jumbo v5, "title"

    invoke-static {v5, v0}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v5

    .line 55
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/twitter/library/card/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_2
    new-instance v3, Lcom/twitter/android/av/audio/m;

    invoke-direct {v3}, Lcom/twitter/android/av/audio/m;-><init>()V

    .line 59
    invoke-virtual {v3, v4}, Lcom/twitter/android/av/audio/m;->a(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v3

    .line 60
    invoke-virtual {v3, v2}, Lcom/twitter/android/av/audio/m;->b(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v1}, Lcom/twitter/android/av/audio/m;->d(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Lcom/twitter/android/av/audio/m;->e(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v5}, Lcom/twitter/android/av/audio/m;->c(Ljava/lang/String;)Lcom/twitter/android/av/audio/m;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/twitter/android/av/audio/m;->a()Lcom/twitter/android/av/audio/l;

    move-result-object v0

    .line 58
    return-object v0

    :cond_0
    move-object v0, v1

    .line 45
    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 53
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 55
    goto :goto_2
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/av/audio/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/av/audio/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/android/av/audio/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/android/av/audio/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/twitter/android/av/audio/l;->e:Ljava/lang/String;

    return-object v0
.end method
