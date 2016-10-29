.class public Lcdb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcdg;
.implements Lcom/google/android/gms/common/api/r;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/geo/provider/param/a;

.field private final c:Lcdf;

.field private d:Lcdc;

.field private e:Z

.field private f:Z

.field private g:Lcdg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/geo/provider/param/a;Landroid/app/PendingIntent;Z)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcdf;

    invoke-direct {v0, p3}, Lcdf;-><init>(Landroid/app/PendingIntent;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lcdb;-><init>(Landroid/content/Context;Lcom/twitter/library/geo/provider/param/a;Lcdf;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/geo/provider/param/a;Lccd;Z)V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcdf;

    invoke-direct {v0, p3}, Lcdf;-><init>(Lccd;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lcdb;-><init>(Landroid/content/Context;Lcom/twitter/library/geo/provider/param/a;Lcdf;Z)V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/twitter/library/geo/provider/param/a;Lcdf;Z)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcdc;->a:Lcdc;

    iput-object v0, p0, Lcdb;->d:Lcdc;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcdb;->e:Z

    .line 87
    iput-object p2, p0, Lcdb;->b:Lcom/twitter/library/geo/provider/param/a;

    .line 88
    iput-object p1, p0, Lcdb;->a:Landroid/content/Context;

    .line 89
    iput-object p3, p0, Lcdb;->c:Lcdf;

    .line 90
    invoke-direct {p0, p4}, Lcdb;->c(Z)Lcdg;

    move-result-object v0

    iput-object v0, p0, Lcdb;->g:Lcdg;

    .line 91
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcdb;->f:Z

    invoke-direct {p0, v0}, Lcdb;->c(Z)Lcdg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcdb;->a(Lcdg;)V

    .line 187
    return-void
.end method

.method private c(Z)Lcdg;
    .locals 4

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcdb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcck;->a(Landroid/content/Context;)Lcck;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcdb;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcdb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/platform/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Lcde;

    iget-object v1, p0, Lcdb;->a:Landroid/content/Context;

    iget-object v2, p0, Lcdb;->b:Lcom/twitter/library/geo/provider/param/a;

    iget-object v3, p0, Lcdb;->c:Lcdf;

    invoke-direct {v0, v1, v2, v3, p0}, Lcde;-><init>(Landroid/content/Context;Lcom/twitter/library/geo/provider/param/a;Lcdf;Lcom/google/android/gms/common/api/r;)V

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Lcdh;

    iget-object v1, p0, Lcdb;->a:Landroid/content/Context;

    iget-object v2, p0, Lcdb;->b:Lcom/twitter/library/geo/provider/param/a;

    iget-object v3, p0, Lcdb;->c:Lcdf;

    invoke-direct {v0, v1, v2, v3}, Lcdh;-><init>(Landroid/content/Context;Lcom/twitter/library/geo/provider/param/a;Lcdf;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcdc;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcdb;->d:Lcdc;

    .line 100
    return-void
.end method

.method public a(Lcdg;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcdb;->g:Lcdg;

    if-ne v0, p1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcdb;->g:Lcdg;

    invoke-interface {v0}, Lcdg;->h()V

    .line 157
    iget-object v0, p0, Lcdb;->d:Lcdc;

    invoke-interface {v0}, Lcdc;->h()V

    .line 159
    iput-object p1, p0, Lcdb;->g:Lcdg;

    .line 161
    iget-object v0, p0, Lcdb;->d:Lcdc;

    invoke-interface {v0}, Lcdc;->i()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcdb;->e:Z

    .line 142
    invoke-direct {p0}, Lcdb;->a()V

    .line 143
    return-void
.end method

.method public a(Lcom/twitter/library/geo/provider/param/a;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcdb;->g:Lcdg;

    invoke-interface {v0, p1}, Lcdg;->a(Lcom/twitter/library/geo/provider/param/a;)V

    .line 137
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcdb;->f:Z

    if-eq v0, p1, :cond_0

    .line 169
    iput-boolean p1, p0, Lcdb;->f:Z

    .line 170
    invoke-direct {p0}, Lcdb;->a()V

    .line 172
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcdb;->e:Z

    if-eq v0, p1, :cond_0

    .line 179
    iput-boolean p1, p0, Lcdb;->e:Z

    .line 180
    invoke-direct {p0}, Lcdb;->a()V

    .line 182
    :cond_0
    return-void
.end method

.method public f()Landroid/location/Location;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcdb;->g:Lcdg;

    invoke-interface {v0}, Lcdg;->f()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcdb;->g:Lcdg;

    invoke-interface {v0}, Lcdg;->g()V

    .line 127
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcdb;->g:Lcdg;

    invoke-interface {v0}, Lcdg;->h()V

    .line 132
    return-void
.end method
