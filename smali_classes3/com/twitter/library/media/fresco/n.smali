.class public Lcom/twitter/library/media/fresco/n;
.super Lcs;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcs",
        "<",
        "Lfp;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/media/request/a;

.field private final b:Lcom/twitter/library/media/fresco/g;

.field private final c:Lcom/twitter/media/request/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/media/request/i",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcdz;

.field private final e:Lcdz;

.field private final f:Lcdz;


# direct methods
.method private constructor <init>(Lcom/twitter/library/media/fresco/p;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcs;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/twitter/library/media/fresco/p;->a(Lcom/twitter/library/media/fresco/p;)Lcom/twitter/media/request/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/media/fresco/n;->a:Lcom/twitter/media/request/a;

    .line 30
    invoke-static {p1}, Lcom/twitter/library/media/fresco/p;->b(Lcom/twitter/library/media/fresco/p;)Lcom/twitter/library/media/fresco/g;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/media/fresco/n;->b:Lcom/twitter/library/media/fresco/g;

    .line 31
    invoke-static {p1}, Lcom/twitter/library/media/fresco/p;->c(Lcom/twitter/library/media/fresco/p;)Lcom/twitter/media/request/i;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/media/fresco/n;->c:Lcom/twitter/media/request/i;

    .line 32
    invoke-static {p1}, Lcom/twitter/library/media/fresco/p;->d(Lcom/twitter/library/media/fresco/p;)Lcdz;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/media/fresco/n;->d:Lcdz;

    .line 33
    invoke-static {p1}, Lcom/twitter/library/media/fresco/p;->e(Lcom/twitter/library/media/fresco/p;)Lcdz;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/media/fresco/n;->e:Lcdz;

    .line 34
    invoke-static {p1}, Lcom/twitter/library/media/fresco/p;->f(Lcom/twitter/library/media/fresco/p;)Lcdz;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/media/fresco/n;->f:Lcdz;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/media/fresco/p;Lcom/twitter/library/media/fresco/o;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/twitter/library/media/fresco/n;-><init>(Lcom/twitter/library/media/fresco/p;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lfp;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->d:Lcdz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->d:Lcdz;

    invoke-virtual {v0}, Lcdz;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->d:Lcdz;

    const-string/jumbo v1, "first"

    invoke-virtual {v0, v1}, Lcdz;->b(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->d:Lcdz;

    invoke-virtual {v0}, Lcdz;->b()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->e:Lcdz;

    if-eqz v0, :cond_1

    .line 67
    if-nez p2, :cond_2

    .line 68
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->e:Lcdz;

    invoke-virtual {v0}, Lcdz;->c()V

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->e:Lcdz;

    invoke-virtual {v0}, Lcdz;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {p2}, Lfp;->g()Lfr;

    move-result-object v0

    invoke-interface {v0}, Lfr;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    .line 72
    invoke-interface {p2}, Lfp;->a()I

    move-result v1

    invoke-interface {p2}, Lfp;->b()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->e:Lcdz;

    const-string/jumbo v2, "intermediate"

    invoke-virtual {v1, v2}, Lcdz;->b(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->e:Lcdz;

    iget-object v2, p0, Lcom/twitter/library/media/fresco/n;->b:Lcom/twitter/library/media/fresco/g;

    invoke-virtual {v2}, Lcom/twitter/library/media/fresco/g;->a()Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcdz;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;Landroid/graphics/Rect;Ljava/lang/Long;)V

    .line 75
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->e:Lcdz;

    invoke-virtual {v0}, Lcdz;->b()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lfp;Landroid/graphics/drawable/Animatable;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 39
    iget-object v2, p0, Lcom/twitter/library/media/fresco/n;->b:Lcom/twitter/library/media/fresco/g;

    .line 40
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->f:Lcdz;

    if-eqz v0, :cond_0

    .line 41
    if-eqz p2, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    .line 42
    invoke-interface {p2}, Lfp;->a()I

    move-result v3

    invoke-interface {p2}, Lfp;->b()I

    move-result v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/twitter/library/media/fresco/n;->f:Lcdz;

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Lcdz;->b(Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/twitter/library/media/fresco/n;->f:Lcdz;

    invoke-virtual {v2}, Lcom/twitter/library/media/fresco/g;->a()Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lcdz;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;Landroid/graphics/Rect;Ljava/lang/Long;)V

    .line 47
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->f:Lcdz;

    invoke-virtual {v0}, Lcdz;->b()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/fresco/n;->c:Lcom/twitter/media/request/i;

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lcom/twitter/media/request/f;

    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->a:Lcom/twitter/media/request/a;

    invoke-direct {v0, v1}, Lcom/twitter/media/request/f;-><init>(Lcom/twitter/media/request/a;)V

    .line 52
    invoke-virtual {v2}, Lcom/twitter/library/media/fresco/g;->a()Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/request/f;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;)Lcom/twitter/media/request/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/f;->a(Z)Lcom/twitter/media/request/f;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/twitter/media/request/f;->a()Lcom/twitter/media/request/ImageResponse;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->c:Lcom/twitter/media/request/i;

    invoke-interface {v1, v0}, Lcom/twitter/media/request/i;->a(Lcom/twitter/media/request/ResourceResponse;)V

    .line 57
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 42
    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .prologue
    .line 19
    check-cast p2, Lfp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/media/fresco/n;->a(Ljava/lang/String;Lfp;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p2, Lfp;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/media/fresco/n;->a(Ljava/lang/String;Lfp;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    sget-object v0, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->a:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    .line 83
    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->f:Lcdz;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->f:Lcdz;

    const-string/jumbo v2, "failure"

    invoke-virtual {v1, v2}, Lcdz;->b(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->f:Lcdz;

    invoke-virtual {v1, v0, v3, v3}, Lcdz;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;Landroid/graphics/Rect;Ljava/lang/Long;)V

    .line 86
    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->f:Lcdz;

    invoke-virtual {v1}, Lcdz;->b()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->c:Lcom/twitter/media/request/i;

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Lcom/twitter/media/request/f;

    iget-object v2, p0, Lcom/twitter/library/media/fresco/n;->a:Lcom/twitter/media/request/a;

    invoke-direct {v1, v2}, Lcom/twitter/media/request/f;-><init>(Lcom/twitter/media/request/a;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/twitter/media/request/f;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;)Lcom/twitter/media/request/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/f;->a(Z)Lcom/twitter/media/request/f;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/twitter/media/request/f;->a()Lcom/twitter/media/request/ImageResponse;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/twitter/library/media/fresco/n;->c:Lcom/twitter/media/request/i;

    invoke-interface {v1, v0}, Lcom/twitter/media/request/i;->a(Lcom/twitter/media/request/ResourceResponse;)V

    .line 96
    :cond_1
    return-void
.end method
