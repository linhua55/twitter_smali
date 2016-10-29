.class public final Lokhttp3/at;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lokhttp3/HttpUrl;

.field private final b:Ljava/lang/String;

.field private final c:Lokhttp3/ah;

.field private final d:Lokhttp3/aw;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Boolean;

.field private volatile g:Lokhttp3/k;


# direct methods
.method private constructor <init>(Lokhttp3/av;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lokhttp3/av;->a(Lokhttp3/av;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/at;->a:Lokhttp3/HttpUrl;

    .line 38
    invoke-static {p1}, Lokhttp3/av;->b(Lokhttp3/av;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/at;->b:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lokhttp3/av;->c(Lokhttp3/av;)Lokhttp3/aj;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ah;

    .line 40
    invoke-static {p1}, Lokhttp3/av;->d(Lokhttp3/av;)Lokhttp3/aw;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/at;->d:Lokhttp3/aw;

    .line 41
    invoke-static {p1}, Lokhttp3/av;->e(Lokhttp3/av;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lokhttp3/av;->e(Lokhttp3/av;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/at;->e:Ljava/lang/Object;

    .line 42
    invoke-static {p1}, Lokhttp3/av;->f(Lokhttp3/av;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/at;->f:Ljava/lang/Boolean;

    .line 43
    return-void

    :cond_0
    move-object v0, p0

    .line 41
    goto :goto_0
.end method

.method synthetic constructor <init>(Lokhttp3/av;Lokhttp3/au;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lokhttp3/at;-><init>(Lokhttp3/av;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/at;)Lokhttp3/HttpUrl;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/at;->a:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method static a(Ljava/lang/Boolean;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ldgh;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lokhttp3/at;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/at;->b:Ljava/lang/String;

    return-object v0
.end method

.method static b(Ljava/lang/Boolean;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ldgh;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lokhttp3/at;)Lokhttp3/aw;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/at;->d:Lokhttp3/aw;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/at;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/at;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/at;)Lokhttp3/ah;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ah;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/at;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lokhttp3/at;->f:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ah;

    invoke-virtual {v0, p1}, Lokhttp3/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lokhttp3/HttpUrl;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lokhttp3/at;->a:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lokhttp3/at;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ah;

    invoke-virtual {v0, p1}, Lokhttp3/ah;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Lokhttp3/ah;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ah;

    return-object v0
.end method

.method public d()Lokhttp3/aw;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lokhttp3/at;->d:Lokhttp3/aw;

    return-object v0
.end method

.method public e()Lokhttp3/av;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lokhttp3/av;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/av;-><init>(Lokhttp3/at;Lokhttp3/au;)V

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lokhttp3/at;->f:Ljava/lang/Boolean;

    iget-object v1, p0, Lokhttp3/at;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/at;->a(Ljava/lang/Boolean;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()Lokhttp3/k;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lokhttp3/at;->g:Lokhttp3/k;

    .line 101
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ah;

    invoke-static {v0}, Lokhttp3/k;->a(Lokhttp3/ah;)Lokhttp3/k;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/at;->g:Lokhttp3/k;

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lokhttp3/at;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/at;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/at;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/at;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lokhttp3/at;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
